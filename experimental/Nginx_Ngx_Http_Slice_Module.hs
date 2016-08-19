-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Slice_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets the size of the slice. The zero value disables splitting responses into slices. Note that a too low value may result in excessive memory usage and a large number of file descriptors.
slice :: [Text] -> ConfStatement
slice vs = ConfStatementExpression (Expression "slice" vs)

-- | Safe version of 'slice'
slice_s :: [Text] -> Slice
slice_s vs = Slice$ ConfStatementExpression (Expression "slice" vs)
newtype Slice = Slice ConfStatement
instance ToConfStatement Slice where
    toConfStatement (Slice c) = c
instance HasContextHttp
 Slice where
instance HasContextServer
 Slice where
instance HasContextLocation
 Slice where

