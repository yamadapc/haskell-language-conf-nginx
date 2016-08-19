-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Mail_Auth_Http_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets the URL of the HTTP authentication server. The protocol is described below.
auth_http :: [Text] -> ConfStatement
auth_http vs = ConfStatementExpression (Expression "auth_http" vs)

-- | Safe version of 'auth_http'
auth_http_s :: [Text] -> Auth_Http
auth_http_s vs = Auth_Http$ ConfStatementExpression (Expression "auth_http" vs)
newtype Auth_Http = Auth_Http ConfStatement
instance ToConfStatement Auth_Http where
    toConfStatement (Auth_Http c) = c
instance HasContextMail
 Auth_Http where
instance HasContextServer
 Auth_Http where


-- | Appends the specified header to requests sent to the authentication server. This header can be used as the shared secret to verify that the request comes from nginx. For example: auth_http_header X-Auth-Key "secret_string";
auth_http_header :: [Text] -> ConfStatement
auth_http_header vs = ConfStatementExpression (Expression "auth_http_header" vs)

-- | Safe version of 'auth_http_header'
auth_http_header_s :: [Text] -> Auth_Http_Header
auth_http_header_s vs = Auth_Http_Header$ ConfStatementExpression (Expression "auth_http_header" vs)
newtype Auth_Http_Header = Auth_Http_Header ConfStatement
instance ToConfStatement Auth_Http_Header where
    toConfStatement (Auth_Http_Header c) = c
instance HasContextMail
 Auth_Http_Header where
instance HasContextServer
 Auth_Http_Header where


-- | Appends the Auth-SSL-Cert header with the client certificate in the PEM format (urlencoded) to requests sent to the authentication server.
auth_http_pass_client_cert :: [Text] -> ConfStatement
auth_http_pass_client_cert vs = ConfStatementExpression (Expression "auth_http_pass_client_cert" vs)

-- | Safe version of 'auth_http_pass_client_cert'
auth_http_pass_client_cert_s :: [Text] -> Auth_Http_Pass_Client_Cert
auth_http_pass_client_cert_s vs = Auth_Http_Pass_Client_Cert$ ConfStatementExpression (Expression "auth_http_pass_client_cert" vs)
newtype Auth_Http_Pass_Client_Cert = Auth_Http_Pass_Client_Cert ConfStatement
instance ToConfStatement Auth_Http_Pass_Client_Cert where
    toConfStatement (Auth_Http_Pass_Client_Cert c) = c
instance HasContextMail
 Auth_Http_Pass_Client_Cert where
instance HasContextServer
 Auth_Http_Pass_Client_Cert where


-- | Sets the timeout for communication with the authentication server.
auth_http_timeout :: [Text] -> ConfStatement
auth_http_timeout vs = ConfStatementExpression (Expression "auth_http_timeout" vs)

-- | Safe version of 'auth_http_timeout'
auth_http_timeout_s :: [Text] -> Auth_Http_Timeout
auth_http_timeout_s vs = Auth_Http_Timeout$ ConfStatementExpression (Expression "auth_http_timeout" vs)
newtype Auth_Http_Timeout = Auth_Http_Timeout ConfStatement
instance ToConfStatement Auth_Http_Timeout where
    toConfStatement (Auth_Http_Timeout c) = c
instance HasContextMail
 Auth_Http_Timeout where
instance HasContextServer
 Auth_Http_Timeout where

