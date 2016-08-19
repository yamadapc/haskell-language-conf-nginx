-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Stream_Limit_Conn_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets the shared memory zone and the maximum allowed number of connections for a given key value. When this limit is exceeded, the server will close the connection. For example, the directives limit_conn_zone $binary_remote_addr zone=addr:10m; server { ... limit_conn addr 1; } allow only one connection per an IP address at a time.
limit_conn :: [Text] -> ConfStatement
limit_conn vs = ConfStatementExpression (Expression "limit_conn" vs)

-- | Safe version of 'limit_conn'
limit_conn_s :: [Text] -> Limit_Conn
limit_conn_s vs = Limit_Conn$ ConfStatementExpression (Expression "limit_conn" vs)
newtype Limit_Conn = Limit_Conn ConfStatement
instance ToConfStatement Limit_Conn where
    toConfStatement (Limit_Conn c) = c
instance HasContextStream
 Limit_Conn where
instance HasContextServer
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
instance HasContextStream
 Limit_Conn_Log_Level where
instance HasContextServer
 Limit_Conn_Log_Level where


-- | Sets parameters for a shared memory zone that will keep states for various keys. In particular, the state includes the current number of connections. The key can contain text, variables, and their combinations (1.11.2). Connections with an empty key value are not accounted. Usage example: limit_conn_zone $binary_remote_addr zone=addr:10m; Here, the key is a client IP address set by the $binary_remote_addr variable. The size of $binary_remote_addr is 4 bytes for IPv4 addresses or 16 bytes for IPv6 addresses. The stored state always occupies 32 or 64 bytes on 32-bit platforms and 64 bytes on 64-bit platforms. One megabyte zone can keep about 32 thousand 32-byte states or about 16 thousand 64-byte states. If the zone storage is exhausted, the server will close the connection.
limit_conn_zone :: [Text] -> ConfStatement
limit_conn_zone vs = ConfStatementExpression (Expression "limit_conn_zone" vs)

-- | Safe version of 'limit_conn_zone'
limit_conn_zone_s :: [Text] -> Limit_Conn_Zone
limit_conn_zone_s vs = Limit_Conn_Zone$ ConfStatementExpression (Expression "limit_conn_zone" vs)
newtype Limit_Conn_Zone = Limit_Conn_Zone ConfStatement
instance ToConfStatement Limit_Conn_Zone where
    toConfStatement (Limit_Conn_Zone c) = c
instance HasContextStream
 Limit_Conn_Zone where

