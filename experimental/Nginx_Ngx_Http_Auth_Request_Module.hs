-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Auth_Request_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Enables authorization based on the result of a subrequest and sets the URI to which the subrequest will be sent.
auth_request :: [Text] -> ConfStatement
auth_request vs = ConfStatementExpression (Expression "auth_request" vs)

-- | Safe version of 'auth_request'
auth_request_s :: [Text] -> Auth_Request
auth_request_s vs = Auth_Request$ ConfStatementExpression (Expression "auth_request" vs)
newtype Auth_Request = Auth_Request ConfStatement
instance ToConfStatement Auth_Request where
    toConfStatement (Auth_Request c) = c
instance HasContextHttp
 Auth_Request where
instance HasContextServer
 Auth_Request where
instance HasContextLocation
 Auth_Request where


-- | Sets the request variable to the given value after the authorization request completes. The value may contain variables from the authorization request, such as $upstream_http_*.
auth_request_set :: [Text] -> ConfStatement
auth_request_set vs = ConfStatementExpression (Expression "auth_request_set" vs)

-- | Safe version of 'auth_request_set'
auth_request_set_s :: [Text] -> Auth_Request_Set
auth_request_set_s vs = Auth_Request_Set$ ConfStatementExpression (Expression "auth_request_set" vs)
newtype Auth_Request_Set = Auth_Request_Set ConfStatement
instance ToConfStatement Auth_Request_Set where
    toConfStatement (Auth_Request_Set c) = c
instance HasContextHttp
 Auth_Request_Set where
instance HasContextServer
 Auth_Request_Set where
instance HasContextLocation
 Auth_Request_Set where

