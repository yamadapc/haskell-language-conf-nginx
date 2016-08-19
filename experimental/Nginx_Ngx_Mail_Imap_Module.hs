-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Mail_Imap_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets permitted methods of authentication for IMAP clients. Supported methods are: login AUTH=LOGIN plain AUTH=PLAIN cram-md5 AUTH=CRAM-MD5. In order for this method to work, the password must be stored unencrypted.
imap_auth :: [Text] -> ConfStatement
imap_auth vs = ConfStatementExpression (Expression "imap_auth" vs)

-- | Safe version of 'imap_auth'
imap_auth_s :: [Text] -> Imap_Auth
imap_auth_s vs = Imap_Auth$ ConfStatementExpression (Expression "imap_auth" vs)
newtype Imap_Auth = Imap_Auth ConfStatement
instance ToConfStatement Imap_Auth where
    toConfStatement (Imap_Auth c) = c
instance HasContextMail
 Imap_Auth where
instance HasContextServer
 Imap_Auth where


-- | Sets the IMAP protocol extensions list that is passed to the client in response to the CAPABILITY command. The authentication methods specified in the  and STARTTLS directives are automatically added to this list if the directive is enabled.
imap_capabilities :: [Text] -> ConfStatement
imap_capabilities vs = ConfStatementExpression (Expression "imap_capabilities" vs)

-- | Safe version of 'imap_capabilities'
imap_capabilities_s :: [Text] -> Imap_Capabilities
imap_capabilities_s vs = Imap_Capabilities$ ConfStatementExpression (Expression "imap_capabilities" vs)
newtype Imap_Capabilities = Imap_Capabilities ConfStatement
instance ToConfStatement Imap_Capabilities where
    toConfStatement (Imap_Capabilities c) = c
instance HasContextMail
 Imap_Capabilities where
instance HasContextServer
 Imap_Capabilities where


-- | Sets the IMAP commands read buffer size. By default, the buffer size is equal to one memory page. This is either 4K or 8K, depending on a platform.
imap_client_buffer :: [Text] -> ConfStatement
imap_client_buffer vs = ConfStatementExpression (Expression "imap_client_buffer" vs)

-- | Safe version of 'imap_client_buffer'
imap_client_buffer_s :: [Text] -> Imap_Client_Buffer
imap_client_buffer_s vs = Imap_Client_Buffer$ ConfStatementExpression (Expression "imap_client_buffer" vs)
newtype Imap_Client_Buffer = Imap_Client_Buffer ConfStatement
instance ToConfStatement Imap_Client_Buffer where
    toConfStatement (Imap_Client_Buffer c) = c
instance HasContextMail
 Imap_Client_Buffer where
instance HasContextServer
 Imap_Client_Buffer where

