-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_F4F_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Turns on module processing in the surrounding location.
f4f :: [Text] -> ConfStatement
f4f vs = ConfStatementExpression (Expression "f4f" vs)

-- | Safe version of 'f4f'
f4f_s :: [Text] -> F4F
f4f_s vs = F4F$ ConfStatementExpression (Expression "f4f" vs)
newtype F4F = F4F ConfStatement
instance ToConfStatement F4F where
    toConfStatement (F4F c) = c
instance HasContextLocation
 F4F where


-- | Sets the size of the buffer used for reading the .f4x index file.
f4f_buffer_size :: [Text] -> ConfStatement
f4f_buffer_size vs = ConfStatementExpression (Expression "f4f_buffer_size" vs)

-- | Safe version of 'f4f_buffer_size'
f4f_buffer_size_s :: [Text] -> F4F_Buffer_Size
f4f_buffer_size_s vs = F4F_Buffer_Size$ ConfStatementExpression (Expression "f4f_buffer_size" vs)
newtype F4F_Buffer_Size = F4F_Buffer_Size ConfStatement
instance ToConfStatement F4F_Buffer_Size where
    toConfStatement (F4F_Buffer_Size c) = c
instance HasContextHttp
 F4F_Buffer_Size where
instance HasContextServer
 F4F_Buffer_Size where
instance HasContextLocation
 F4F_Buffer_Size where

