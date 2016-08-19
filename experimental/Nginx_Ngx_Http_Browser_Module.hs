-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Browser_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | If any of the specified substrings is found in the User-Agent request header field, the browser will be considered ancient. The special string “netscape4” corresponds to the regular expression “^Mozilla/[1-4]”.
ancient_browser :: [Text] -> ConfStatement
ancient_browser vs = ConfStatementExpression (Expression "ancient_browser" vs)

-- | Safe version of 'ancient_browser'
ancient_browser_s :: [Text] -> Ancient_Browser
ancient_browser_s vs = Ancient_Browser$ ConfStatementExpression (Expression "ancient_browser" vs)
newtype Ancient_Browser = Ancient_Browser ConfStatement
instance ToConfStatement Ancient_Browser where
    toConfStatement (Ancient_Browser c) = c
instance HasContextHttp
 Ancient_Browser where
instance HasContextServer
 Ancient_Browser where
instance HasContextLocation
 Ancient_Browser where


-- | Sets a value for the $ancient_browser variables.
ancient_browser_value :: [Text] -> ConfStatement
ancient_browser_value vs = ConfStatementExpression (Expression "ancient_browser_value" vs)

-- | Safe version of 'ancient_browser_value'
ancient_browser_value_s :: [Text] -> Ancient_Browser_Value
ancient_browser_value_s vs = Ancient_Browser_Value$ ConfStatementExpression (Expression "ancient_browser_value" vs)
newtype Ancient_Browser_Value = Ancient_Browser_Value ConfStatement
instance ToConfStatement Ancient_Browser_Value where
    toConfStatement (Ancient_Browser_Value c) = c
instance HasContextHttp
 Ancient_Browser_Value where
instance HasContextServer
 Ancient_Browser_Value where
instance HasContextLocation
 Ancient_Browser_Value where


-- | Specifies a version starting from which a browser is considered modern. A browser can be any one of the following: msie, gecko (browsers based on Mozilla), opera, safari, or konqueror.
modern_browser :: [Text] -> ConfStatement
modern_browser vs = ConfStatementExpression (Expression "modern_browser" vs)

-- | Safe version of 'modern_browser'
modern_browser_s :: [Text] -> Modern_Browser
modern_browser_s vs = Modern_Browser$ ConfStatementExpression (Expression "modern_browser" vs)
newtype Modern_Browser = Modern_Browser ConfStatement
instance ToConfStatement Modern_Browser where
    toConfStatement (Modern_Browser c) = c
instance HasContextHttp
 Modern_Browser where
instance HasContextServer
 Modern_Browser where
instance HasContextLocation
 Modern_Browser where


-- | Sets a value for the $modern_browser variables.
modern_browser_value :: [Text] -> ConfStatement
modern_browser_value vs = ConfStatementExpression (Expression "modern_browser_value" vs)

-- | Safe version of 'modern_browser_value'
modern_browser_value_s :: [Text] -> Modern_Browser_Value
modern_browser_value_s vs = Modern_Browser_Value$ ConfStatementExpression (Expression "modern_browser_value" vs)
newtype Modern_Browser_Value = Modern_Browser_Value ConfStatement
instance ToConfStatement Modern_Browser_Value where
    toConfStatement (Modern_Browser_Value c) = c
instance HasContextHttp
 Modern_Browser_Value where
instance HasContextServer
 Modern_Browser_Value where
instance HasContextLocation
 Modern_Browser_Value where

