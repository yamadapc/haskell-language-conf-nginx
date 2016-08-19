-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Stream_Upstream_Module where

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

-- | Defines the address and other parameters of a server. The address can be specified as a domain name or IP address with an obligatory port, or as a UNIX-domain socket path specified after the “unix:” prefix. A domain name that resolves to several IP addresses defines multiple servers at once.
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


-- | Defines the name and size of the shared memory zone that keeps the group’s configuration and run-time state that are shared between worker processes. Several groups may share the same zone. In this case, it is enough to specify the zone size only once.
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


-- | Specifies a load balancing method for a server group where client-server mapping is based on the hashed key value. The key can contain text, variables, and their combinations (1.11.2). Usage example: hash $remote_addr; Note that adding or removing a server from the group may result in remapping most of the keys to different servers. The method is compatible with the Cache::Memcached Perl library.
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


-- | Specifies that a server group should use a load balancing method where a connection is passed to the server with the least number of active connections, taking into account weights of servers. If there are several such servers, they are tried in turn using a weighted round-robin balancing method.
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


-- | Specifies that a group should use a load balancing method where a connection is passed to the server with the least average time and least number of active connections, taking into account weights of servers. If there are several such servers, they are tried in turn using a weighted round-robin balancing method.
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


-- | Enables periodic health checks of the servers in a group.
health_check :: [Text] -> ConfStatement
health_check vs = ConfStatementExpression (Expression "health_check" vs)

-- | Safe version of 'health_check'
health_check_s :: [Text] -> Health_Check
health_check_s vs = Health_Check$ ConfStatementExpression (Expression "health_check" vs)
newtype Health_Check = Health_Check ConfStatement
instance ToConfStatement Health_Check where
    toConfStatement (Health_Check c) = c
instance HasContextServer
 Health_Check where


-- | Overrides the value for health checks.
health_check_timeout :: [Text] -> ConfStatement
health_check_timeout vs = ConfStatementExpression (Expression "health_check_timeout" vs)

-- | Safe version of 'health_check_timeout'
health_check_timeout_s :: [Text] -> Health_Check_Timeout
health_check_timeout_s vs = Health_Check_Timeout$ ConfStatementExpression (Expression "health_check_timeout" vs)
newtype Health_Check_Timeout = Health_Check_Timeout ConfStatement
instance ToConfStatement Health_Check_Timeout where
    toConfStatement (Health_Check_Timeout c) = c
instance HasContextStream
 Health_Check_Timeout where
instance HasContextServer
 Health_Check_Timeout where

-- | Defines the named test set used to verify server responses to health checks.
match :: [Text] -> [ConfStatement] -> ConfStatement
match more ss = ConfStatementBlock (Block ("match":more) ss)
-- | Safe version of 'match'
match_s :: (HasContextMatch f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
match_s more ss = ConfStatementBlock (Block ("match":more) (Prelude.map toConfStatement ss))
