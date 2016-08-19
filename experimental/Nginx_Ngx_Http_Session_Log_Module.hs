-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Session_Log_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Specifies the output format of a log. The value of the $body_bytes_sent variable is aggregated across all requests in a session. The values of all other variables available for logging correspond to the first request in a session.
session_log_format :: [Text] -> ConfStatement
session_log_format vs = ConfStatementExpression (Expression "session_log_format" vs)

-- | Safe version of 'session_log_format'
session_log_format_s :: [Text] -> Session_Log_Format
session_log_format_s vs = Session_Log_Format$ ConfStatementExpression (Expression "session_log_format" vs)
newtype Session_Log_Format = Session_Log_Format ConfStatement
instance ToConfStatement Session_Log_Format where
    toConfStatement (Session_Log_Format c) = c
instance HasContextHttp
 Session_Log_Format where


-- | Sets the path to a log file and configures the shared memory zone that is used to store currently active sessions.
session_log_zone :: [Text] -> ConfStatement
session_log_zone vs = ConfStatementExpression (Expression "session_log_zone" vs)

-- | Safe version of 'session_log_zone'
session_log_zone_s :: [Text] -> Session_Log_Zone
session_log_zone_s vs = Session_Log_Zone$ ConfStatementExpression (Expression "session_log_zone" vs)
newtype Session_Log_Zone = Session_Log_Zone ConfStatement
instance ToConfStatement Session_Log_Zone where
    toConfStatement (Session_Log_Zone c) = c
instance HasContextHttp
 Session_Log_Zone where


-- | Enables the use of the specified session log. The special value off cancels all session_log directives inherited from the previous configuration level.
session_log :: [Text] -> ConfStatement
session_log vs = ConfStatementExpression (Expression "session_log" vs)

-- | Safe version of 'session_log'
session_log_s :: [Text] -> Session_Log
session_log_s vs = Session_Log$ ConfStatementExpression (Expression "session_log" vs)
newtype Session_Log = Session_Log ConfStatement
instance ToConfStatement Session_Log where
    toConfStatement (Session_Log c) = c
instance HasContextHttp
 Session_Log where
instance HasContextServer
 Session_Log where
instance HasContextLocation
 Session_Log where

