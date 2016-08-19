-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Gunzip_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Enables or disables decompression of gzipped responses for clients that lack gzip support. If enabled, the following directives are also taken into account when determining if clients support gzip: , , and . See also the  directive.
gunzip :: [Text] -> ConfStatement
gunzip vs = ConfStatementExpression (Expression "gunzip" vs)

-- | Safe version of 'gunzip'
gunzip_s :: [Text] -> Gunzip
gunzip_s vs = Gunzip$ ConfStatementExpression (Expression "gunzip" vs)
newtype Gunzip = Gunzip ConfStatement
instance ToConfStatement Gunzip where
    toConfStatement (Gunzip c) = c
instance HasContextHttp
 Gunzip where
instance HasContextServer
 Gunzip where
instance HasContextLocation
 Gunzip where


-- | Sets the number and size of buffers used to decompress a response. By default, the buffer size is equal to one memory page. This is either 4K or 8K, depending on a platform.
gunzip_buffers :: [Text] -> ConfStatement
gunzip_buffers vs = ConfStatementExpression (Expression "gunzip_buffers" vs)

-- | Safe version of 'gunzip_buffers'
gunzip_buffers_s :: [Text] -> Gunzip_Buffers
gunzip_buffers_s vs = Gunzip_Buffers$ ConfStatementExpression (Expression "gunzip_buffers" vs)
newtype Gunzip_Buffers = Gunzip_Buffers ConfStatement
instance ToConfStatement Gunzip_Buffers where
    toConfStatement (Gunzip_Buffers c) = c
instance HasContextHttp
 Gunzip_Buffers where
instance HasContextServer
 Gunzip_Buffers where
instance HasContextLocation
 Gunzip_Buffers where

