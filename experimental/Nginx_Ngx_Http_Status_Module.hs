-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Status_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | The status information will be accessible from the surrounding location. Access to this location should be limited.
status :: [Text] -> ConfStatement
status vs = ConfStatementExpression (Expression "status" vs)

-- | Safe version of 'status'
status_s :: [Text] -> Status
status_s vs = Status$ ConfStatementExpression (Expression "status" vs)
newtype Status = Status ConfStatement
instance ToConfStatement Status where
    toConfStatement (Status c) = c
instance HasContextLocation
 Status where


-- | By default, status information is output in the JSON format.
status_format :: [Text] -> ConfStatement
status_format vs = ConfStatementExpression (Expression "status_format" vs)

-- | Safe version of 'status_format'
status_format_s :: [Text] -> Status_Format
status_format_s vs = Status_Format$ ConfStatementExpression (Expression "status_format" vs)
newtype Status_Format = Status_Format ConfStatement
instance ToConfStatement Status_Format where
    toConfStatement (Status_Format c) = c
instance HasContextHttp
 Status_Format where
instance HasContextServer
 Status_Format where
instance HasContextLocation
 Status_Format where


-- | Enables collection of virtual http or stream (1.7.11) server status information in the specified zone. Several servers may share the same zone.
status_zone :: [Text] -> ConfStatement
status_zone vs = ConfStatementExpression (Expression "status_zone" vs)

-- | Safe version of 'status_zone'
status_zone_s :: [Text] -> Status_Zone
status_zone_s vs = Status_Zone$ ConfStatementExpression (Expression "status_zone" vs)
newtype Status_Zone = Status_Zone ConfStatement
instance ToConfStatement Status_Zone where
    toConfStatement (Status_Zone c) = c
instance HasContextServer
 Status_Zone where

