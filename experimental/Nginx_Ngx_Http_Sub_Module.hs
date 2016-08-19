-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Sub_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets a string to replace and a replacement string. The string to replace is matched ignoring the case. The string to replace (1.9.4) and replacement string can contain variables. Several sub_filter directives can be specified on one configuration level (1.9.4).
sub_filter :: [Text] -> ConfStatement
sub_filter vs = ConfStatementExpression (Expression "sub_filter" vs)

-- | Safe version of 'sub_filter'
sub_filter_s :: [Text] -> Sub_Filter
sub_filter_s vs = Sub_Filter$ ConfStatementExpression (Expression "sub_filter" vs)
newtype Sub_Filter = Sub_Filter ConfStatement
instance ToConfStatement Sub_Filter where
    toConfStatement (Sub_Filter c) = c
instance HasContextHttp
 Sub_Filter where
instance HasContextServer
 Sub_Filter where
instance HasContextLocation
 Sub_Filter where


-- | Allows preserving the Last-Modified header field from the original response during replacement to facilitate response caching.
sub_filter_last_modified :: [Text] -> ConfStatement
sub_filter_last_modified vs = ConfStatementExpression (Expression "sub_filter_last_modified" vs)

-- | Safe version of 'sub_filter_last_modified'
sub_filter_last_modified_s :: [Text] -> Sub_Filter_Last_Modified
sub_filter_last_modified_s vs = Sub_Filter_Last_Modified$ ConfStatementExpression (Expression "sub_filter_last_modified" vs)
newtype Sub_Filter_Last_Modified = Sub_Filter_Last_Modified ConfStatement
instance ToConfStatement Sub_Filter_Last_Modified where
    toConfStatement (Sub_Filter_Last_Modified c) = c
instance HasContextHttp
 Sub_Filter_Last_Modified where
instance HasContextServer
 Sub_Filter_Last_Modified where
instance HasContextLocation
 Sub_Filter_Last_Modified where


-- | Indicates whether to look for each string to replace once or repeatedly.
sub_filter_once :: [Text] -> ConfStatement
sub_filter_once vs = ConfStatementExpression (Expression "sub_filter_once" vs)

-- | Safe version of 'sub_filter_once'
sub_filter_once_s :: [Text] -> Sub_Filter_Once
sub_filter_once_s vs = Sub_Filter_Once$ ConfStatementExpression (Expression "sub_filter_once" vs)
newtype Sub_Filter_Once = Sub_Filter_Once ConfStatement
instance ToConfStatement Sub_Filter_Once where
    toConfStatement (Sub_Filter_Once c) = c
instance HasContextHttp
 Sub_Filter_Once where
instance HasContextServer
 Sub_Filter_Once where
instance HasContextLocation
 Sub_Filter_Once where


-- | Enables string replacement in responses with the specified MIME types in addition to “text/html”. The special value “*” matches any MIME type (0.8.29).
sub_filter_types :: [Text] -> ConfStatement
sub_filter_types vs = ConfStatementExpression (Expression "sub_filter_types" vs)

-- | Safe version of 'sub_filter_types'
sub_filter_types_s :: [Text] -> Sub_Filter_Types
sub_filter_types_s vs = Sub_Filter_Types$ ConfStatementExpression (Expression "sub_filter_types" vs)
newtype Sub_Filter_Types = Sub_Filter_Types ConfStatement
instance ToConfStatement Sub_Filter_Types where
    toConfStatement (Sub_Filter_Types c) = c
instance HasContextHttp
 Sub_Filter_Types where
instance HasContextServer
 Sub_Filter_Types where
instance HasContextLocation
 Sub_Filter_Types where

