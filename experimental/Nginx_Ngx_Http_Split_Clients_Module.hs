-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Split_Clients_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common
-- | Creates a variable for A/B testing, for example: split_clients "${remote_addr}AAA" $variant { 0.5%               .one; 2.0%               .two; *                  ""; } The value of the original string is hashed using MurmurHash2. In the example given, hash values from 0 to 21474835 (0.5%) correspond to the value ".one" of the $variant variable, hash values from 21474836 to 107374180 (2%) correspond to the value ".two", and hash values from 107374181 to 4294967295 correspond to the value "" (an empty string).
split_clients :: [Text] -> [ConfStatement] -> ConfStatement
split_clients more ss = ConfStatementBlock (Block ("split_clients":more) ss)
-- | Safe version of 'split_clients'
split_clients_s :: (HasContextSplit_Clients f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
split_clients_s more ss = ConfStatementBlock (Block ("split_clients":more) (Prelude.map toConfStatement ss))
