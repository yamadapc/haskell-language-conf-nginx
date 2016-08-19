-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Limit_Conn_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets the shared memory zone and the maximum allowed number of connections for a given key value. When this limit is exceeded, the server will return the error in reply to a request. For example, the directives limit_conn_zone $binary_remote_addr zone=addr:10m; server { location /download/ { limit_conn addr 1; } allow only one connection per an IP address at a time. In HTTP/2 and SPDY, each concurrent request is considered a separate connection.
limit_conn :: [Text] -> ConfStatement
limit_conn vs = ConfStatementExpression (Expression "limit_conn" vs)

-- | Safe version of 'limit_conn'
limit_conn_s :: [Text] -> Limit_Conn
limit_conn_s vs = Limit_Conn$ ConfStatementExpression (Expression "limit_conn" vs)
newtype Limit_Conn = Limit_Conn ConfStatement
instance ToConfStatement Limit_Conn where
    toConfStatement (Limit_Conn c) = c
instance HasContextHttp
 Limit_Conn where
instance HasContextServer
 Limit_Conn where
instance HasContextLocation
 Limit_Conn where


-- | Sets the desired logging level for cases when the server limits the number of connections.
limit_conn_log_level :: [Text] -> ConfStatement
limit_conn_log_level vs = ConfStatementExpression (Expression "limit_conn_log_level" vs)

-- | Safe version of 'limit_conn_log_level'
limit_conn_log_level_s :: [Text] -> Limit_Conn_Log_Level
limit_conn_log_level_s vs = Limit_Conn_Log_Level$ ConfStatementExpression (Expression "limit_conn_log_level" vs)
newtype Limit_Conn_Log_Level = Limit_Conn_Log_Level ConfStatement
instance ToConfStatement Limit_Conn_Log_Level where
    toConfStatement (Limit_Conn_Log_Level c) = c
instance HasContextHttp
 Limit_Conn_Log_Level where
instance HasContextServer
 Limit_Conn_Log_Level where
instance HasContextLocation
 Limit_Conn_Log_Level where


-- | Sets the status code to return in response to rejected requests.
limit_conn_status :: [Text] -> ConfStatement
limit_conn_status vs = ConfStatementExpression (Expression "limit_conn_status" vs)

-- | Safe version of 'limit_conn_status'
limit_conn_status_s :: [Text] -> Limit_Conn_Status
limit_conn_status_s vs = Limit_Conn_Status$ ConfStatementExpression (Expression "limit_conn_status" vs)
newtype Limit_Conn_Status = Limit_Conn_Status ConfStatement
instance ToConfStatement Limit_Conn_Status where
    toConfStatement (Limit_Conn_Status c) = c
instance HasContextHttp
 Limit_Conn_Status where
instance HasContextServer
 Limit_Conn_Status where
instance HasContextLocation
 Limit_Conn_Status where


-- | Sets parameters for a shared memory zone that will keep states for various keys. In particular, the state includes the current number of connections. The key can contain text, variables, and their combination. Requests with an empty key value are not accounted. Prior to version 1.7.6, a key could contain exactly one variable. Usage example: limit_conn_zone $binary_remote_addr zone=addr:10m; Here, a client IP address serves as a key. Note that instead of $remote_addr, the $binary_remote_addr variable is used here. The $remote_addr variable’s size can vary from 7 to 15 bytes. The stored state occupies either 32 or 64 bytes of memory on 32-bit platforms and always 64 bytes on 64-bit platforms. The $binary_remote_addr variable’s size is always 4 bytes for IPv4 addresses or 16 bytes for IPv6 addresses. The stored state always occupies 32 or 64 bytes on 32-bit platforms and 64 bytes on 64-bit platforms. One megabyte zone can keep about 32 thousand 32-byte states or about 16 thousand 64-byte states. If the zone storage is exhausted, the server will return the error to all further requests.
limit_conn_zone :: [Text] -> ConfStatement
limit_conn_zone vs = ConfStatementExpression (Expression "limit_conn_zone" vs)

-- | Safe version of 'limit_conn_zone'
limit_conn_zone_s :: [Text] -> Limit_Conn_Zone
limit_conn_zone_s vs = Limit_Conn_Zone$ ConfStatementExpression (Expression "limit_conn_zone" vs)
newtype Limit_Conn_Zone = Limit_Conn_Zone ConfStatement
instance ToConfStatement Limit_Conn_Zone where
    toConfStatement (Limit_Conn_Zone c) = c
instance HasContextHttp
 Limit_Conn_Zone where


-- | This directive was made obsolete in version 1.1.8 and was removed in version 1.7.6. An equivalent  directive with a changed syntax should be used instead: limit_conn_zone $variable zone=name:size;
limit_zone :: [Text] -> ConfStatement
limit_zone vs = ConfStatementExpression (Expression "limit_zone" vs)

-- | Safe version of 'limit_zone'
limit_zone_s :: [Text] -> Limit_Zone
limit_zone_s vs = Limit_Zone$ ConfStatementExpression (Expression "limit_zone" vs)
newtype Limit_Zone = Limit_Zone ConfStatement
instance ToConfStatement Limit_Zone where
    toConfStatement (Limit_Zone c) = c
instance HasContextHttp
 Limit_Zone where

