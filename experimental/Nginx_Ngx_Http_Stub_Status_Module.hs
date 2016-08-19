-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Stub_Status_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | The basic status information will be accessible from the surrounding location.
stub_status :: [Text] -> ConfStatement
stub_status vs = ConfStatementExpression (Expression "stub_status" vs)

-- | Safe version of 'stub_status'
stub_status_s :: [Text] -> Stub_Status
stub_status_s vs = Stub_Status$ ConfStatementExpression (Expression "stub_status" vs)
newtype Stub_Status = Stub_Status ConfStatement
instance ToConfStatement Stub_Status where
    toConfStatement (Stub_Status c) = c
instance HasContextServer
 Stub_Status where
instance HasContextLocation
 Stub_Status where

