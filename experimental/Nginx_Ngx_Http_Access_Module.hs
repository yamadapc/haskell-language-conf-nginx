-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Access_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Allows access for the specified network or address. If the special value unix: is specified (1.5.1), allows access for all UNIX-domain sockets.
allow :: [Text] -> ConfStatement
allow vs = ConfStatementExpression (Expression "allow" vs)

-- | Safe version of 'allow'
allow_s :: [Text] -> Allow
allow_s vs = Allow$ ConfStatementExpression (Expression "allow" vs)
newtype Allow = Allow ConfStatement
instance ToConfStatement Allow where
    toConfStatement (Allow c) = c
instance HasContextHttp
 Allow where
instance HasContextServer
 Allow where
instance HasContextLocation
 Allow where
instance HasContextLimit_Except
 Allow where


-- | Denies access for the specified network or address. If the special value unix: is specified (1.5.1), denies access for all UNIX-domain sockets.
deny :: [Text] -> ConfStatement
deny vs = ConfStatementExpression (Expression "deny" vs)

-- | Safe version of 'deny'
deny_s :: [Text] -> Deny
deny_s vs = Deny$ ConfStatementExpression (Expression "deny" vs)
newtype Deny = Deny ConfStatement
instance ToConfStatement Deny where
    toConfStatement (Deny c) = c
instance HasContextHttp
 Deny where
instance HasContextServer
 Deny where
instance HasContextLocation
 Deny where
instance HasContextLimit_Except
 Deny where

