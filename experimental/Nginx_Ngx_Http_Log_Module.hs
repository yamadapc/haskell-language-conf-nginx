-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Log_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets the path, format, and configuration for a buffered log write. Several logs can be specified on the same level. Logging to syslog can be configured by specifying the “syslog:” prefix in the first parameter. The special value off cancels all access_log directives on the current level. If the format is not specified then the predefined “combined” format is used.
access_log :: [Text] -> ConfStatement
access_log vs = ConfStatementExpression (Expression "access_log" vs)

-- | Safe version of 'access_log'
access_log_s :: [Text] -> Access_Log
access_log_s vs = Access_Log$ ConfStatementExpression (Expression "access_log" vs)
newtype Access_Log = Access_Log ConfStatement
instance ToConfStatement Access_Log where
    toConfStatement (Access_Log c) = c
instance HasContextHttp
 Access_Log where
instance HasContextServer
 Access_Log where
instance HasContextLocation
 Access_Log where
instance HasContextLimit_Except
 Access_Log where


-- | Specifies log format.
log_format :: [Text] -> ConfStatement
log_format vs = ConfStatementExpression (Expression "log_format" vs)

-- | Safe version of 'log_format'
log_format_s :: [Text] -> Log_Format
log_format_s vs = Log_Format$ ConfStatementExpression (Expression "log_format" vs)
newtype Log_Format = Log_Format ConfStatement
instance ToConfStatement Log_Format where
    toConfStatement (Log_Format c) = c
instance HasContextHttp
 Log_Format where


-- | Defines a cache that stores the file descriptors of frequently used logs whose names contain variables. The directive has the following parameters: max sets the maximum number of descriptors in a cache; if the cache becomes full the least recently used (LRU) descriptors are closed inactive sets the time after which the cached descriptor is closed if there were no access during this time; by default, 10 seconds min_uses sets the minimum number of file uses during the time defined by the inactive parameter to let the descriptor stay open in a cache; by default, 1 valid sets the time after which it should be checked that the file still exists with the same name; by default, 60 seconds off disables caching
open_log_file_cache :: [Text] -> ConfStatement
open_log_file_cache vs = ConfStatementExpression (Expression "open_log_file_cache" vs)

-- | Safe version of 'open_log_file_cache'
open_log_file_cache_s :: [Text] -> Open_Log_File_Cache
open_log_file_cache_s vs = Open_Log_File_Cache$ ConfStatementExpression (Expression "open_log_file_cache" vs)
newtype Open_Log_File_Cache = Open_Log_File_Cache ConfStatement
instance ToConfStatement Open_Log_File_Cache where
    toConfStatement (Open_Log_File_Cache c) = c
instance HasContextHttp
 Open_Log_File_Cache where
instance HasContextServer
 Open_Log_File_Cache where
instance HasContextLocation
 Open_Log_File_Cache where

