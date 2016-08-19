-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_V2_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets the maximum size of chunks into which the response body is sliced. A too low value results in higher overhead. A too high value impairs prioritization due to HOL blocking.
http2_chunk_size :: [Text] -> ConfStatement
http2_chunk_size vs = ConfStatementExpression (Expression "http2_chunk_size" vs)

-- | Safe version of 'http2_chunk_size'
http2_chunk_size_s :: [Text] -> Http2_Chunk_Size
http2_chunk_size_s vs = Http2_Chunk_Size$ ConfStatementExpression (Expression "http2_chunk_size" vs)
newtype Http2_Chunk_Size = Http2_Chunk_Size ConfStatement
instance ToConfStatement Http2_Chunk_Size where
    toConfStatement (Http2_Chunk_Size c) = c
instance HasContextHttp
 Http2_Chunk_Size where
instance HasContextServer
 Http2_Chunk_Size where
instance HasContextLocation
 Http2_Chunk_Size where


-- | Sets the size of the buffer per each request in which the request body may be saved before it is started to be processed.
http2_body_preread_size :: [Text] -> ConfStatement
http2_body_preread_size vs = ConfStatementExpression (Expression "http2_body_preread_size" vs)

-- | Safe version of 'http2_body_preread_size'
http2_body_preread_size_s :: [Text] -> Http2_Body_Preread_Size
http2_body_preread_size_s vs = Http2_Body_Preread_Size$ ConfStatementExpression (Expression "http2_body_preread_size" vs)
newtype Http2_Body_Preread_Size = Http2_Body_Preread_Size ConfStatement
instance ToConfStatement Http2_Body_Preread_Size where
    toConfStatement (Http2_Body_Preread_Size c) = c
instance HasContextHttp
 Http2_Body_Preread_Size where
instance HasContextServer
 Http2_Body_Preread_Size where


-- | Sets the timeout of inactivity after which the connection is closed.
http2_idle_timeout :: [Text] -> ConfStatement
http2_idle_timeout vs = ConfStatementExpression (Expression "http2_idle_timeout" vs)

-- | Safe version of 'http2_idle_timeout'
http2_idle_timeout_s :: [Text] -> Http2_Idle_Timeout
http2_idle_timeout_s vs = Http2_Idle_Timeout$ ConfStatementExpression (Expression "http2_idle_timeout" vs)
newtype Http2_Idle_Timeout = Http2_Idle_Timeout ConfStatement
instance ToConfStatement Http2_Idle_Timeout where
    toConfStatement (Http2_Idle_Timeout c) = c
instance HasContextHttp
 Http2_Idle_Timeout where
instance HasContextServer
 Http2_Idle_Timeout where


-- | Sets the maximum number of concurrent HTTP/2 streams in a connection.
http2_max_concurrent_streams :: [Text] -> ConfStatement
http2_max_concurrent_streams vs = ConfStatementExpression (Expression "http2_max_concurrent_streams" vs)

-- | Safe version of 'http2_max_concurrent_streams'
http2_max_concurrent_streams_s :: [Text] -> Http2_Max_Concurrent_Streams
http2_max_concurrent_streams_s vs = Http2_Max_Concurrent_Streams$ ConfStatementExpression (Expression "http2_max_concurrent_streams" vs)
newtype Http2_Max_Concurrent_Streams = Http2_Max_Concurrent_Streams ConfStatement
instance ToConfStatement Http2_Max_Concurrent_Streams where
    toConfStatement (Http2_Max_Concurrent_Streams c) = c
instance HasContextHttp
 Http2_Max_Concurrent_Streams where
instance HasContextServer
 Http2_Max_Concurrent_Streams where


-- | Limits the maximum size of an HPACK-compressed request header field. The limit applies equally to both name and value. Note that if Huffman encoding is applied, the actual size of decompressed name and value strings may be larger. For most requests, the default limit should be enough.
http2_max_field_size :: [Text] -> ConfStatement
http2_max_field_size vs = ConfStatementExpression (Expression "http2_max_field_size" vs)

-- | Safe version of 'http2_max_field_size'
http2_max_field_size_s :: [Text] -> Http2_Max_Field_Size
http2_max_field_size_s vs = Http2_Max_Field_Size$ ConfStatementExpression (Expression "http2_max_field_size" vs)
newtype Http2_Max_Field_Size = Http2_Max_Field_Size ConfStatement
instance ToConfStatement Http2_Max_Field_Size where
    toConfStatement (Http2_Max_Field_Size c) = c
instance HasContextHttp
 Http2_Max_Field_Size where
instance HasContextServer
 Http2_Max_Field_Size where


-- | Limits the maximum size of the entire request header list after HPACK decompression. For most requests, the default limit should be enough.
http2_max_header_size :: [Text] -> ConfStatement
http2_max_header_size vs = ConfStatementExpression (Expression "http2_max_header_size" vs)

-- | Safe version of 'http2_max_header_size'
http2_max_header_size_s :: [Text] -> Http2_Max_Header_Size
http2_max_header_size_s vs = Http2_Max_Header_Size$ ConfStatementExpression (Expression "http2_max_header_size" vs)
newtype Http2_Max_Header_Size = Http2_Max_Header_Size ConfStatement
instance ToConfStatement Http2_Max_Header_Size where
    toConfStatement (Http2_Max_Header_Size c) = c
instance HasContextHttp
 Http2_Max_Header_Size where
instance HasContextServer
 Http2_Max_Header_Size where


-- | Sets the size of the per worker input buffer.
http2_recv_buffer_size :: [Text] -> ConfStatement
http2_recv_buffer_size vs = ConfStatementExpression (Expression "http2_recv_buffer_size" vs)

-- | Safe version of 'http2_recv_buffer_size'
http2_recv_buffer_size_s :: [Text] -> Http2_Recv_Buffer_Size
http2_recv_buffer_size_s vs = Http2_Recv_Buffer_Size$ ConfStatementExpression (Expression "http2_recv_buffer_size" vs)
newtype Http2_Recv_Buffer_Size = Http2_Recv_Buffer_Size ConfStatement
instance ToConfStatement Http2_Recv_Buffer_Size where
    toConfStatement (Http2_Recv_Buffer_Size c) = c
instance HasContextHttp
 Http2_Recv_Buffer_Size where


-- | Sets the timeout for expecting more data from the client, after which the connection is closed.
http2_recv_timeout :: [Text] -> ConfStatement
http2_recv_timeout vs = ConfStatementExpression (Expression "http2_recv_timeout" vs)

-- | Safe version of 'http2_recv_timeout'
http2_recv_timeout_s :: [Text] -> Http2_Recv_Timeout
http2_recv_timeout_s vs = Http2_Recv_Timeout$ ConfStatementExpression (Expression "http2_recv_timeout" vs)
newtype Http2_Recv_Timeout = Http2_Recv_Timeout ConfStatement
instance ToConfStatement Http2_Recv_Timeout where
    toConfStatement (Http2_Recv_Timeout c) = c
instance HasContextHttp
 Http2_Recv_Timeout where
instance HasContextServer
 Http2_Recv_Timeout where

