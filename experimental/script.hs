{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
import Control.Monad
import Control.Monad.Writer
import Data.List
import Data.Maybe
import Data.Monoid
import Text.HTML.TagSoup
import Data.Text (Text)
import qualified Data.Text as Text
import qualified Data.Text.IO as Text
import Data.Char
import qualified System.FilePath.Glob as Glob
import Data.Time

import Debug.Trace

main = do
    time <- getCurrentTime

    fps <- Glob.glob "./xml/en/docs/**/*_module.xml"
    ms <- forM fps (run time)
    let ms' = concat ms

    let allModuleNames = map (\Module{..} -> "Nginx_" <> Text.toTitle moName) ms'

    let allDirectives = concatMap (\(Module{..}) -> moDirectives) ms'
        blockDirectives = filter ((== SyntaxBlock) . diSyntax) allDirectives
        blockDirectiveNames = nub (map diName blockDirectives)

    Text.writeFile (Text.unpack "./Nginx_Common.hs") $
        "-- Generated at " <> Text.pack (show time) <> "\n" <>
        "module Nginx_Common where\n" <>
        "import Data.Conf\n" <>
        "\nclass ToConfStatement f where\n" <>
        "    toConfStatement :: f -> ConfStatement\n" <>
        "\n-- | Top-level statements\n" <>
        "class HasContextMain f where\n" <>
        Text.unlines (map (\diName ->
            "-- Class for directives allowed under '" <> diName <> "_s'\n" <>
            "class HasContext" <> Text.toTitle diName <> " a where"
        ) blockDirectiveNames)
    putStrLn "Generated ./Nginx_Common.hs"

    Text.writeFile (Text.unpack "./Nginx.hs") $
        "-- Generated at " <> Text.pack (show time) <> "\n" <>
        "module Nginx\n" <>
        "    ( module X )\n" <>
        "  where\n" <>
        "import Nginx_Common as X\n" <>
        Text.unlines (map (\moName ->
            "import qualified " <> moName <> " as X"
        ) allModuleNames)

    putStrLn "Generated ./Nginx.hs"

run time fp = do
    cs <- Text.readFile fp
    let ts = parseTags cs
        ms = sections (~== TagOpen ("module" :: Text) []) ts

    ms <- forM ms $ \case
        (TagOpen ("module" :: Text) as : rest) -> do
            case getName as of
                Just mn -> do
                    let moduleName = Text.drop (Text.length "Module ") mn
                    ds <- catMaybes <$> parseChildren rest
                    return $ Just (Module moduleName ds)
                _ -> return Nothing
        _ -> return Nothing
    -- print (catMaybes ms)
    let ms' = catMaybes ms
    forM_ (map (\m -> (m, moduleToHaskell time m)) ms') $ \(Module{..}, hs) -> do
        Text.writeFile (Text.unpack ("./Nginx_" <> (Text.toTitle moName) <> ".hs")) hs
        Text.putStrLn $ "Generated" <> ("./Nginx_" <> (Text.toTitle moName) <> ".hs") -- hs
    return ms'


getName as = snd <$> find (("name" ==) . fst) as

moduleToHaskell time Module{..} =
    "-- Generated at " <> Text.pack (show time) <> "\n" <>
    "{-# LANGUAGE OverloadedStrings #-}\n" <>
    "module Nginx_" <> (Text.toTitle moName) <> " where\n\n" <>
    "import           Prelude (($))\n" <>
    "import qualified Prelude (map)\n\n" <>
    "import           Data.Conf.Types\n" <>
    "import           Data.Text       (Text)\n" <>
    "\nimport           Nginx_Common\n" <>
    (Text.unlines $ map directiveToHaskell moDirectives)

directiveToHaskell Directive{..} | length (Text.splitOn " " diName) /= 1 = ""
directiveToHaskell Directive{..} | length (Text.splitOn "." diName) /= 1 = ""
directiveToHaskell Directive{..} = case diSyntax of
    SyntaxExpression _ ->
        "\n-- | " <> diDocumentation <> "\n" <>
        diName' <> " :: [Text] -> ConfStatement\n" <>
        diName' <> " vs = ConfStatementExpression (Expression \"" <> diName <> "\" vs)\n\n" <>

        "-- | Safe version of '" <> diName <> "'\n" <>
        diName <> "_s :: [Text] -> " <> Text.toTitle diName <> "\n" <>
        diName <> "_s vs = " <> Text.toTitle diName <> "$ ConfStatementExpression (Expression \"" <> diName <> "\" vs)\n" <>

        "newtype " <> Text.toTitle diName <> " = " <> Text.toTitle diName <> " ConfStatement\n" <>
        "instance ToConfStatement " <> Text.toTitle diName <> " where\n" <>
        "    toConfStatement (" <> Text.toTitle diName <> " c) = c\n" <>
        (Text.unlines $ map (\ctx -> "instance HasContext" <> Text.toTitle ctx <> " " <> Text.toTitle diName <> " where")
            (filter ((== 1) . length . (Text.splitOn " "))
            (filter ((== 1) . length . (Text.splitOn ".")) diContexts)))
    SyntaxBlock ->
        "-- | " <> diDocumentation <> "\n" <>
        diName' <> " :: [Text] -> [ConfStatement] -> ConfStatement\n" <>
        diName' <> " more ss = ConfStatementBlock (Block (\"" <> diName <> "\":more) ss)\n" <>

        "-- | Safe version of '" <> diName <> "'\n" <>
        diName <> "_s :: (HasContext" <> Text.toTitle diName <> " f, ToConfStatement f) => [Text] -> [f] -> ConfStatement\n" <>
        diName <> "_s more ss = ConfStatementBlock (Block (\"" <> diName <> "\":more) (Prelude.map toConfStatement ss))"
  where
    reservedWords = ["case", "if", "then"]
    diName' =
        if diName `elem` reservedWords
            then diName <> "_"
            else diName

data Module = Module { moName       :: Text
                     , moDirectives :: [Directive]
                     }
  deriving(Eq, Show, Ord)

data Syntax = SyntaxExpression { seCases :: [Text] }
            | SyntaxBlock
  deriving(Eq, Show, Ord)

type Contexts = [Text]

data Directive = Directive { diName          :: Text
                           , diSyntax        :: Syntax
                           , diContexts      :: Contexts
                           , diDocumentation :: Text
                           }
  deriving(Eq, Show, Ord)

parseChildren rest = do
    forM (sections (~== TagOpen ("directive" :: Text) []) rest) $
        \t -> case t of
            (TagOpen ("directive" :: Text) as : rest) ->
                case getName as of
                    Nothing -> return Nothing
                    Just n -> do
                        (s, c, d) <- parseChild rest
                        return $ Just (Directive n s c d)
                        -- print (n, innerText rest)
            _ -> return Nothing -- print ("UNKNOWN", t)

parseChild rest = do
    let (allSyntax, allDocs) = span
            (\case
                (TagOpen ("para" :: Text) _) -> False
                _ -> True)
            rest
    (syntax, contexts) <- parseSyntax allSyntax
    docs <- parseDocs allDocs
    return (syntax, contexts, docs)

parseSyntax rest = do
    let (syntaxT, contextsT) = span
            (\case
                (TagOpen "context" _) -> False
                _ -> True)
            rest
        syntaxT' = flip dropWhile syntaxT $ \case
            TagOpen "syntax" _ -> False
            _ -> True

    return
        ( case syntaxT' of
              (TagOpen "syntax" [("block", "yes")]:_) -> SyntaxBlock
                  {-case snd <$> find ((== "block") . fst) as of-}
                      {-Just "yes" -> SyntaxBlock-}
                      {-_ -> SyntaxExpression $ filter (not . Text.null) .  map (stripAll) $ Text.splitOn ("|" :: Text) $ innerText syntaxT-}
              _ -> SyntaxExpression $ filter (not . Text.null) .  map (stripAll) $ Text.splitOn ("|" :: Text) $ innerText syntaxT
        , map (stripAll) $ filter (not . Text.null) (map (stripAll . innerText . (:[])) contextsT)
        )

parseDocs rest = do
    let para = head (sections (~== TagOpen ("para" :: Text) []) rest)
    return $ Text.unwords $ Text.lines $ stripAll (innerText (takeWhile (\case (TagClose ("para" :: Text)) -> False; _ -> True) para))

stripAll = Text.unlines . filter (not . Text.null) . map (Text.dropAround isSpace . Text.strip) . Text.lines
