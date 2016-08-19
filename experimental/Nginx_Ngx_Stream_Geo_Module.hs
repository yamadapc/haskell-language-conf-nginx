-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Stream_Geo_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common
-- | Describes the dependency of values of the specified variable on the client IP address. By default, the address is taken from the $remote_addr variable, but it can also be taken from another variable, for example: geo $arg_remote_addr $geo { ...; }
geo :: [Text] -> [ConfStatement] -> ConfStatement
geo more ss = ConfStatementBlock (Block ("geo":more) ss)
-- | Safe version of 'geo'
geo_s :: (HasContextGeo f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
geo_s more ss = ConfStatementBlock (Block ("geo":more) (Prelude.map toConfStatement ss))
