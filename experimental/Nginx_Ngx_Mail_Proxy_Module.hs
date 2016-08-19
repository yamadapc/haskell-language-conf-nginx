-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Mail_Proxy_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets the size of the buffer used for proxying. By default, the buffer size is equal to one memory page. Depending on a platform, it is either 4K or 8K.
proxy_buffer :: [Text] -> ConfStatement
proxy_buffer vs = ConfStatementExpression (Expression "proxy_buffer" vs)

-- | Safe version of 'proxy_buffer'
proxy_buffer_s :: [Text] -> Proxy_Buffer
proxy_buffer_s vs = Proxy_Buffer$ ConfStatementExpression (Expression "proxy_buffer" vs)
newtype Proxy_Buffer = Proxy_Buffer ConfStatement
instance ToConfStatement Proxy_Buffer where
    toConfStatement (Proxy_Buffer c) = c
instance HasContextMail
 Proxy_Buffer where
instance HasContextServer
 Proxy_Buffer where


-- | Indicates whether to pass the error message obtained during the authentication on the backend to the client.
proxy_pass_error_message :: [Text] -> ConfStatement
proxy_pass_error_message vs = ConfStatementExpression (Expression "proxy_pass_error_message" vs)

-- | Safe version of 'proxy_pass_error_message'
proxy_pass_error_message_s :: [Text] -> Proxy_Pass_Error_Message
proxy_pass_error_message_s vs = Proxy_Pass_Error_Message$ ConfStatementExpression (Expression "proxy_pass_error_message" vs)
newtype Proxy_Pass_Error_Message = Proxy_Pass_Error_Message ConfStatement
instance ToConfStatement Proxy_Pass_Error_Message where
    toConfStatement (Proxy_Pass_Error_Message c) = c
instance HasContextMail
 Proxy_Pass_Error_Message where
instance HasContextServer
 Proxy_Pass_Error_Message where


-- | Sets the timeout between two successive read or write operations on client or proxied server connections. If no data is transmitted within this time, the connection is closed.
proxy_timeout :: [Text] -> ConfStatement
proxy_timeout vs = ConfStatementExpression (Expression "proxy_timeout" vs)

-- | Safe version of 'proxy_timeout'
proxy_timeout_s :: [Text] -> Proxy_Timeout
proxy_timeout_s vs = Proxy_Timeout$ ConfStatementExpression (Expression "proxy_timeout" vs)
newtype Proxy_Timeout = Proxy_Timeout ConfStatement
instance ToConfStatement Proxy_Timeout where
    toConfStatement (Proxy_Timeout c) = c
instance HasContextMail
 Proxy_Timeout where
instance HasContextServer
 Proxy_Timeout where


-- | Enables or disables the passing of the XCLIENT command with client parameters when connecting to the SMTP backend.
xclient :: [Text] -> ConfStatement
xclient vs = ConfStatementExpression (Expression "xclient" vs)

-- | Safe version of 'xclient'
xclient_s :: [Text] -> Xclient
xclient_s vs = Xclient$ ConfStatementExpression (Expression "xclient" vs)
newtype Xclient = Xclient ConfStatement
instance ToConfStatement Xclient where
    toConfStatement (Xclient c) = c
instance HasContextMail
 Xclient where
instance HasContextServer
 Xclient where

