-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Autoindex_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Enables or disables the directory listing output.
autoindex :: [Text] -> ConfStatement
autoindex vs = ConfStatementExpression (Expression "autoindex" vs)

-- | Safe version of 'autoindex'
autoindex_s :: [Text] -> Autoindex
autoindex_s vs = Autoindex$ ConfStatementExpression (Expression "autoindex" vs)
newtype Autoindex = Autoindex ConfStatement
instance ToConfStatement Autoindex where
    toConfStatement (Autoindex c) = c
instance HasContextHttp
 Autoindex where
instance HasContextServer
 Autoindex where
instance HasContextLocation
 Autoindex where


-- | For the HTML format, specifies whether exact file sizes should be output in the directory listing, or rather rounded to kilobytes, megabytes, and gigabytes.
autoindex_exact_size :: [Text] -> ConfStatement
autoindex_exact_size vs = ConfStatementExpression (Expression "autoindex_exact_size" vs)

-- | Safe version of 'autoindex_exact_size'
autoindex_exact_size_s :: [Text] -> Autoindex_Exact_Size
autoindex_exact_size_s vs = Autoindex_Exact_Size$ ConfStatementExpression (Expression "autoindex_exact_size" vs)
newtype Autoindex_Exact_Size = Autoindex_Exact_Size ConfStatement
instance ToConfStatement Autoindex_Exact_Size where
    toConfStatement (Autoindex_Exact_Size c) = c
instance HasContextHttp
 Autoindex_Exact_Size where
instance HasContextServer
 Autoindex_Exact_Size where
instance HasContextLocation
 Autoindex_Exact_Size where


-- | Sets the format of a directory listing.
autoindex_format :: [Text] -> ConfStatement
autoindex_format vs = ConfStatementExpression (Expression "autoindex_format" vs)

-- | Safe version of 'autoindex_format'
autoindex_format_s :: [Text] -> Autoindex_Format
autoindex_format_s vs = Autoindex_Format$ ConfStatementExpression (Expression "autoindex_format" vs)
newtype Autoindex_Format = Autoindex_Format ConfStatement
instance ToConfStatement Autoindex_Format where
    toConfStatement (Autoindex_Format c) = c
instance HasContextHttp
 Autoindex_Format where
instance HasContextServer
 Autoindex_Format where
instance HasContextLocation
 Autoindex_Format where


-- | For the HTML format, specifies whether times in the directory listing should be output in the local time zone or UTC.
autoindex_localtime :: [Text] -> ConfStatement
autoindex_localtime vs = ConfStatementExpression (Expression "autoindex_localtime" vs)

-- | Safe version of 'autoindex_localtime'
autoindex_localtime_s :: [Text] -> Autoindex_Localtime
autoindex_localtime_s vs = Autoindex_Localtime$ ConfStatementExpression (Expression "autoindex_localtime" vs)
newtype Autoindex_Localtime = Autoindex_Localtime ConfStatement
instance ToConfStatement Autoindex_Localtime where
    toConfStatement (Autoindex_Localtime c) = c
instance HasContextHttp
 Autoindex_Localtime where
instance HasContextServer
 Autoindex_Localtime where
instance HasContextLocation
 Autoindex_Localtime where

