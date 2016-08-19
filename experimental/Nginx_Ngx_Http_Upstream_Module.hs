-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Upstream_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common
-- | Defines a group of servers. Servers can listen on different ports. In addition, servers listening on TCP and UNIX-domain sockets can be mixed.
upstream :: [Text] -> [ConfStatement] -> ConfStatement
upstream more ss = ConfStatementBlock (Block ("upstream":more) ss)
-- | Safe version of 'upstream'
upstream_s :: (HasContextUpstream f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
upstream_s more ss = ConfStatementBlock (Block ("upstream":more) (Prelude.map toConfStatement ss))

-- | Defines the address and other parameters of a server. The address can be specified as a domain name or IP address, with an optional port, or as a UNIX-domain socket path specified after the “unix:” prefix. If a port is not specified, the port 80 is used. A domain name that resolves to several IP addresses defines multiple servers at once.
server :: [Text] -> ConfStatement
server vs = ConfStatementExpression (Expression "server" vs)

-- | Safe version of 'server'
server_s :: [Text] -> Server
server_s vs = Server$ ConfStatementExpression (Expression "server" vs)
newtype Server = Server ConfStatement
instance ToConfStatement Server where
    toConfStatement (Server c) = c
instance HasContextUpstream
 Server where


-- | Defines the name and size of the shared memory zone that keeps the group’s configuration and run-time state that are shared between worker processes. Several groups may share the same zone. In this case, it is enough to specify the size only once.
zone :: [Text] -> ConfStatement
zone vs = ConfStatementExpression (Expression "zone" vs)

-- | Safe version of 'zone'
zone_s :: [Text] -> Zone
zone_s vs = Zone$ ConfStatementExpression (Expression "zone" vs)
newtype Zone = Zone ConfStatement
instance ToConfStatement Zone where
    toConfStatement (Zone c) = c
instance HasContextUpstream
 Zone where


-- | Specifies a file that keeps the state of the dynamically configurable group. The state is currently limited to the list of servers with their parameters. The file is read when parsing the configuration and is updated each time the upstream configuration is changed. Changing the file content directly should be avoided. The directive cannot be used along with the  directive.
state :: [Text] -> ConfStatement
state vs = ConfStatementExpression (Expression "state" vs)

-- | Safe version of 'state'
state_s :: [Text] -> State
state_s vs = State$ ConfStatementExpression (Expression "state" vs)
newtype State = State ConfStatement
instance ToConfStatement State where
    toConfStatement (State c) = c
instance HasContextUpstream
 State where


-- | Specifies a load balancing method for a server group where the client-server mapping is based on the hashed key value. The key can contain text, variables, and their combinations. Note that adding or removing a server from the group may result in remapping most of the keys to different servers. The method is compatible with the Cache::Memcached Perl library.
hash :: [Text] -> ConfStatement
hash vs = ConfStatementExpression (Expression "hash" vs)

-- | Safe version of 'hash'
hash_s :: [Text] -> Hash
hash_s vs = Hash$ ConfStatementExpression (Expression "hash" vs)
newtype Hash = Hash ConfStatement
instance ToConfStatement Hash where
    toConfStatement (Hash c) = c
instance HasContextUpstream
 Hash where


-- | Specifies that a group should use a load balancing method where requests are distributed between servers based on client IP addresses. The first three octets of the client IPv4 address, or the entire IPv6 address, are used as a hashing key. The method ensures that requests from the same client will always be passed to the same server except when this server is unavailable. In the latter case client requests will be passed to another server. Most probably, it will always be the same server as well. IPv6 addresses are supported starting from versions 1.3.2 and 1.2.2.
ip_hash :: [Text] -> ConfStatement
ip_hash vs = ConfStatementExpression (Expression "ip_hash" vs)

-- | Safe version of 'ip_hash'
ip_hash_s :: [Text] -> Ip_Hash
ip_hash_s vs = Ip_Hash$ ConfStatementExpression (Expression "ip_hash" vs)
newtype Ip_Hash = Ip_Hash ConfStatement
instance ToConfStatement Ip_Hash where
    toConfStatement (Ip_Hash c) = c
instance HasContextUpstream
 Ip_Hash where


-- | Activates the cache for connections to upstream servers.
keepalive :: [Text] -> ConfStatement
keepalive vs = ConfStatementExpression (Expression "keepalive" vs)

-- | Safe version of 'keepalive'
keepalive_s :: [Text] -> Keepalive
keepalive_s vs = Keepalive$ ConfStatementExpression (Expression "keepalive" vs)
newtype Keepalive = Keepalive ConfStatement
instance ToConfStatement Keepalive where
    toConfStatement (Keepalive c) = c
instance HasContextUpstream
 Keepalive where


-- | Allows proxying requests with NTLM Authentication. The upstream connection is bound to the client connection once the client sends a request with the Authorization header field value starting with “Negotiate” or “NTLM”. Further client requests will be proxied through the same upstream connection, keeping the authentication context.
ntlm :: [Text] -> ConfStatement
ntlm vs = ConfStatementExpression (Expression "ntlm" vs)

-- | Safe version of 'ntlm'
ntlm_s :: [Text] -> Ntlm
ntlm_s vs = Ntlm$ ConfStatementExpression (Expression "ntlm" vs)
newtype Ntlm = Ntlm ConfStatement
instance ToConfStatement Ntlm where
    toConfStatement (Ntlm c) = c
instance HasContextUpstream
 Ntlm where


-- | Specifies that a group should use a load balancing method where a request is passed to the server with the least number of active connections, taking into account weights of servers. If there are several such servers, they are tried in turn using a weighted round-robin balancing method.
least_conn :: [Text] -> ConfStatement
least_conn vs = ConfStatementExpression (Expression "least_conn" vs)

-- | Safe version of 'least_conn'
least_conn_s :: [Text] -> Least_Conn
least_conn_s vs = Least_Conn$ ConfStatementExpression (Expression "least_conn" vs)
newtype Least_Conn = Least_Conn ConfStatement
instance ToConfStatement Least_Conn where
    toConfStatement (Least_Conn c) = c
instance HasContextUpstream
 Least_Conn where


-- | Specifies that a group should use a load balancing method where a request is passed to the server with the least average response time and least number of active connections, taking into account weights of servers. If there are several such servers, they are tried in turn using a weighted round-robin balancing method.
least_time :: [Text] -> ConfStatement
least_time vs = ConfStatementExpression (Expression "least_time" vs)

-- | Safe version of 'least_time'
least_time_s :: [Text] -> Least_Time
least_time_s vs = Least_Time$ ConfStatementExpression (Expression "least_time" vs)
newtype Least_Time = Least_Time ConfStatement
instance ToConfStatement Least_Time where
    toConfStatement (Least_Time c) = c
instance HasContextUpstream
 Least_Time where


-- | Enables periodic health checks of the servers in a group referenced in the surrounding location.
health_check :: [Text] -> ConfStatement
health_check vs = ConfStatementExpression (Expression "health_check" vs)

-- | Safe version of 'health_check'
health_check_s :: [Text] -> Health_Check
health_check_s vs = Health_Check$ ConfStatementExpression (Expression "health_check" vs)
newtype Health_Check = Health_Check ConfStatement
instance ToConfStatement Health_Check where
    toConfStatement (Health_Check c) = c
instance HasContextLocation
 Health_Check where

-- | Defines the named test set used to verify responses to health check requests.
match :: [Text] -> [ConfStatement] -> ConfStatement
match more ss = ConfStatementBlock (Block ("match":more) ss)
-- | Safe version of 'match'
match_s :: (HasContextMatch f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
match_s more ss = ConfStatementBlock (Block ("match":more) (Prelude.map toConfStatement ss))

-- | If an upstream server cannot be selected immediately while processing a request, and there are the servers in the group that have reached the limit, the request will be placed into the queue. The directive specifies the maximum number of requests that can be in the queue at the same time. If the queue is filled up, or the server to pass the request to cannot be selected within the time period specified in the timeout parameter, the error will be returned to the client.
queue :: [Text] -> ConfStatement
queue vs = ConfStatementExpression (Expression "queue" vs)

-- | Safe version of 'queue'
queue_s :: [Text] -> Queue
queue_s vs = Queue$ ConfStatementExpression (Expression "queue" vs)
newtype Queue = Queue ConfStatement
instance ToConfStatement Queue where
    toConfStatement (Queue c) = c
instance HasContextUpstream
 Queue where


-- | Enables session affinity, which causes requests from the same client to be passed to the same server in a group of servers. Three methods are available: cookie When the cookie method is used, information about the designated server is passed in an HTTP cookie generated by nginx: upstream backend { server backend1.example.com; server backend2.example.com; sticky cookie srv_id expires=1h domain=.example.com path=/; }
sticky :: [Text] -> ConfStatement
sticky vs = ConfStatementExpression (Expression "sticky" vs)

-- | Safe version of 'sticky'
sticky_s :: [Text] -> Sticky
sticky_s vs = Sticky$ ConfStatementExpression (Expression "sticky" vs)
newtype Sticky = Sticky ConfStatement
instance ToConfStatement Sticky where
    toConfStatement (Sticky c) = c
instance HasContextUpstream
 Sticky where


-- | This directive is obsolete since version 1.5.7. An equivalent directive with a new syntax should be used instead: sticky cookie name [expires=time] [domain=domain] [path=path];
sticky_cookie_insert :: [Text] -> ConfStatement
sticky_cookie_insert vs = ConfStatementExpression (Expression "sticky_cookie_insert" vs)

-- | Safe version of 'sticky_cookie_insert'
sticky_cookie_insert_s :: [Text] -> Sticky_Cookie_Insert
sticky_cookie_insert_s vs = Sticky_Cookie_Insert$ ConfStatementExpression (Expression "sticky_cookie_insert" vs)
newtype Sticky_Cookie_Insert = Sticky_Cookie_Insert ConfStatement
instance ToConfStatement Sticky_Cookie_Insert where
    toConfStatement (Sticky_Cookie_Insert c) = c
instance HasContextUpstream
 Sticky_Cookie_Insert where

