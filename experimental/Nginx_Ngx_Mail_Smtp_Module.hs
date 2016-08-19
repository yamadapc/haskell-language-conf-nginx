-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Mail_Smtp_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets permitted methods of SASL authentication for SMTP clients. Supported methods are: login AUTH LOGIN plain AUTH PLAIN cram-md5 AUTH CRAM-MD5. In order for this method to work, the password must be stored unencrypted. none Authentication is not required.
smtp_auth :: [Text] -> ConfStatement
smtp_auth vs = ConfStatementExpression (Expression "smtp_auth" vs)

-- | Safe version of 'smtp_auth'
smtp_auth_s :: [Text] -> Smtp_Auth
smtp_auth_s vs = Smtp_Auth$ ConfStatementExpression (Expression "smtp_auth" vs)
newtype Smtp_Auth = Smtp_Auth ConfStatement
instance ToConfStatement Smtp_Auth where
    toConfStatement (Smtp_Auth c) = c
instance HasContextMail
 Smtp_Auth where
instance HasContextServer
 Smtp_Auth where


-- | Sets the SMTP protocol extensions list that is passed to the client in response to the EHLO command. Authentication methods specified in the  directive are automatically added to this list.
smtp_capabilities :: [Text] -> ConfStatement
smtp_capabilities vs = ConfStatementExpression (Expression "smtp_capabilities" vs)

-- | Safe version of 'smtp_capabilities'
smtp_capabilities_s :: [Text] -> Smtp_Capabilities
smtp_capabilities_s vs = Smtp_Capabilities$ ConfStatementExpression (Expression "smtp_capabilities" vs)
newtype Smtp_Capabilities = Smtp_Capabilities ConfStatement
instance ToConfStatement Smtp_Capabilities where
    toConfStatement (Smtp_Capabilities c) = c
instance HasContextMail
 Smtp_Capabilities where
instance HasContextServer
 Smtp_Capabilities where

