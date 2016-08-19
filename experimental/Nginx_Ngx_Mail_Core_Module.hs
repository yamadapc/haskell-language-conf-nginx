-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Mail_Core_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets the address and port for the socket on which the server will accept requests. It is possible to specify just the port. The address can also be a hostname, for example: listen 127.0.0.1:110; listen *:110; listen 110;     # same as *:110 listen localhost:110; IPv6 addresses (0.7.58) are specified in square brackets: listen [::1]:110; listen [::]:110; UNIX-domain sockets (1.3.5) are specified with the “unix:” prefix: listen unix:/var/run/nginx.sock;
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

-- | Provides the configuration file context in which the mail server directives are specified.
mail :: [Text] -> [ConfStatement] -> ConfStatement
mail more ss = ConfStatementBlock (Block ("mail":more) ss)
-- | Safe version of 'mail'
mail_s :: (HasContextMail f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
mail_s more ss = ConfStatementBlock (Block ("mail":more) (Prelude.map toConfStatement ss))

-- | Sets the protocol for a proxied server. Supported protocols are IMAP, POP3, and SMTP.
protocol :: [Text] -> ConfStatement
protocol vs = ConfStatementExpression (Expression "protocol" vs)

-- | Safe version of 'protocol'
protocol_s :: [Text] -> Protocol
protocol_s vs = Protocol$ ConfStatementExpression (Expression "protocol" vs)
newtype Protocol = Protocol ConfStatement
instance ToConfStatement Protocol where
    toConfStatement (Protocol c) = c
instance HasContextServer
 Protocol where


-- | Configures name servers used to find the client’s hostname to pass it to the authentication server, and in the XCLIENT command when proxying SMTP. For example: resolver 127.0.0.1 [::1]:5353; An address can be specified as a domain name or IP address, and an optional port (1.3.1, 1.2.2). If port is not specified, the port 53 is used. Name servers are queried in a round-robin fashion. Before version 1.1.7, only a single name server could be configured. Specifying name servers using IPv6 addresses is supported starting from versions 1.3.1 and 1.2.2. By default, nginx caches answers using the TTL value of a response. An optional valid parameter allows overriding it: resolver 127.0.0.1 [::1]:5353 valid=30s; Before version 1.1.9, tuning of caching time was not possible, and nginx always cached answers for the duration of 5 minutes.
resolver :: [Text] -> ConfStatement
resolver vs = ConfStatementExpression (Expression "resolver" vs)

-- | Safe version of 'resolver'
resolver_s :: [Text] -> Resolver
resolver_s vs = Resolver$ ConfStatementExpression (Expression "resolver" vs)
newtype Resolver = Resolver ConfStatement
instance ToConfStatement Resolver where
    toConfStatement (Resolver c) = c
instance HasContextMail
 Resolver where
instance HasContextServer
 Resolver where


-- | Sets a timeout for DNS operations, for example: resolver_timeout 5s;
resolver_timeout :: [Text] -> ConfStatement
resolver_timeout vs = ConfStatementExpression (Expression "resolver_timeout" vs)

-- | Safe version of 'resolver_timeout'
resolver_timeout_s :: [Text] -> Resolver_Timeout
resolver_timeout_s vs = Resolver_Timeout$ ConfStatementExpression (Expression "resolver_timeout" vs)
newtype Resolver_Timeout = Resolver_Timeout ConfStatement
instance ToConfStatement Resolver_Timeout where
    toConfStatement (Resolver_Timeout c) = c
instance HasContextMail
 Resolver_Timeout where
instance HasContextServer
 Resolver_Timeout where

-- | Sets the configuration for a server.
server :: [Text] -> [ConfStatement] -> ConfStatement
server more ss = ConfStatementBlock (Block ("server":more) ss)
-- | Safe version of 'server'
server_s :: (HasContextServer f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
server_s more ss = ConfStatementBlock (Block ("server":more) (Prelude.map toConfStatement ss))

-- | Sets the server name that is used: in the initial POP3/SMTP server greeting; in the salt during the SASL CRAM-MD5 authentication; in the EHLO command when connecting to the SMTP backend, if the passing of the XCLIENT command is enabled.
server_name :: [Text] -> ConfStatement
server_name vs = ConfStatementExpression (Expression "server_name" vs)

-- | Safe version of 'server_name'
server_name_s :: [Text] -> Server_Name
server_name_s vs = Server_Name$ ConfStatementExpression (Expression "server_name" vs)
newtype Server_Name = Server_Name ConfStatement
instance ToConfStatement Server_Name where
    toConfStatement (Server_Name c) = c
instance HasContextMail
 Server_Name where
instance HasContextServer
 Server_Name where


-- | Sets the timeout that is used before proxying to the backend starts.
timeout :: [Text] -> ConfStatement
timeout vs = ConfStatementExpression (Expression "timeout" vs)

-- | Safe version of 'timeout'
timeout_s :: [Text] -> Timeout
timeout_s vs = Timeout$ ConfStatementExpression (Expression "timeout" vs)
newtype Timeout = Timeout ConfStatement
instance ToConfStatement Timeout where
    toConfStatement (Timeout c) = c
instance HasContextMail
 Timeout where
instance HasContextServer
 Timeout where

