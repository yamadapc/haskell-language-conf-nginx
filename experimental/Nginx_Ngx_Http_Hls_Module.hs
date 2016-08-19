-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Hls_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Turns on HLS streaming in the surrounding location.
hls :: [Text] -> ConfStatement
hls vs = ConfStatementExpression (Expression "hls" vs)

-- | Safe version of 'hls'
hls_s :: [Text] -> Hls
hls_s vs = Hls$ ConfStatementExpression (Expression "hls" vs)
newtype Hls = Hls ConfStatement
instance ToConfStatement Hls where
    toConfStatement (Hls c) = c
instance HasContextLocation
 Hls where


-- | Sets the maximum number and size of buffers that are used for reading and writing data frames.
hls_buffers :: [Text] -> ConfStatement
hls_buffers vs = ConfStatementExpression (Expression "hls_buffers" vs)

-- | Safe version of 'hls_buffers'
hls_buffers_s :: [Text] -> Hls_Buffers
hls_buffers_s vs = Hls_Buffers$ ConfStatementExpression (Expression "hls_buffers" vs)
newtype Hls_Buffers = Hls_Buffers ConfStatement
instance ToConfStatement Hls_Buffers where
    toConfStatement (Hls_Buffers c) = c
instance HasContextHttp
 Hls_Buffers where
instance HasContextServer
 Hls_Buffers where
instance HasContextLocation
 Hls_Buffers where


-- | Adds arguments from a playlist request to URIs of fragments. This may be useful for performing client authorization at the moment of requesting a fragment, or when protecting an HLS stream with the ngx_http_secure_link_module module.
hls_forward_args :: [Text] -> ConfStatement
hls_forward_args vs = ConfStatementExpression (Expression "hls_forward_args" vs)

-- | Safe version of 'hls_forward_args'
hls_forward_args_s :: [Text] -> Hls_Forward_Args
hls_forward_args_s vs = Hls_Forward_Args$ ConfStatementExpression (Expression "hls_forward_args" vs)
newtype Hls_Forward_Args = Hls_Forward_Args ConfStatement
instance ToConfStatement Hls_Forward_Args where
    toConfStatement (Hls_Forward_Args c) = c
instance HasContextHttp
 Hls_Forward_Args where
instance HasContextServer
 Hls_Forward_Args where
instance HasContextLocation
 Hls_Forward_Args where


-- | Defines the default fragment length for playlist URIs requested without the “len” argument.
hls_fragment :: [Text] -> ConfStatement
hls_fragment vs = ConfStatementExpression (Expression "hls_fragment" vs)

-- | Safe version of 'hls_fragment'
hls_fragment_s :: [Text] -> Hls_Fragment
hls_fragment_s vs = Hls_Fragment$ ConfStatementExpression (Expression "hls_fragment" vs)
newtype Hls_Fragment = Hls_Fragment ConfStatement
instance ToConfStatement Hls_Fragment where
    toConfStatement (Hls_Fragment c) = c
instance HasContextHttp
 Hls_Fragment where
instance HasContextServer
 Hls_Fragment where
instance HasContextLocation
 Hls_Fragment where


-- | Sets the initial size of the buffer used for processing MP4 and MOV files.
hls_mp4_buffer_size :: [Text] -> ConfStatement
hls_mp4_buffer_size vs = ConfStatementExpression (Expression "hls_mp4_buffer_size" vs)

-- | Safe version of 'hls_mp4_buffer_size'
hls_mp4_buffer_size_s :: [Text] -> Hls_Mp4_Buffer_Size
hls_mp4_buffer_size_s vs = Hls_Mp4_Buffer_Size$ ConfStatementExpression (Expression "hls_mp4_buffer_size" vs)
newtype Hls_Mp4_Buffer_Size = Hls_Mp4_Buffer_Size ConfStatement
instance ToConfStatement Hls_Mp4_Buffer_Size where
    toConfStatement (Hls_Mp4_Buffer_Size c) = c
instance HasContextHttp
 Hls_Mp4_Buffer_Size where
instance HasContextServer
 Hls_Mp4_Buffer_Size where
instance HasContextLocation
 Hls_Mp4_Buffer_Size where


-- | During metadata processing, a larger buffer may become necessary. Its size cannot exceed the specified size, or else nginx will return the server error , and log the following message: "/some/movie/file.mp4" mp4 moov atom is too large: 12583268, you may want to increase hls_mp4_max_buffer_size
hls_mp4_max_buffer_size :: [Text] -> ConfStatement
hls_mp4_max_buffer_size vs = ConfStatementExpression (Expression "hls_mp4_max_buffer_size" vs)

-- | Safe version of 'hls_mp4_max_buffer_size'
hls_mp4_max_buffer_size_s :: [Text] -> Hls_Mp4_Max_Buffer_Size
hls_mp4_max_buffer_size_s vs = Hls_Mp4_Max_Buffer_Size$ ConfStatementExpression (Expression "hls_mp4_max_buffer_size" vs)
newtype Hls_Mp4_Max_Buffer_Size = Hls_Mp4_Max_Buffer_Size ConfStatement
instance ToConfStatement Hls_Mp4_Max_Buffer_Size where
    toConfStatement (Hls_Mp4_Max_Buffer_Size c) = c
instance HasContextHttp
 Hls_Mp4_Max_Buffer_Size where
instance HasContextServer
 Hls_Mp4_Max_Buffer_Size where
instance HasContextLocation
 Hls_Mp4_Max_Buffer_Size where

