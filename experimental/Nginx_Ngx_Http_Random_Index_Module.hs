-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Random_Index_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Enables or disables module processing in a surrounding location.
random_index :: [Text] -> ConfStatement
random_index vs = ConfStatementExpression (Expression "random_index" vs)

-- | Safe version of 'random_index'
random_index_s :: [Text] -> Random_Index
random_index_s vs = Random_Index$ ConfStatementExpression (Expression "random_index" vs)
newtype Random_Index = Random_Index ConfStatement
instance ToConfStatement Random_Index where
    toConfStatement (Random_Index c) = c
instance HasContextLocation
 Random_Index where

