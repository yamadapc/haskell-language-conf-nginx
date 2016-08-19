-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Spdy_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets the maximum size of chunks into which the response body is sliced. A too low value results in higher overhead. A too high value impairs prioritization due to HOL blocking.
spdy_chunk_size :: [Text] -> ConfStatement
spdy_chunk_size vs = ConfStatementExpression (Expression "spdy_chunk_size" vs)

-- | Safe version of 'spdy_chunk_size'
spdy_chunk_size_s :: [Text] -> Spdy_Chunk_Size
spdy_chunk_size_s vs = Spdy_Chunk_Size$ ConfStatementExpression (Expression "spdy_chunk_size" vs)
newtype Spdy_Chunk_Size = Spdy_Chunk_Size ConfStatement
instance ToConfStatement Spdy_Chunk_Size where
    toConfStatement (Spdy_Chunk_Size c) = c
instance HasContextHttp
 Spdy_Chunk_Size where
instance HasContextServer
 Spdy_Chunk_Size where
instance HasContextLocation
 Spdy_Chunk_Size where


-- | Sets the header compression level of a response in a range from 1 (fastest, less compression) to 9 (slowest, best compression). The special value 0 turns off the header compression.
spdy_headers_comp :: [Text] -> ConfStatement
spdy_headers_comp vs = ConfStatementExpression (Expression "spdy_headers_comp" vs)

-- | Safe version of 'spdy_headers_comp'
spdy_headers_comp_s :: [Text] -> Spdy_Headers_Comp
spdy_headers_comp_s vs = Spdy_Headers_Comp$ ConfStatementExpression (Expression "spdy_headers_comp" vs)
newtype Spdy_Headers_Comp = Spdy_Headers_Comp ConfStatement
instance ToConfStatement Spdy_Headers_Comp where
    toConfStatement (Spdy_Headers_Comp c) = c
instance HasContextHttp
 Spdy_Headers_Comp where
instance HasContextServer
 Spdy_Headers_Comp where

