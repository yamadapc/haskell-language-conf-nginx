-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Index_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Defines files that will be used as an index. The file name can contain variables. Files are checked in the specified order. The last element of the list can be a file with an absolute path. Example: index index.$geo.html index.0.html /index.html;
index :: [Text] -> ConfStatement
index vs = ConfStatementExpression (Expression "index" vs)

-- | Safe version of 'index'
index_s :: [Text] -> Index
index_s vs = Index$ ConfStatementExpression (Expression "index" vs)
newtype Index = Index ConfStatement
instance ToConfStatement Index where
    toConfStatement (Index c) = c
instance HasContextHttp
 Index where
instance HasContextServer
 Index where
instance HasContextLocation
 Index where

