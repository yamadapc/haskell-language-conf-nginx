-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Mail_Pop3_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets permitted methods of authentication for POP3 clients. Supported methods are: plain USER/PASS, AUTH PLAIN, AUTH LOGIN. It is not possible to disable these methods. apop APOP. In order for this method to work, the password must be stored unencrypted. cram-md5 AUTH CRAM-MD5. In order for this method to work, the password must be stored unencrypted.
pop3_auth :: [Text] -> ConfStatement
pop3_auth vs = ConfStatementExpression (Expression "pop3_auth" vs)

-- | Safe version of 'pop3_auth'
pop3_auth_s :: [Text] -> Pop3_Auth
pop3_auth_s vs = Pop3_Auth$ ConfStatementExpression (Expression "pop3_auth" vs)
newtype Pop3_Auth = Pop3_Auth ConfStatement
instance ToConfStatement Pop3_Auth where
    toConfStatement (Pop3_Auth c) = c
instance HasContextMail
 Pop3_Auth where
instance HasContextServer
 Pop3_Auth where


-- | Sets the POP3 protocol extensions list that is passed to the client in response to the CAPA command. The authentication methods specified in the  and (SASL extension) and STLS directives, are automatically added to this list if the directive is enabled.
pop3_capabilities :: [Text] -> ConfStatement
pop3_capabilities vs = ConfStatementExpression (Expression "pop3_capabilities" vs)

-- | Safe version of 'pop3_capabilities'
pop3_capabilities_s :: [Text] -> Pop3_Capabilities
pop3_capabilities_s vs = Pop3_Capabilities$ ConfStatementExpression (Expression "pop3_capabilities" vs)
newtype Pop3_Capabilities = Pop3_Capabilities ConfStatement
instance ToConfStatement Pop3_Capabilities where
    toConfStatement (Pop3_Capabilities c) = c
instance HasContextMail
 Pop3_Capabilities where
instance HasContextServer
 Pop3_Capabilities where

