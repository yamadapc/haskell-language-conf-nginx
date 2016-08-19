-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Headers_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Adds the specified field to a response header provided that the response code equals 200, 201, 204, 206, 301, 302, 303, 304, or 307. A value can contain variables.
add_header :: [Text] -> ConfStatement
add_header vs = ConfStatementExpression (Expression "add_header" vs)

-- | Safe version of 'add_header'
add_header_s :: [Text] -> Add_Header
add_header_s vs = Add_Header$ ConfStatementExpression (Expression "add_header" vs)
newtype Add_Header = Add_Header ConfStatement
instance ToConfStatement Add_Header where
    toConfStatement (Add_Header c) = c
instance HasContextHttp
 Add_Header where
instance HasContextServer
 Add_Header where
instance HasContextLocation
 Add_Header where


-- | Enables or disables adding or modifying the Expires and Cache-Control response header fields provided that the response code equals 200, 201, 204, 206, 301, 302, 303, 304, or 307. A parameter can be a positive or negative time.
expires :: [Text] -> ConfStatement
expires vs = ConfStatementExpression (Expression "expires" vs)

-- | Safe version of 'expires'
expires_s :: [Text] -> Expires
expires_s vs = Expires$ ConfStatementExpression (Expression "expires" vs)
newtype Expires = Expires ConfStatement
instance ToConfStatement Expires where
    toConfStatement (Expires c) = c
instance HasContextHttp
 Expires where
instance HasContextServer
 Expires where
instance HasContextLocation
 Expires where

