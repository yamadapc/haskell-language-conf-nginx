-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Secure_Link_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Defines a string with variables from which the checksum value and lifetime of a link will be extracted.
secure_link :: [Text] -> ConfStatement
secure_link vs = ConfStatementExpression (Expression "secure_link" vs)

-- | Safe version of 'secure_link'
secure_link_s :: [Text] -> Secure_Link
secure_link_s vs = Secure_Link$ ConfStatementExpression (Expression "secure_link" vs)
newtype Secure_Link = Secure_Link ConfStatement
instance ToConfStatement Secure_Link where
    toConfStatement (Secure_Link c) = c
instance HasContextHttp
 Secure_Link where
instance HasContextServer
 Secure_Link where
instance HasContextLocation
 Secure_Link where


-- | Defines an expression for which the MD5 hash value will be computed and compared with the value passed in a request.
secure_link_md5 :: [Text] -> ConfStatement
secure_link_md5 vs = ConfStatementExpression (Expression "secure_link_md5" vs)

-- | Safe version of 'secure_link_md5'
secure_link_md5_s :: [Text] -> Secure_Link_Md5
secure_link_md5_s vs = Secure_Link_Md5$ ConfStatementExpression (Expression "secure_link_md5" vs)
newtype Secure_Link_Md5 = Secure_Link_Md5 ConfStatement
instance ToConfStatement Secure_Link_Md5 where
    toConfStatement (Secure_Link_Md5 c) = c
instance HasContextHttp
 Secure_Link_Md5 where
instance HasContextServer
 Secure_Link_Md5 where
instance HasContextLocation
 Secure_Link_Md5 where


-- | Defines a secret word used to check authenticity of requested links.
secure_link_secret :: [Text] -> ConfStatement
secure_link_secret vs = ConfStatementExpression (Expression "secure_link_secret" vs)

-- | Safe version of 'secure_link_secret'
secure_link_secret_s :: [Text] -> Secure_Link_Secret
secure_link_secret_s vs = Secure_Link_Secret$ ConfStatementExpression (Expression "secure_link_secret" vs)
newtype Secure_Link_Secret = Secure_Link_Secret ConfStatement
instance ToConfStatement Secure_Link_Secret where
    toConfStatement (Secure_Link_Secret c) = c
instance HasContextLocation
 Secure_Link_Secret where

