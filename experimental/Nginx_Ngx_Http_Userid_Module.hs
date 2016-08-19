-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Userid_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Enables or disables setting cookies and logging the received cookies: on enables the setting of version 2 cookies and logging of the received cookies; v1 enables the setting of version 1 cookies and logging of the received cookies; log disables the setting of cookies, but enables logging of the received cookies; off disables the setting of cookies and logging of the received cookies.
userid :: [Text] -> ConfStatement
userid vs = ConfStatementExpression (Expression "userid" vs)

-- | Safe version of 'userid'
userid_s :: [Text] -> Userid
userid_s vs = Userid$ ConfStatementExpression (Expression "userid" vs)
newtype Userid = Userid ConfStatement
instance ToConfStatement Userid where
    toConfStatement (Userid c) = c
instance HasContextHttp
 Userid where
instance HasContextServer
 Userid where
instance HasContextLocation
 Userid where


-- | Defines a domain for which the cookie is set. The none parameter disables setting of a domain for the cookie.
userid_domain :: [Text] -> ConfStatement
userid_domain vs = ConfStatementExpression (Expression "userid_domain" vs)

-- | Safe version of 'userid_domain'
userid_domain_s :: [Text] -> Userid_Domain
userid_domain_s vs = Userid_Domain$ ConfStatementExpression (Expression "userid_domain" vs)
newtype Userid_Domain = Userid_Domain ConfStatement
instance ToConfStatement Userid_Domain where
    toConfStatement (Userid_Domain c) = c
instance HasContextHttp
 Userid_Domain where
instance HasContextServer
 Userid_Domain where
instance HasContextLocation
 Userid_Domain where


-- | Sets a time during which a browser should keep the cookie. The parameter max will cause the cookie to expire on “31 Dec 2037 23:55:55 GMT”. The parameter off will cause the cookie to expire at the end of a browser session.
userid_expires :: [Text] -> ConfStatement
userid_expires vs = ConfStatementExpression (Expression "userid_expires" vs)

-- | Safe version of 'userid_expires'
userid_expires_s :: [Text] -> Userid_Expires
userid_expires_s vs = Userid_Expires$ ConfStatementExpression (Expression "userid_expires" vs)
newtype Userid_Expires = Userid_Expires ConfStatement
instance ToConfStatement Userid_Expires where
    toConfStatement (Userid_Expires c) = c
instance HasContextHttp
 Userid_Expires where
instance HasContextServer
 Userid_Expires where
instance HasContextLocation
 Userid_Expires where


-- | If the parameter is not off, enables the cookie marking mechanism and sets the character used as a mark. This mechanism is used to add or change and/or a cookie expiration time while preserving the client identifier. A mark can be any letter of the English alphabet (case-sensitive), digit, or the “=” character.
userid_mark :: [Text] -> ConfStatement
userid_mark vs = ConfStatementExpression (Expression "userid_mark" vs)

-- | Safe version of 'userid_mark'
userid_mark_s :: [Text] -> Userid_Mark
userid_mark_s vs = Userid_Mark$ ConfStatementExpression (Expression "userid_mark" vs)
newtype Userid_Mark = Userid_Mark ConfStatement
instance ToConfStatement Userid_Mark where
    toConfStatement (Userid_Mark c) = c
instance HasContextHttp
 Userid_Mark where
instance HasContextServer
 Userid_Mark where
instance HasContextLocation
 Userid_Mark where


-- | Sets the cookie name.
userid_name :: [Text] -> ConfStatement
userid_name vs = ConfStatementExpression (Expression "userid_name" vs)

-- | Safe version of 'userid_name'
userid_name_s :: [Text] -> Userid_Name
userid_name_s vs = Userid_Name$ ConfStatementExpression (Expression "userid_name" vs)
newtype Userid_Name = Userid_Name ConfStatement
instance ToConfStatement Userid_Name where
    toConfStatement (Userid_Name c) = c
instance HasContextHttp
 Userid_Name where
instance HasContextServer
 Userid_Name where
instance HasContextLocation
 Userid_Name where


-- | Sets a value for the P3P header field that will be sent along with the cookie. If the directive is set to the special value none, the P3P header will not be sent in a response.
userid_p3p :: [Text] -> ConfStatement
userid_p3p vs = ConfStatementExpression (Expression "userid_p3p" vs)

-- | Safe version of 'userid_p3p'
userid_p3p_s :: [Text] -> Userid_P3P
userid_p3p_s vs = Userid_P3P$ ConfStatementExpression (Expression "userid_p3p" vs)
newtype Userid_P3P = Userid_P3P ConfStatement
instance ToConfStatement Userid_P3P where
    toConfStatement (Userid_P3P c) = c
instance HasContextHttp
 Userid_P3P where
instance HasContextServer
 Userid_P3P where
instance HasContextLocation
 Userid_P3P where


-- | Defines a path for which the cookie is set.
userid_path :: [Text] -> ConfStatement
userid_path vs = ConfStatementExpression (Expression "userid_path" vs)

-- | Safe version of 'userid_path'
userid_path_s :: [Text] -> Userid_Path
userid_path_s vs = Userid_Path$ ConfStatementExpression (Expression "userid_path" vs)
newtype Userid_Path = Userid_Path ConfStatement
instance ToConfStatement Userid_Path where
    toConfStatement (Userid_Path c) = c
instance HasContextHttp
 Userid_Path where
instance HasContextServer
 Userid_Path where
instance HasContextLocation
 Userid_Path where


-- | If identifiers are issued by multiple servers (services), each service should be assigned its own number to ensure that client identifiers are unique. For version 1 cookies, the default value is zero. For version 2 cookies, the default value is the number composed from the last four octets of the server’s IP address.
userid_service :: [Text] -> ConfStatement
userid_service vs = ConfStatementExpression (Expression "userid_service" vs)

-- | Safe version of 'userid_service'
userid_service_s :: [Text] -> Userid_Service
userid_service_s vs = Userid_Service$ ConfStatementExpression (Expression "userid_service" vs)
newtype Userid_Service = Userid_Service ConfStatement
instance ToConfStatement Userid_Service where
    toConfStatement (Userid_Service c) = c
instance HasContextHttp
 Userid_Service where
instance HasContextServer
 Userid_Service where
instance HasContextLocation
 Userid_Service where

