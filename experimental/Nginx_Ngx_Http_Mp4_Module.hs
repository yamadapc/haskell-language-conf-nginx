-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Mp4_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Turns on module processing in a surrounding location.
mp4 :: [Text] -> ConfStatement
mp4 vs = ConfStatementExpression (Expression "mp4" vs)

-- | Safe version of 'mp4'
mp4_s :: [Text] -> Mp4
mp4_s vs = Mp4$ ConfStatementExpression (Expression "mp4" vs)
newtype Mp4 = Mp4 ConfStatement
instance ToConfStatement Mp4 where
    toConfStatement (Mp4 c) = c
instance HasContextLocation
 Mp4 where


-- | Sets the initial size of the buffer used for processing MP4 files.
mp4_buffer_size :: [Text] -> ConfStatement
mp4_buffer_size vs = ConfStatementExpression (Expression "mp4_buffer_size" vs)

-- | Safe version of 'mp4_buffer_size'
mp4_buffer_size_s :: [Text] -> Mp4_Buffer_Size
mp4_buffer_size_s vs = Mp4_Buffer_Size$ ConfStatementExpression (Expression "mp4_buffer_size" vs)
newtype Mp4_Buffer_Size = Mp4_Buffer_Size ConfStatement
instance ToConfStatement Mp4_Buffer_Size where
    toConfStatement (Mp4_Buffer_Size c) = c
instance HasContextHttp
 Mp4_Buffer_Size where
instance HasContextServer
 Mp4_Buffer_Size where
instance HasContextLocation
 Mp4_Buffer_Size where


-- | During metadata processing, a larger buffer may become necessary. Its size cannot exceed the specified size, or else nginx will return the server error, and log the following message: "/some/movie/file.mp4" mp4 moov atom is too large: 12583268, you may want to increase mp4_max_buffer_size
mp4_max_buffer_size :: [Text] -> ConfStatement
mp4_max_buffer_size vs = ConfStatementExpression (Expression "mp4_max_buffer_size" vs)

-- | Safe version of 'mp4_max_buffer_size'
mp4_max_buffer_size_s :: [Text] -> Mp4_Max_Buffer_Size
mp4_max_buffer_size_s vs = Mp4_Max_Buffer_Size$ ConfStatementExpression (Expression "mp4_max_buffer_size" vs)
newtype Mp4_Max_Buffer_Size = Mp4_Max_Buffer_Size ConfStatement
instance ToConfStatement Mp4_Max_Buffer_Size where
    toConfStatement (Mp4_Max_Buffer_Size c) = c
instance HasContextHttp
 Mp4_Max_Buffer_Size where
instance HasContextServer
 Mp4_Max_Buffer_Size where
instance HasContextLocation
 Mp4_Max_Buffer_Size where


-- | Limits the rate of response transmission to a client. The rate is limited based on the average bitrate of the MP4 file served. To calculate the rate, the bitrate is multiplied by the specified factor. The special value “on” corresponds to the factor of 1.1. The special value “off” disables rate limiting. The limit is set per a request, and so if a client simultaneously opens two connections, the overall rate will be twice as much as the specified limit.
mp4_limit_rate :: [Text] -> ConfStatement
mp4_limit_rate vs = ConfStatementExpression (Expression "mp4_limit_rate" vs)

-- | Safe version of 'mp4_limit_rate'
mp4_limit_rate_s :: [Text] -> Mp4_Limit_Rate
mp4_limit_rate_s vs = Mp4_Limit_Rate$ ConfStatementExpression (Expression "mp4_limit_rate" vs)
newtype Mp4_Limit_Rate = Mp4_Limit_Rate ConfStatement
instance ToConfStatement Mp4_Limit_Rate where
    toConfStatement (Mp4_Limit_Rate c) = c
instance HasContextHttp
 Mp4_Limit_Rate where
instance HasContextServer
 Mp4_Limit_Rate where
instance HasContextLocation
 Mp4_Limit_Rate where


-- | Sets the initial amount of media data (measured in playback time) after which the further transmission of the response to a client will be rate limited.
mp4_limit_rate_after :: [Text] -> ConfStatement
mp4_limit_rate_after vs = ConfStatementExpression (Expression "mp4_limit_rate_after" vs)

-- | Safe version of 'mp4_limit_rate_after'
mp4_limit_rate_after_s :: [Text] -> Mp4_Limit_Rate_After
mp4_limit_rate_after_s vs = Mp4_Limit_Rate_After$ ConfStatementExpression (Expression "mp4_limit_rate_after" vs)
newtype Mp4_Limit_Rate_After = Mp4_Limit_Rate_After ConfStatement
instance ToConfStatement Mp4_Limit_Rate_After where
    toConfStatement (Mp4_Limit_Rate_After c) = c
instance HasContextHttp
 Mp4_Limit_Rate_After where
instance HasContextServer
 Mp4_Limit_Rate_After where
instance HasContextLocation
 Mp4_Limit_Rate_After where

