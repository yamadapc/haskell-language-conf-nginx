-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Realip_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Defines trusted addresses that are known to send correct replacement addresses. If the special value unix: is specified, all UNIX-domain sockets will be trusted. IPv6 addresses are supported starting from versions 1.3.0 and 1.2.1.
set_real_ip_from :: [Text] -> ConfStatement
set_real_ip_from vs = ConfStatementExpression (Expression "set_real_ip_from" vs)

-- | Safe version of 'set_real_ip_from'
set_real_ip_from_s :: [Text] -> Set_Real_Ip_From
set_real_ip_from_s vs = Set_Real_Ip_From$ ConfStatementExpression (Expression "set_real_ip_from" vs)
newtype Set_Real_Ip_From = Set_Real_Ip_From ConfStatement
instance ToConfStatement Set_Real_Ip_From where
    toConfStatement (Set_Real_Ip_From c) = c
instance HasContextHttp
 Set_Real_Ip_From where
instance HasContextServer
 Set_Real_Ip_From where
instance HasContextLocation
 Set_Real_Ip_From where


-- | Defines the request header field whose value will be used to replace the client address.
real_ip_header :: [Text] -> ConfStatement
real_ip_header vs = ConfStatementExpression (Expression "real_ip_header" vs)

-- | Safe version of 'real_ip_header'
real_ip_header_s :: [Text] -> Real_Ip_Header
real_ip_header_s vs = Real_Ip_Header$ ConfStatementExpression (Expression "real_ip_header" vs)
newtype Real_Ip_Header = Real_Ip_Header ConfStatement
instance ToConfStatement Real_Ip_Header where
    toConfStatement (Real_Ip_Header c) = c
instance HasContextHttp
 Real_Ip_Header where
instance HasContextServer
 Real_Ip_Header where
instance HasContextLocation
 Real_Ip_Header where


-- | If recursive search is disabled, the original client address that matches one of the trusted addresses is replaced by the last address sent in the request header field defined by the directive. If recursive search is enabled, the original client address that matches one of the trusted addresses is replaced by the last non-trusted address sent in the request header field.
real_ip_recursive :: [Text] -> ConfStatement
real_ip_recursive vs = ConfStatementExpression (Expression "real_ip_recursive" vs)

-- | Safe version of 'real_ip_recursive'
real_ip_recursive_s :: [Text] -> Real_Ip_Recursive
real_ip_recursive_s vs = Real_Ip_Recursive$ ConfStatementExpression (Expression "real_ip_recursive" vs)
newtype Real_Ip_Recursive = Real_Ip_Recursive ConfStatement
instance ToConfStatement Real_Ip_Recursive where
    toConfStatement (Real_Ip_Recursive c) = c
instance HasContextHttp
 Real_Ip_Recursive where
instance HasContextServer
 Real_Ip_Recursive where
instance HasContextLocation
 Real_Ip_Recursive where

