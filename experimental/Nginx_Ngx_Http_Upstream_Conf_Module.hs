-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Upstream_Conf_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Turns on the HTTP interface of upstream configuration in the surrounding location. Access to this location should be limited.
upstream_conf :: [Text] -> ConfStatement
upstream_conf vs = ConfStatementExpression (Expression "upstream_conf" vs)

-- | Safe version of 'upstream_conf'
upstream_conf_s :: [Text] -> Upstream_Conf
upstream_conf_s vs = Upstream_Conf$ ConfStatementExpression (Expression "upstream_conf" vs)
newtype Upstream_Conf = Upstream_Conf ConfStatement
instance ToConfStatement Upstream_Conf where
    toConfStatement (Upstream_Conf c) = c
instance HasContextLocation
 Upstream_Conf where

