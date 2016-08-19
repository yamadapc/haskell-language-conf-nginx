-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Empty_Gif_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Turns on module processing in a surrounding location.
empty_gif :: [Text] -> ConfStatement
empty_gif vs = ConfStatementExpression (Expression "empty_gif" vs)

-- | Safe version of 'empty_gif'
empty_gif_s :: [Text] -> Empty_Gif
empty_gif_s vs = Empty_Gif$ ConfStatementExpression (Expression "empty_gif" vs)
newtype Empty_Gif = Empty_Gif ConfStatement
instance ToConfStatement Empty_Gif where
    toConfStatement (Empty_Gif c) = c
instance HasContextLocation
 Empty_Gif where

