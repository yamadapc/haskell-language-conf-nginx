-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Flv_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Turns on module processing in a surrounding location.
flv :: [Text] -> ConfStatement
flv vs = ConfStatementExpression (Expression "flv" vs)

-- | Safe version of 'flv'
flv_s :: [Text] -> Flv
flv_s vs = Flv$ ConfStatementExpression (Expression "flv" vs)
newtype Flv = Flv ConfStatement
instance ToConfStatement Flv where
    toConfStatement (Flv c) = c
instance HasContextLocation
 Flv where

