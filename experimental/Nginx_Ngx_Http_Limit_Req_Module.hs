-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Limit_Req_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets the shared memory zone and the maximum burst size of requests. If the requests rate exceeds the rate configured for a zone, their processing is delayed such that requests are processed at a defined rate. Excessive requests are delayed until their number exceeds the maximum burst size in which case the request is terminated with an error . By default, the maximum burst size is equal to zero. For example, the directives limit_req_zone $binary_remote_addr zone=one:10m rate=1r/s; server { location /search/ { limit_req zone=one burst=5; } allow not more than 1 request per second at an average, with bursts not exceeding 5 requests.
limit_req :: [Text] -> ConfStatement
limit_req vs = ConfStatementExpression (Expression "limit_req" vs)

-- | Safe version of 'limit_req'
limit_req_s :: [Text] -> Limit_Req
limit_req_s vs = Limit_Req$ ConfStatementExpression (Expression "limit_req" vs)
newtype Limit_Req = Limit_Req ConfStatement
instance ToConfStatement Limit_Req where
    toConfStatement (Limit_Req c) = c
instance HasContextHttp
 Limit_Req where
instance HasContextServer
 Limit_Req where
instance HasContextLocation
 Limit_Req where


-- | Sets the desired logging level for cases when the server refuses to process requests due to rate exceeding, or delays request processing. Logging level for delays is one point less than for refusals; for example, if “limit_req_log_level notice” is specified, delays are logged with the info level.
limit_req_log_level :: [Text] -> ConfStatement
limit_req_log_level vs = ConfStatementExpression (Expression "limit_req_log_level" vs)

-- | Safe version of 'limit_req_log_level'
limit_req_log_level_s :: [Text] -> Limit_Req_Log_Level
limit_req_log_level_s vs = Limit_Req_Log_Level$ ConfStatementExpression (Expression "limit_req_log_level" vs)
newtype Limit_Req_Log_Level = Limit_Req_Log_Level ConfStatement
instance ToConfStatement Limit_Req_Log_Level where
    toConfStatement (Limit_Req_Log_Level c) = c
instance HasContextHttp
 Limit_Req_Log_Level where
instance HasContextServer
 Limit_Req_Log_Level where
instance HasContextLocation
 Limit_Req_Log_Level where


-- | Sets the status code to return in response to rejected requests.
limit_req_status :: [Text] -> ConfStatement
limit_req_status vs = ConfStatementExpression (Expression "limit_req_status" vs)

-- | Safe version of 'limit_req_status'
limit_req_status_s :: [Text] -> Limit_Req_Status
limit_req_status_s vs = Limit_Req_Status$ ConfStatementExpression (Expression "limit_req_status" vs)
newtype Limit_Req_Status = Limit_Req_Status ConfStatement
instance ToConfStatement Limit_Req_Status where
    toConfStatement (Limit_Req_Status c) = c
instance HasContextHttp
 Limit_Req_Status where
instance HasContextServer
 Limit_Req_Status where
instance HasContextLocation
 Limit_Req_Status where


-- | Sets parameters for a shared memory zone that will keep states for various keys. In particular, the state stores the current number of excessive requests. The key can contain text, variables, and their combination. Requests with an empty key value are not accounted. Prior to version 1.7.6, a key could contain exactly one variable. Usage example: limit_req_zone $binary_remote_addr zone=one:10m rate=1r/s;
limit_req_zone :: [Text] -> ConfStatement
limit_req_zone vs = ConfStatementExpression (Expression "limit_req_zone" vs)

-- | Safe version of 'limit_req_zone'
limit_req_zone_s :: [Text] -> Limit_Req_Zone
limit_req_zone_s vs = Limit_Req_Zone$ ConfStatementExpression (Expression "limit_req_zone" vs)
newtype Limit_Req_Zone = Limit_Req_Zone ConfStatement
instance ToConfStatement Limit_Req_Zone where
    toConfStatement (Limit_Req_Zone c) = c
instance HasContextHttp
 Limit_Req_Zone where

