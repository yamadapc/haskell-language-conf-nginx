-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Stream_Core_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets the address and port for the socket on which the server will accept connections. It is possible to specify just the port. The address can also be a hostname, for example: listen 127.0.0.1:12345; listen *:12345; listen 12345;     # same as *:12345 listen localhost:12345; IPv6 addresses are specified in square brackets: listen [::1]:12345; listen [::]:12345; UNIX-domain sockets are specified with the “unix:” prefix: listen unix:/var/run/nginx.sock;
listen :: [Text] -> ConfStatement
listen vs = ConfStatementExpression (Expression "listen" vs)

-- | Safe version of 'listen'
listen_s :: [Text] -> Listen
listen_s vs = Listen$ ConfStatementExpression (Expression "listen" vs)
newtype Listen = Listen ConfStatement
instance ToConfStatement Listen where
    toConfStatement (Listen c) = c
instance HasContextServer
 Listen where


-- | Configures name servers used to resolve names of upstream servers into addresses, for example: resolver 127.0.0.1 [::1]:5353; An address can be specified as a domain name or IP address, and an optional port. If port is not specified, the port 53 is used. Name servers are queried in a round-robin fashion.
resolver :: [Text] -> ConfStatement
resolver vs = ConfStatementExpression (Expression "resolver" vs)

-- | Safe version of 'resolver'
resolver_s :: [Text] -> Resolver
resolver_s vs = Resolver$ ConfStatementExpression (Expression "resolver" vs)
newtype Resolver = Resolver ConfStatement
instance ToConfStatement Resolver where
    toConfStatement (Resolver c) = c
instance HasContextStream
 Resolver where
instance HasContextServer
 Resolver where


-- | Sets a timeout for name resolution, for example: resolver_timeout 5s; Before version 1.11.3, this directive was available as part of our commercial subscription.
resolver_timeout :: [Text] -> ConfStatement
resolver_timeout vs = ConfStatementExpression (Expression "resolver_timeout" vs)

-- | Safe version of 'resolver_timeout'
resolver_timeout_s :: [Text] -> Resolver_Timeout
resolver_timeout_s vs = Resolver_Timeout$ ConfStatementExpression (Expression "resolver_timeout" vs)
newtype Resolver_Timeout = Resolver_Timeout ConfStatement
instance ToConfStatement Resolver_Timeout where
    toConfStatement (Resolver_Timeout c) = c
instance HasContextStream
 Resolver_Timeout where
instance HasContextServer
 Resolver_Timeout where

-- | Sets the configuration for a server.
server :: [Text] -> [ConfStatement] -> ConfStatement
server more ss = ConfStatementBlock (Block ("server":more) ss)
-- | Safe version of 'server'
server_s :: (HasContextServer f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
server_s more ss = ConfStatementBlock (Block ("server":more) (Prelude.map toConfStatement ss))
-- | Provides the configuration file context in which the stream server directives are specified.
stream :: [Text] -> [ConfStatement] -> ConfStatement
stream more ss = ConfStatementBlock (Block ("stream":more) ss)
-- | Safe version of 'stream'
stream_s :: (HasContextStream f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
stream_s more ss = ConfStatementBlock (Block ("stream":more) (Prelude.map toConfStatement ss))

-- | Enables or disables the use of the TCP_NODELAY option. The option is enabled for both client and proxied server connections.
tcp_nodelay :: [Text] -> ConfStatement
tcp_nodelay vs = ConfStatementExpression (Expression "tcp_nodelay" vs)

-- | Safe version of 'tcp_nodelay'
tcp_nodelay_s :: [Text] -> Tcp_Nodelay
tcp_nodelay_s vs = Tcp_Nodelay$ ConfStatementExpression (Expression "tcp_nodelay" vs)
newtype Tcp_Nodelay = Tcp_Nodelay ConfStatement
instance ToConfStatement Tcp_Nodelay where
    toConfStatement (Tcp_Nodelay c) = c
instance HasContextStream
 Tcp_Nodelay where
instance HasContextServer
 Tcp_Nodelay where


-- | Sets the bucket size for the variables hash table. The details of setting up hash tables are provided in a separate document.
variables_hash_bucket_size :: [Text] -> ConfStatement
variables_hash_bucket_size vs = ConfStatementExpression (Expression "variables_hash_bucket_size" vs)

-- | Safe version of 'variables_hash_bucket_size'
variables_hash_bucket_size_s :: [Text] -> Variables_Hash_Bucket_Size
variables_hash_bucket_size_s vs = Variables_Hash_Bucket_Size$ ConfStatementExpression (Expression "variables_hash_bucket_size" vs)
newtype Variables_Hash_Bucket_Size = Variables_Hash_Bucket_Size ConfStatement
instance ToConfStatement Variables_Hash_Bucket_Size where
    toConfStatement (Variables_Hash_Bucket_Size c) = c
instance HasContextStream
 Variables_Hash_Bucket_Size where


-- | Sets the maximum size of the variables hash table. The details of setting up hash tables are provided in a separate document.
variables_hash_max_size :: [Text] -> ConfStatement
variables_hash_max_size vs = ConfStatementExpression (Expression "variables_hash_max_size" vs)

-- | Safe version of 'variables_hash_max_size'
variables_hash_max_size_s :: [Text] -> Variables_Hash_Max_Size
variables_hash_max_size_s vs = Variables_Hash_Max_Size$ ConfStatementExpression (Expression "variables_hash_max_size" vs)
newtype Variables_Hash_Max_Size = Variables_Hash_Max_Size ConfStatement
instance ToConfStatement Variables_Hash_Max_Size where
    toConfStatement (Variables_Hash_Max_Size c) = c
instance HasContextStream
 Variables_Hash_Max_Size where

