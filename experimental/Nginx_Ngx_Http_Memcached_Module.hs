-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Memcached_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Makes outgoing connections to a memcached server originate from the specified local IP address with an optional port (1.11.2). Parameter value can contain variables (1.3.12). The special value off (1.3.12) cancels the effect of the memcached_bind directive inherited from the previous configuration level, which allows the system to auto-assign the local IP address and port.
memcached_bind :: [Text] -> ConfStatement
memcached_bind vs = ConfStatementExpression (Expression "memcached_bind" vs)

-- | Safe version of 'memcached_bind'
memcached_bind_s :: [Text] -> Memcached_Bind
memcached_bind_s vs = Memcached_Bind$ ConfStatementExpression (Expression "memcached_bind" vs)
newtype Memcached_Bind = Memcached_Bind ConfStatement
instance ToConfStatement Memcached_Bind where
    toConfStatement (Memcached_Bind c) = c
instance HasContextHttp
 Memcached_Bind where
instance HasContextServer
 Memcached_Bind where
instance HasContextLocation
 Memcached_Bind where


-- | Sets the size of the buffer used for reading the response received from the memcached server. The response is passed to the client synchronously, as soon as it is received.
memcached_buffer_size :: [Text] -> ConfStatement
memcached_buffer_size vs = ConfStatementExpression (Expression "memcached_buffer_size" vs)

-- | Safe version of 'memcached_buffer_size'
memcached_buffer_size_s :: [Text] -> Memcached_Buffer_Size
memcached_buffer_size_s vs = Memcached_Buffer_Size$ ConfStatementExpression (Expression "memcached_buffer_size" vs)
newtype Memcached_Buffer_Size = Memcached_Buffer_Size ConfStatement
instance ToConfStatement Memcached_Buffer_Size where
    toConfStatement (Memcached_Buffer_Size c) = c
instance HasContextHttp
 Memcached_Buffer_Size where
instance HasContextServer
 Memcached_Buffer_Size where
instance HasContextLocation
 Memcached_Buffer_Size where


-- | Defines a timeout for establishing a connection with a memcached server. It should be noted that this timeout cannot usually exceed 75 seconds.
memcached_connect_timeout :: [Text] -> ConfStatement
memcached_connect_timeout vs = ConfStatementExpression (Expression "memcached_connect_timeout" vs)

-- | Safe version of 'memcached_connect_timeout'
memcached_connect_timeout_s :: [Text] -> Memcached_Connect_Timeout
memcached_connect_timeout_s vs = Memcached_Connect_Timeout$ ConfStatementExpression (Expression "memcached_connect_timeout" vs)
newtype Memcached_Connect_Timeout = Memcached_Connect_Timeout ConfStatement
instance ToConfStatement Memcached_Connect_Timeout where
    toConfStatement (Memcached_Connect_Timeout c) = c
instance HasContextHttp
 Memcached_Connect_Timeout where
instance HasContextServer
 Memcached_Connect_Timeout where
instance HasContextLocation
 Memcached_Connect_Timeout where


-- | Enables byte-range support for both cached and uncached responses from the memcached server regardless of the Accept-Ranges field in these responses.
memcached_force_ranges :: [Text] -> ConfStatement
memcached_force_ranges vs = ConfStatementExpression (Expression "memcached_force_ranges" vs)

-- | Safe version of 'memcached_force_ranges'
memcached_force_ranges_s :: [Text] -> Memcached_Force_Ranges
memcached_force_ranges_s vs = Memcached_Force_Ranges$ ConfStatementExpression (Expression "memcached_force_ranges" vs)
newtype Memcached_Force_Ranges = Memcached_Force_Ranges ConfStatement
instance ToConfStatement Memcached_Force_Ranges where
    toConfStatement (Memcached_Force_Ranges c) = c
instance HasContextHttp
 Memcached_Force_Ranges where
instance HasContextServer
 Memcached_Force_Ranges where
instance HasContextLocation
 Memcached_Force_Ranges where


-- | Enables the test for the flag presence in the memcached server response and sets the “Content-Encoding” response header field to “gzip” if the flag is set.
memcached_gzip_flag :: [Text] -> ConfStatement
memcached_gzip_flag vs = ConfStatementExpression (Expression "memcached_gzip_flag" vs)

-- | Safe version of 'memcached_gzip_flag'
memcached_gzip_flag_s :: [Text] -> Memcached_Gzip_Flag
memcached_gzip_flag_s vs = Memcached_Gzip_Flag$ ConfStatementExpression (Expression "memcached_gzip_flag" vs)
newtype Memcached_Gzip_Flag = Memcached_Gzip_Flag ConfStatement
instance ToConfStatement Memcached_Gzip_Flag where
    toConfStatement (Memcached_Gzip_Flag c) = c
instance HasContextHttp
 Memcached_Gzip_Flag where
instance HasContextServer
 Memcached_Gzip_Flag where
instance HasContextLocation
 Memcached_Gzip_Flag where


-- | Specifies in which cases a request should be passed to the next server: error an error occurred while establishing a connection with the server, passing a request to it, or reading the response header; timeout a timeout has occurred while establishing a connection with the server, passing a request to it, or reading the response header; invalid_response a server returned an empty or invalid response; not_found a response was not found on the server; off disables passing a request to the next server.
memcached_next_upstream :: [Text] -> ConfStatement
memcached_next_upstream vs = ConfStatementExpression (Expression "memcached_next_upstream" vs)

