-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Addition_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Adds the text returned as a result of processing a given subrequest before the response body. An empty string ("") as a parameter cancels addition inherited from the previous configuration level.
add_before_body :: [Text] -> ConfStatement
add_before_body vs = ConfStatementExpression (Expression "add_before_body" vs)

-- | Safe version of 'add_before_body'
add_before_body_s :: [Text] -> Add_Before_Body
add_before_body_s vs = Add_Before_Body$ ConfStatementExpression (Expression "add_before_body" vs)
newtype Add_Before_Body = Add_Before_Body ConfStatement
instance ToConfStatement Add_Before_Body where
    toConfStatement (Add_Before_Body c) = c
instance HasContextHttp
 Add_Before_Body where
instance HasContextServer
 Add_Before_Body where
instance HasContextLocation
 Add_Before_Body where


-- | Adds the text returned as a result of processing a given subrequest after the response body. An empty string ("") as a parameter cancels addition inherited from the previous configuration level.
add_after_body :: [Text] -> ConfStatement
add_after_body vs = ConfStatementExpression (Expression "add_after_body" vs)

-- | Safe version of 'add_after_body'
add_after_body_s :: [Text] -> Add_After_Body
add_after_body_s vs = Add_After_Body$ ConfStatementExpression (Expression "add_after_body" vs)
newtype Add_After_Body = Add_After_Body ConfStatement
instance ToConfStatement Add_After_Body where
    toConfStatement (Add_After_Body c) = c
instance HasContextHttp
 Add_After_Body where
instance HasContextServer
 Add_After_Body where
instance HasContextLocation
 Add_After_Body where


-- | Allows adding text in responses with the specified MIME types, in addition to “text/html”. The special value “*” matches any MIME type (0.8.29).
addition_types :: [Text] -> ConfStatement
addition_types vs = ConfStatementExpression (Expression "addition_types" vs)

-- | Safe version of 'addition_types'
addition_types_s :: [Text] -> Addition_Types
addition_types_s vs = Addition_Types$ ConfStatementExpression (Expression "addition_types" vs)
newtype Addition_Types = Addition_Types ConfStatement
instance ToConfStatement Addition_Types where
    toConfStatement (Addition_Types c) = c
instance HasContextHttp
 Addition_Types where
instance HasContextServer
 Addition_Types where
instance HasContextLocation
 Addition_Types where

