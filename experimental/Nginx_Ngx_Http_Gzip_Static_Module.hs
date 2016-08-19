-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Gzip_Static_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Enables (“on”) or disables (“off”) checking the existence of precompressed files. The following directives are also taken into account: , , , and .
gzip_static :: [Text] -> ConfStatement
gzip_static vs = ConfStatementExpression (Expression "gzip_static" vs)

-- | Safe version of 'gzip_static'
gzip_static_s :: [Text] -> Gzip_Static
gzip_static_s vs = Gzip_Static$ ConfStatementExpression (Expression "gzip_static" vs)
newtype Gzip_Static = Gzip_Static ConfStatement
instance ToConfStatement Gzip_Static where
    toConfStatement (Gzip_Static c) = c
instance HasContextHttp
 Gzip_Static where
instance HasContextServer
 Gzip_Static where
instance HasContextLocation
 Gzip_Static where