-- | Safe version of 'memcached_next_upstream'
memcached_next_upstream_s :: [Text] -> Memcached_Next_Upstream
memcached_next_upstream_s vs = Memcached_Next_Upstream$ ConfStatementExpression (Expression "memcached_next_upstream" vs)
newtype Memcached_Next_Upstream = Memcached_Next_Upstream ConfStatement
instance ToConfStatement Memcached_Next_Upstream where
    toConfStatement (Memcached_Next_Upstream c) = c
instance HasContextHttp
 Memcached_Next_Upstream where
instance HasContextServer
 Memcached_Next_Upstream where
instance HasContextLocation
 Memcached_Next_Upstream where


-- | Limits the time during which a request can be passed to the next server. The 0 value turns off this limitation.
memcached_next_upstream_timeout :: [Text] -> ConfStatement
memcached_next_upstream_timeout vs = ConfStatementExpression (Expression "memcached_next_upstream_timeout" vs)

-- | Safe version of 'memcached_next_upstream_timeout'
memcached_next_upstream_timeout_s :: [Text] -> Memcached_Next_Upstream_Timeout
memcached_next_upstream_timeout_s vs = Memcached_Next_Upstream_Timeout$ ConfStatementExpression (Expression "memcached_next_upstream_timeout" vs)
newtype Memcached_Next_Upstream_Timeout = Memcached_Next_Upstream_Timeout ConfStatement
instance ToConfStatement Memcached_Next_Upstream_Timeout where
    toConfStatement (Memcached_Next_Upstream_Timeout c) = c
instance HasContextHttp
 Memcached_Next_Upstream_Timeout where
instance HasContextServer
 Memcached_Next_Upstream_Timeout where
instance HasContextLocation
 Memcached_Next_Upstream_Timeout where


-- | Limits the number of possible tries for passing a request to the next server. The 0 value turns off this limitation.
memcached_next_upstream_tries :: [Text] -> ConfStatement
memcached_next_upstream_tries vs = ConfStatementExpression (Expression "memcached_next_upstream_tries" vs)

-- | Safe version of 'memcached_next_upstream_tries'
memcached_next_upstream_tries_s :: [Text] -> Memcached_Next_Upstream_Tries
memcached_next_upstream_tries_s vs = Memcached_Next_Upstream_Tries$ ConfStatementExpression (Expression "memcached_next_upstream_tries" vs)
newtype Memcached_Next_Upstream_Tries = Memcached_Next_Upstream_Tries ConfStatement
instance ToConfStatement Memcached_Next_Upstream_Tries where
    toConfStatement (Memcached_Next_Upstream_Tries c) = c
instance HasContextHttp
 Memcached_Next_Upstream_Tries where
instance HasContextServer
 Memcached_Next_Upstream_Tries where
instance HasContextLocation
 Memcached_Next_Upstream_Tries where


-- | Sets the memcached server address. The address can be specified as a domain name or IP address, and a port: memcached_pass localhost:11211; or as a UNIX-domain socket path: memcached_pass unix:/tmp/memcached.socket;
memcached_pass :: [Text] -> ConfStatement
memcached_pass vs = ConfStatementExpression (Expression "memcached_pass" vs)

-- | Safe version of 'memcached_pass'
memcached_pass_s :: [Text] -> Memcached_Pass
memcached_pass_s vs = Memcached_Pass$ ConfStatementExpression (Expression "memcached_pass" vs)
newtype Memcached_Pass = Memcached_Pass ConfStatement
instance ToConfStatement Memcached_Pass where
    toConfStatement (Memcached_Pass c) = c
instance HasContextLocation
 Memcached_Pass where


-- | Defines a timeout for reading a response from the memcached server. The timeout is set only between two successive read operations, not for the transmission of the whole response. If the memcached server does not transmit anything within this time, the connection is closed.
memcached_read_timeout :: [Text] -> ConfStatement
memcached_read_timeout vs = ConfStatementExpression (Expression "memcached_read_timeout" vs)

-- | Safe version of 'memcached_read_timeout'
memcached_read_timeout_s :: [Text] -> Memcached_Read_Timeout
memcached_read_timeout_s vs = Memcached_Read_Timeout$ ConfStatementExpression (Expression "memcached_read_timeout" vs)
newtype Memcached_Read_Timeout = Memcached_Read_Timeout ConfStatement
instance ToConfStatement Memcached_Read_Timeout where
    toConfStatement (Memcached_Read_Timeout c) = c
instance HasContextHttp
 Memcached_Read_Timeout where
instance HasContextServer
 Memcached_Read_Timeout where
instance HasContextLocation
 Memcached_Read_Timeout where


-- | Sets a timeout for transmitting a request to the memcached server. The timeout is set only between two successive write operations, not for the transmission of the whole request. If the memcached server does not receive anything within this time, the connection is closed.
memcached_send_timeout :: [Text] -> ConfStatement
memcached_send_timeout vs = ConfStatementExpression (Expression "memcached_send_timeout" vs)

-- | Safe version of 'memcached_send_timeout'
memcached_send_timeout_s :: [Text] -> Memcached_Send_Timeout
memcached_send_timeout_s vs = Memcached_Send_Timeout$ ConfStatementExpression (Expression "memcached_send_timeout" vs)
newtype Memcached_Send_Timeout = Memcached_Send_Timeout ConfStatement
instance ToConfStatement Memcached_Send_Timeout where
    toConfStatement (Memcached_Send_Timeout c) = c
instance HasContextHttp
 Memcached_Send_Timeout where
instance HasContextServer
 Memcached_Send_Timeout where
instance HasContextLocation
 Memcached_Send_Timeout where

