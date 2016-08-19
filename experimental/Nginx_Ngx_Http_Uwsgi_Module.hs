-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Uwsgi_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Makes outgoing connections to a uwsgi server originate from the specified local IP address with an optional port (1.11.2). Parameter value can contain variables (1.3.12). The special value off (1.3.12) cancels the effect of the uwsgi_bind directive inherited from the previous configuration level, which allows the system to auto-assign the local IP address and port.
uwsgi_bind :: [Text] -> ConfStatement
uwsgi_bind vs = ConfStatementExpression (Expression "uwsgi_bind" vs)

-- | Safe version of 'uwsgi_bind'
uwsgi_bind_s :: [Text] -> Uwsgi_Bind
uwsgi_bind_s vs = Uwsgi_Bind$ ConfStatementExpression (Expression "uwsgi_bind" vs)
newtype Uwsgi_Bind = Uwsgi_Bind ConfStatement
instance ToConfStatement Uwsgi_Bind where
    toConfStatement (Uwsgi_Bind c) = c
instance HasContextHttp
 Uwsgi_Bind where
instance HasContextServer
 Uwsgi_Bind where
instance HasContextLocation
 Uwsgi_Bind where


-- | Sets the size of the buffer used for reading the first part of the response received from the uwsgi server. This part usually contains a small response header. By default, the buffer size is equal to one memory page. This is either 4K or 8K, depending on a platform. It can be made smaller, however.
uwsgi_buffer_size :: [Text] -> ConfStatement
uwsgi_buffer_size vs = ConfStatementExpression (Expression "uwsgi_buffer_size" vs)

-- | Safe version of 'uwsgi_buffer_size'
uwsgi_buffer_size_s :: [Text] -> Uwsgi_Buffer_Size
uwsgi_buffer_size_s vs = Uwsgi_Buffer_Size$ ConfStatementExpression (Expression "uwsgi_buffer_size" vs)
newtype Uwsgi_Buffer_Size = Uwsgi_Buffer_Size ConfStatement
instance ToConfStatement Uwsgi_Buffer_Size where
    toConfStatement (Uwsgi_Buffer_Size c) = c
instance HasContextHttp
 Uwsgi_Buffer_Size where
instance HasContextServer
 Uwsgi_Buffer_Size where
instance HasContextLocation
 Uwsgi_Buffer_Size where


-- | Enables or disables buffering of responses from the uwsgi server.
uwsgi_buffering :: [Text] -> ConfStatement
uwsgi_buffering vs = ConfStatementExpression (Expression "uwsgi_buffering" vs)

-- | Safe version of 'uwsgi_buffering'
uwsgi_buffering_s :: [Text] -> Uwsgi_Buffering
uwsgi_buffering_s vs = Uwsgi_Buffering$ ConfStatementExpression (Expression "uwsgi_buffering" vs)
newtype Uwsgi_Buffering = Uwsgi_Buffering ConfStatement
instance ToConfStatement Uwsgi_Buffering where
    toConfStatement (Uwsgi_Buffering c) = c
instance HasContextHttp
 Uwsgi_Buffering where
instance HasContextServer
 Uwsgi_Buffering where
instance HasContextLocation
 Uwsgi_Buffering where


-- | Sets the number and size of the buffers used for reading a response from the uwsgi server, for a single connection. By default, the buffer size is equal to one memory page. This is either 4K or 8K, depending on a platform.
uwsgi_buffers :: [Text] -> ConfStatement
uwsgi_buffers vs = ConfStatementExpression (Expression "uwsgi_buffers" vs)

-- | Safe version of 'uwsgi_buffers'
uwsgi_buffers_s :: [Text] -> Uwsgi_Buffers
uwsgi_buffers_s vs = Uwsgi_Buffers$ ConfStatementExpression (Expression "uwsgi_buffers" vs)
newtype Uwsgi_Buffers = Uwsgi_Buffers ConfStatement
instance ToConfStatement Uwsgi_Buffers where
    toConfStatement (Uwsgi_Buffers c) = c
instance HasContextHttp
 Uwsgi_Buffers where
instance HasContextServer
 Uwsgi_Buffers where
instance HasContextLocation
 Uwsgi_Buffers where


-- | When buffering of responses from the uwsgi server is enabled, limits the total size of buffers that can be busy sending a response to the client while the response is not yet fully read. In the meantime, the rest of the buffers can be used for reading the response and, if needed, buffering part of the response to a temporary file. By default, size is limited by the size of two buffers set by the and  directives.
uwsgi_busy_buffers_size :: [Text] -> ConfStatement
uwsgi_busy_buffers_size vs = ConfStatementExpression (Expression "uwsgi_busy_buffers_size" vs)

-- | Safe version of 'uwsgi_busy_buffers_size'
uwsgi_busy_buffers_size_s :: [Text] -> Uwsgi_Busy_Buffers_Size
uwsgi_busy_buffers_size_s vs = Uwsgi_Busy_Buffers_Size$ ConfStatementExpression (Expression "uwsgi_busy_buffers_size" vs)
newtype Uwsgi_Busy_Buffers_Size = Uwsgi_Busy_Buffers_Size ConfStatement
instance ToConfStatement Uwsgi_Busy_Buffers_Size where
    toConfStatement (Uwsgi_Busy_Buffers_Size c) = c
instance HasContextHttp
 Uwsgi_Busy_Buffers_Size where
instance HasContextServer
 Uwsgi_Busy_Buffers_Size where
instance HasContextLocation
 Uwsgi_Busy_Buffers_Size where


-- | Defines a shared memory zone used for caching. The same zone can be used in several places. Parameter value can contain variables (1.7.9). The off parameter disables caching inherited from the previous configuration level.
uwsgi_cache :: [Text] -> ConfStatement
uwsgi_cache vs = ConfStatementExpression (Expression "uwsgi_cache" vs)

-- | Safe version of 'uwsgi_cache'
uwsgi_cache_s :: [Text] -> Uwsgi_Cache
uwsgi_cache_s vs = Uwsgi_Cache$ ConfStatementExpression (Expression "uwsgi_cache" vs)
newtype Uwsgi_Cache = Uwsgi_Cache ConfStatement
instance ToConfStatement Uwsgi_Cache where
    toConfStatement (Uwsgi_Cache c) = c
instance HasContextHttp
 Uwsgi_Cache where
instance HasContextServer
 Uwsgi_Cache where
instance HasContextLocation
 Uwsgi_Cache where


-- | Defines conditions under which the response will not be taken from a cache. If at least one value of the string parameters is not empty and is not equal to “0” then the response will not be taken from the cache: uwsgi_cache_bypass $cookie_nocache $arg_nocache$arg_comment; uwsgi_cache_bypass $http_pragma    $http_authorization; Can be used along with the  directive.
uwsgi_cache_bypass :: [Text] -> ConfStatement
uwsgi_cache_bypass vs = ConfStatementExpression (Expression "uwsgi_cache_bypass" vs)

-- | Safe version of 'uwsgi_cache_bypass'
uwsgi_cache_bypass_s :: [Text] -> Uwsgi_Cache_Bypass
uwsgi_cache_bypass_s vs = Uwsgi_Cache_Bypass$ ConfStatementExpression (Expression "uwsgi_cache_bypass" vs)
newtype Uwsgi_Cache_Bypass = Uwsgi_Cache_Bypass ConfStatement
instance ToConfStatement Uwsgi_Cache_Bypass where
    toConfStatement (Uwsgi_Cache_Bypass c) = c
instance HasContextHttp
 Uwsgi_Cache_Bypass where
instance HasContextServer
 Uwsgi_Cache_Bypass where
instance HasContextLocation
 Uwsgi_Cache_Bypass where


-- | Defines a key for caching, for example uwsgi_cache_key localhost:9000$request_uri;
uwsgi_cache_key :: [Text] -> ConfStatement
uwsgi_cache_key vs = ConfStatementExpression (Expression "uwsgi_cache_key" vs)

-- | Safe version of 'uwsgi_cache_key'
uwsgi_cache_key_s :: [Text] -> Uwsgi_Cache_Key
uwsgi_cache_key_s vs = Uwsgi_Cache_Key$ ConfStatementExpression (Expression "uwsgi_cache_key" vs)
newtype Uwsgi_Cache_Key = Uwsgi_Cache_Key ConfStatement
instance ToConfStatement Uwsgi_Cache_Key where
    toConfStatement (Uwsgi_Cache_Key c) = c
instance HasContextHttp
 Uwsgi_Cache_Key where
instance HasContextServer
 Uwsgi_Cache_Key where
instance HasContextLocation
 Uwsgi_Cache_Key where


-- | When enabled, only one request at a time will be allowed to populate a new cache element identified according to the directive by passing a request to a uwsgi server. Other requests of the same cache element will either wait for a response to appear in the cache or the cache lock for this element to be released, up to the time set by the directive.
uwsgi_cache_lock :: [Text] -> ConfStatement
uwsgi_cache_lock vs = ConfStatementExpression (Expression "uwsgi_cache_lock" vs)

-- | Safe version of 'uwsgi_cache_lock'
uwsgi_cache_lock_s :: [Text] -> Uwsgi_Cache_Lock
uwsgi_cache_lock_s vs = Uwsgi_Cache_Lock$ ConfStatementExpression (Expression "uwsgi_cache_lock" vs)
newtype Uwsgi_Cache_Lock = Uwsgi_Cache_Lock ConfStatement
instance ToConfStatement Uwsgi_Cache_Lock where
    toConfStatement (Uwsgi_Cache_Lock c) = c
instance HasContextHttp
 Uwsgi_Cache_Lock where
instance HasContextServer
 Uwsgi_Cache_Lock where
instance HasContextLocation
 Uwsgi_Cache_Lock where


-- | If the last request passed to the uwsgi server for populating a new cache element has not completed for the specified time, one more request may be passed to the uwsgi server.
uwsgi_cache_lock_age :: [Text] -> ConfStatement
uwsgi_cache_lock_age vs = ConfStatementExpression (Expression "uwsgi_cache_lock_age" vs)

-- | Safe version of 'uwsgi_cache_lock_age'
uwsgi_cache_lock_age_s :: [Text] -> Uwsgi_Cache_Lock_Age
uwsgi_cache_lock_age_s vs = Uwsgi_Cache_Lock_Age$ ConfStatementExpression (Expression "uwsgi_cache_lock_age" vs)
newtype Uwsgi_Cache_Lock_Age = Uwsgi_Cache_Lock_Age ConfStatement
instance ToConfStatement Uwsgi_Cache_Lock_Age where
    toConfStatement (Uwsgi_Cache_Lock_Age c) = c
instance HasContextHttp
 Uwsgi_Cache_Lock_Age where
instance HasContextServer
 Uwsgi_Cache_Lock_Age where
instance HasContextLocation
 Uwsgi_Cache_Lock_Age where


-- | Sets a timeout for . When the time expires, the request will be passed to the uwsgi server, however, the response will not be cached. Before 1.7.8, the response could be cached.
uwsgi_cache_lock_timeout :: [Text] -> ConfStatement
uwsgi_cache_lock_timeout vs = ConfStatementExpression (Expression "uwsgi_cache_lock_timeout" vs)

-- | Safe version of 'uwsgi_cache_lock_timeout'
uwsgi_cache_lock_timeout_s :: [Text] -> Uwsgi_Cache_Lock_Timeout
uwsgi_cache_lock_timeout_s vs = Uwsgi_Cache_Lock_Timeout$ ConfStatementExpression (Expression "uwsgi_cache_lock_timeout" vs)
newtype Uwsgi_Cache_Lock_Timeout = Uwsgi_Cache_Lock_Timeout ConfStatement
instance ToConfStatement Uwsgi_Cache_Lock_Timeout where
    toConfStatement (Uwsgi_Cache_Lock_Timeout c) = c
instance HasContextHttp
 Uwsgi_Cache_Lock_Timeout where
instance HasContextServer
 Uwsgi_Cache_Lock_Timeout where
instance HasContextLocation
 Uwsgi_Cache_Lock_Timeout where


-- | If the client request method is listed in this directive then the response will be cached. “GET” and “HEAD” methods are always added to the list, though it is recommended to specify them explicitly. See also the  directive.
uwsgi_cache_methods :: [Text] -> ConfStatement
uwsgi_cache_methods vs = ConfStatementExpression (Expression "uwsgi_cache_methods" vs)

-- | Safe version of 'uwsgi_cache_methods'
uwsgi_cache_methods_s :: [Text] -> Uwsgi_Cache_Methods
uwsgi_cache_methods_s vs = Uwsgi_Cache_Methods$ ConfStatementExpression (Expression "uwsgi_cache_methods" vs)
newtype Uwsgi_Cache_Methods = Uwsgi_Cache_Methods ConfStatement
instance ToConfStatement Uwsgi_Cache_Methods where
    toConfStatement (Uwsgi_Cache_Methods c) = c
instance HasContextHttp
 Uwsgi_Cache_Methods where
instance HasContextServer
 Uwsgi_Cache_Methods where
instance HasContextLocation
 Uwsgi_Cache_Methods where


-- | Sets the number of requests after which the response will be cached.
uwsgi_cache_min_uses :: [Text] -> ConfStatement
uwsgi_cache_min_uses vs = ConfStatementExpression (Expression "uwsgi_cache_min_uses" vs)

-- | Safe version of 'uwsgi_cache_min_uses'
uwsgi_cache_min_uses_s :: [Text] -> Uwsgi_Cache_Min_Uses
uwsgi_cache_min_uses_s vs = Uwsgi_Cache_Min_Uses$ ConfStatementExpression (Expression "uwsgi_cache_min_uses" vs)
newtype Uwsgi_Cache_Min_Uses = Uwsgi_Cache_Min_Uses ConfStatement
instance ToConfStatement Uwsgi_Cache_Min_Uses where
    toConfStatement (Uwsgi_Cache_Min_Uses c) = c
instance HasContextHttp
 Uwsgi_Cache_Min_Uses where
instance HasContextServer
 Uwsgi_Cache_Min_Uses where
instance HasContextLocation
 Uwsgi_Cache_Min_Uses where


-- | Sets the path and other parameters of a cache. Cache data are stored in files. The file name in a cache is a result of applying the MD5 function to the cache key. The levels parameter defines hierarchy levels of a cache. For example, in the following configuration uwsgi_cache_path /data/nginx/cache levels=1:2 keys_zone=one:10m; file names in a cache will look like this: /data/nginx/cache/c/29/b7f54b2df7773722d382f4809d65029c
uwsgi_cache_path :: [Text] -> ConfStatement
uwsgi_cache_path vs = ConfStatementExpression (Expression "uwsgi_cache_path" vs)

-- | Safe version of 'uwsgi_cache_path'
uwsgi_cache_path_s :: [Text] -> Uwsgi_Cache_Path
uwsgi_cache_path_s vs = Uwsgi_Cache_Path$ ConfStatementExpression (Expression "uwsgi_cache_path" vs)
newtype Uwsgi_Cache_Path = Uwsgi_Cache_Path ConfStatement
instance ToConfStatement Uwsgi_Cache_Path where
    toConfStatement (Uwsgi_Cache_Path c) = c
instance HasContextHttp
 Uwsgi_Cache_Path where


-- | Defines conditions under which the request will be considered a cache purge request. If at least one value of the string parameters is not empty and is not equal to “0” then the cache entry with a corresponding cache key is removed. The result of successful operation is indicated by returning the  response.
uwsgi_cache_purge :: [Text] -> ConfStatement
uwsgi_cache_purge vs = ConfStatementExpression (Expression "uwsgi_cache_purge" vs)

-- | Safe version of 'uwsgi_cache_purge'
uwsgi_cache_purge_s :: [Text] -> Uwsgi_Cache_Purge
uwsgi_cache_purge_s vs = Uwsgi_Cache_Purge$ ConfStatementExpression (Expression "uwsgi_cache_purge" vs)
newtype Uwsgi_Cache_Purge = Uwsgi_Cache_Purge ConfStatement
instance ToConfStatement Uwsgi_Cache_Purge where
    toConfStatement (Uwsgi_Cache_Purge c) = c
instance HasContextHttp
 Uwsgi_Cache_Purge where
instance HasContextServer
 Uwsgi_Cache_Purge where
instance HasContextLocation
 Uwsgi_Cache_Purge where


-- | Enables revalidation of expired cache items using conditional requests with the If-Modified-Since and If-None-Match header fields.
uwsgi_cache_revalidate :: [Text] -> ConfStatement
uwsgi_cache_revalidate vs = ConfStatementExpression (Expression "uwsgi_cache_revalidate" vs)

-- | Safe version of 'uwsgi_cache_revalidate'
uwsgi_cache_revalidate_s :: [Text] -> Uwsgi_Cache_Revalidate
uwsgi_cache_revalidate_s vs = Uwsgi_Cache_Revalidate$ ConfStatementExpression (Expression "uwsgi_cache_revalidate" vs)
newtype Uwsgi_Cache_Revalidate = Uwsgi_Cache_Revalidate ConfStatement
instance ToConfStatement Uwsgi_Cache_Revalidate where
    toConfStatement (Uwsgi_Cache_Revalidate c) = c
instance HasContextHttp
 Uwsgi_Cache_Revalidate where
instance HasContextServer
 Uwsgi_Cache_Revalidate where
instance HasContextLocation
 Uwsgi_Cache_Revalidate where


-- | Determines in which cases a stale cached response can be used when an error occurs during communication with the uwsgi server. The directive’s parameters match the parameters of the directive.
uwsgi_cache_use_stale :: [Text] -> ConfStatement
uwsgi_cache_use_stale vs = ConfStatementExpression (Expression "uwsgi_cache_use_stale" vs)

-- | Safe version of 'uwsgi_cache_use_stale'
uwsgi_cache_use_stale_s :: [Text] -> Uwsgi_Cache_Use_Stale
uwsgi_cache_use_stale_s vs = Uwsgi_Cache_Use_Stale$ ConfStatementExpression (Expression "uwsgi_cache_use_stale" vs)
newtype Uwsgi_Cache_Use_Stale = Uwsgi_Cache_Use_Stale ConfStatement
instance ToConfStatement Uwsgi_Cache_Use_Stale where
    toConfStatement (Uwsgi_Cache_Use_Stale c) = c
instance HasContextHttp
 Uwsgi_Cache_Use_Stale where
instance HasContextServer
 Uwsgi_Cache_Use_Stale where
instance HasContextLocation
 Uwsgi_Cache_Use_Stale where


-- | Sets caching time for different response codes. For example, the following directives uwsgi_cache_valid 200 302 10m; uwsgi_cache_valid 404      1m; set 10 minutes of caching for responses with codes 200 and 302 and 1 minute for responses with code 404.
uwsgi_cache_valid :: [Text] -> ConfStatement
uwsgi_cache_valid vs = ConfStatementExpression (Expression "uwsgi_cache_valid" vs)

-- | Safe version of 'uwsgi_cache_valid'
uwsgi_cache_valid_s :: [Text] -> Uwsgi_Cache_Valid
uwsgi_cache_valid_s vs = Uwsgi_Cache_Valid$ ConfStatementExpression (Expression "uwsgi_cache_valid" vs)
newtype Uwsgi_Cache_Valid = Uwsgi_Cache_Valid ConfStatement
instance ToConfStatement Uwsgi_Cache_Valid where
    toConfStatement (Uwsgi_Cache_Valid c) = c
instance HasContextHttp
 Uwsgi_Cache_Valid where
instance HasContextServer
 Uwsgi_Cache_Valid where
instance HasContextLocation
 Uwsgi_Cache_Valid where


-- | Defines a timeout for establishing a connection with a uwsgi server. It should be noted that this timeout cannot usually exceed 75 seconds.
uwsgi_connect_timeout :: [Text] -> ConfStatement
uwsgi_connect_timeout vs = ConfStatementExpression (Expression "uwsgi_connect_timeout" vs)

-- | Safe version of 'uwsgi_connect_timeout'
uwsgi_connect_timeout_s :: [Text] -> Uwsgi_Connect_Timeout
uwsgi_connect_timeout_s vs = Uwsgi_Connect_Timeout$ ConfStatementExpression (Expression "uwsgi_connect_timeout" vs)
newtype Uwsgi_Connect_Timeout = Uwsgi_Connect_Timeout ConfStatement
instance ToConfStatement Uwsgi_Connect_Timeout where
    toConfStatement (Uwsgi_Connect_Timeout c) = c
instance HasContextHttp
 Uwsgi_Connect_Timeout where
instance HasContextServer
 Uwsgi_Connect_Timeout where
instance HasContextLocation
 Uwsgi_Connect_Timeout where


-- | Enables byte-range support for both cached and uncached responses from the uwsgi server regardless of the Accept-Ranges field in these responses.
uwsgi_force_ranges :: [Text] -> ConfStatement
uwsgi_force_ranges vs = ConfStatementExpression (Expression "uwsgi_force_ranges" vs)

-- | Safe version of 'uwsgi_force_ranges'
uwsgi_force_ranges_s :: [Text] -> Uwsgi_Force_Ranges
uwsgi_force_ranges_s vs = Uwsgi_Force_Ranges$ ConfStatementExpression (Expression "uwsgi_force_ranges" vs)
newtype Uwsgi_Force_Ranges = Uwsgi_Force_Ranges ConfStatement
instance ToConfStatement Uwsgi_Force_Ranges where
    toConfStatement (Uwsgi_Force_Ranges c) = c
instance HasContextHttp
 Uwsgi_Force_Ranges where
instance HasContextServer
 Uwsgi_Force_Ranges where
instance HasContextLocation
 Uwsgi_Force_Ranges where


-- | By default, nginx does not pass the header fields Status and X-Accel-... from the response of a uwsgi server to a client. The uwsgi_hide_header directive sets additional fields that will not be passed. If, on the contrary, the passing of fields needs to be permitted, the  directive can be used.
uwsgi_hide_header :: [Text] -> ConfStatement
uwsgi_hide_header vs = ConfStatementExpression (Expression "uwsgi_hide_header" vs)

-- | Safe version of 'uwsgi_hide_header'
uwsgi_hide_header_s :: [Text] -> Uwsgi_Hide_Header
uwsgi_hide_header_s vs = Uwsgi_Hide_Header$ ConfStatementExpression (Expression "uwsgi_hide_header" vs)
newtype Uwsgi_Hide_Header = Uwsgi_Hide_Header ConfStatement
instance ToConfStatement Uwsgi_Hide_Header where
    toConfStatement (Uwsgi_Hide_Header c) = c
instance HasContextHttp
 Uwsgi_Hide_Header where
instance HasContextServer
 Uwsgi_Hide_Header where
instance HasContextLocation
 Uwsgi_Hide_Header where


-- | Determines whether the connection with a uwsgi server should be closed when a client closes the connection without waiting for a response.
uwsgi_ignore_client_abort :: [Text] -> ConfStatement
uwsgi_ignore_client_abort vs = ConfStatementExpression (Expression "uwsgi_ignore_client_abort" vs)

-- | Safe version of 'uwsgi_ignore_client_abort'
uwsgi_ignore_client_abort_s :: [Text] -> Uwsgi_Ignore_Client_Abort
uwsgi_ignore_client_abort_s vs = Uwsgi_Ignore_Client_Abort$ ConfStatementExpression (Expression "uwsgi_ignore_client_abort" vs)
newtype Uwsgi_Ignore_Client_Abort = Uwsgi_Ignore_Client_Abort ConfStatement
instance ToConfStatement Uwsgi_Ignore_Client_Abort where
    toConfStatement (Uwsgi_Ignore_Client_Abort c) = c
instance HasContextHttp
 Uwsgi_Ignore_Client_Abort where
instance HasContextServer
 Uwsgi_Ignore_Client_Abort where
instance HasContextLocation
 Uwsgi_Ignore_Client_Abort where


-- | Disables processing of certain response header fields from the uwsgi server. The following fields can be ignored: X-Accel-Redirect, X-Accel-Expires, X-Accel-Limit-Rate (1.1.6), X-Accel-Buffering (1.1.6), X-Accel-Charset (1.1.6), Expires, Cache-Control, Set-Cookie (0.8.44), and Vary (1.7.7).
uwsgi_ignore_headers :: [Text] -> ConfStatement
uwsgi_ignore_headers vs = ConfStatementExpression (Expression "uwsgi_ignore_headers" vs)

-- | Safe version of 'uwsgi_ignore_headers'
uwsgi_ignore_headers_s :: [Text] -> Uwsgi_Ignore_Headers
uwsgi_ignore_headers_s vs = Uwsgi_Ignore_Headers$ ConfStatementExpression (Expression "uwsgi_ignore_headers" vs)
newtype Uwsgi_Ignore_Headers = Uwsgi_Ignore_Headers ConfStatement
instance ToConfStatement Uwsgi_Ignore_Headers where
    toConfStatement (Uwsgi_Ignore_Headers c) = c
instance HasContextHttp
 Uwsgi_Ignore_Headers where
instance HasContextServer
 Uwsgi_Ignore_Headers where
instance HasContextLocation
 Uwsgi_Ignore_Headers where


-- | Determines whether a uwsgi server responses with codes greater than or equal to 300 should be passed to a client or be redirected to nginx for processing with the  directive.
uwsgi_intercept_errors :: [Text] -> ConfStatement
uwsgi_intercept_errors vs = ConfStatementExpression (Expression "uwsgi_intercept_errors" vs)

-- | Safe version of 'uwsgi_intercept_errors'
uwsgi_intercept_errors_s :: [Text] -> Uwsgi_Intercept_Errors
uwsgi_intercept_errors_s vs = Uwsgi_Intercept_Errors$ ConfStatementExpression (Expression "uwsgi_intercept_errors" vs)
newtype Uwsgi_Intercept_Errors = Uwsgi_Intercept_Errors ConfStatement
instance ToConfStatement Uwsgi_Intercept_Errors where
    toConfStatement (Uwsgi_Intercept_Errors c) = c
instance HasContextHttp
 Uwsgi_Intercept_Errors where
instance HasContextServer
 Uwsgi_Intercept_Errors where
instance HasContextLocation
 Uwsgi_Intercept_Errors where


-- | Limits the speed of reading the response from the uwsgi server. The rate is specified in bytes per second. The zero value disables rate limiting. The limit is set per a request, and so if nginx simultaneously opens two connections to the uwsgi server, the overall rate will be twice as much as the specified limit. The limitation works only if buffering of responses from the uwsgi server is enabled.
uwsgi_limit_rate :: [Text] -> ConfStatement
uwsgi_limit_rate vs = ConfStatementExpression (Expression "uwsgi_limit_rate" vs)

-- | Safe version of 'uwsgi_limit_rate'
uwsgi_limit_rate_s :: [Text] -> Uwsgi_Limit_Rate
uwsgi_limit_rate_s vs = Uwsgi_Limit_Rate$ ConfStatementExpression (Expression "uwsgi_limit_rate" vs)
newtype Uwsgi_Limit_Rate = Uwsgi_Limit_Rate ConfStatement
instance ToConfStatement Uwsgi_Limit_Rate where
    toConfStatement (Uwsgi_Limit_Rate c) = c
instance HasContextHttp
 Uwsgi_Limit_Rate where
instance HasContextServer
 Uwsgi_Limit_Rate where
instance HasContextLocation
 Uwsgi_Limit_Rate where


-- | When buffering of responses from the uwsgi server is enabled, and the whole response does not fit into the buffers set by the  and directives, a part of the response can be saved to a temporary file. This directive sets the maximum size of the temporary file. The size of data written to the temporary file at a time is set by the  directive.
uwsgi_max_temp_file_size :: [Text] -> ConfStatement
uwsgi_max_temp_file_size vs = ConfStatementExpression (Expression "uwsgi_max_temp_file_size" vs)

-- | Safe version of 'uwsgi_max_temp_file_size'
uwsgi_max_temp_file_size_s :: [Text] -> Uwsgi_Max_Temp_File_Size
uwsgi_max_temp_file_size_s vs = Uwsgi_Max_Temp_File_Size$ ConfStatementExpression (Expression "uwsgi_max_temp_file_size" vs)
newtype Uwsgi_Max_Temp_File_Size = Uwsgi_Max_Temp_File_Size ConfStatement
instance ToConfStatement Uwsgi_Max_Temp_File_Size where
    toConfStatement (Uwsgi_Max_Temp_File_Size c) = c
instance HasContextHttp
 Uwsgi_Max_Temp_File_Size where
instance HasContextServer
 Uwsgi_Max_Temp_File_Size where
instance HasContextLocation
 Uwsgi_Max_Temp_File_Size where


-- | Sets the value of the modifier1 field in the uwsgi packet header.
uwsgi_modifier1 :: [Text] -> ConfStatement
uwsgi_modifier1 vs = ConfStatementExpression (Expression "uwsgi_modifier1" vs)

-- | Safe version of 'uwsgi_modifier1'
uwsgi_modifier1_s :: [Text] -> Uwsgi_Modifier1
uwsgi_modifier1_s vs = Uwsgi_Modifier1$ ConfStatementExpression (Expression "uwsgi_modifier1" vs)
newtype Uwsgi_Modifier1 = Uwsgi_Modifier1 ConfStatement
instance ToConfStatement Uwsgi_Modifier1 where
    toConfStatement (Uwsgi_Modifier1 c) = c
instance HasContextHttp
 Uwsgi_Modifier1 where
instance HasContextServer
 Uwsgi_Modifier1 where
instance HasContextLocation
 Uwsgi_Modifier1 where


-- | Sets the value of the modifier2 field in the uwsgi packet header.
uwsgi_modifier2 :: [Text] -> ConfStatement
uwsgi_modifier2 vs = ConfStatementExpression (Expression "uwsgi_modifier2" vs)

-- | Safe version of 'uwsgi_modifier2'
uwsgi_modifier2_s :: [Text] -> Uwsgi_Modifier2
uwsgi_modifier2_s vs = Uwsgi_Modifier2$ ConfStatementExpression (Expression "uwsgi_modifier2" vs)
newtype Uwsgi_Modifier2 = Uwsgi_Modifier2 ConfStatement
instance ToConfStatement Uwsgi_Modifier2 where
    toConfStatement (Uwsgi_Modifier2 c) = c
instance HasContextHttp
 Uwsgi_Modifier2 where
instance HasContextServer
 Uwsgi_Modifier2 where
instance HasContextLocation
 Uwsgi_Modifier2 where


-- | Specifies in which cases a request should be passed to the next server: error an error occurred while establishing a connection with the server, passing a request to it, or reading the response header; timeout a timeout has occurred while establishing a connection with the server, passing a request to it, or reading the response header; invalid_header a server returned an empty or invalid response; http_500 a server returned a response with the code 500; http_503 a server returned a response with the code 503; http_403 a server returned a response with the code 403; http_404 a server returned a response with the code 404; non_idempotent normally, requests with a non-idempotent method (POST, LOCK, PATCH) are not passed to the next server if a request has been sent to an upstream server (1.9.13); enabling this option explicitly allows retrying such requests; off disables passing a request to the next server.
uwsgi_next_upstream :: [Text] -> ConfStatement
uwsgi_next_upstream vs = ConfStatementExpression (Expression "uwsgi_next_upstream" vs)

-- | Safe version of 'uwsgi_next_upstream'
uwsgi_next_upstream_s :: [Text] -> Uwsgi_Next_Upstream
uwsgi_next_upstream_s vs = Uwsgi_Next_Upstream$ ConfStatementExpression (Expression "uwsgi_next_upstream" vs)
newtype Uwsgi_Next_Upstream = Uwsgi_Next_Upstream ConfStatement
instance ToConfStatement Uwsgi_Next_Upstream where
    toConfStatement (Uwsgi_Next_Upstream c) = c
instance HasContextHttp
 Uwsgi_Next_Upstream where
instance HasContextServer
 Uwsgi_Next_Upstream where
instance HasContextLocation
 Uwsgi_Next_Upstream where


-- | Limits the time during which a request can be passed to the next server. The 0 value turns off this limitation.
uwsgi_next_upstream_timeout :: [Text] -> ConfStatement
uwsgi_next_upstream_timeout vs = ConfStatementExpression (Expression "uwsgi_next_upstream_timeout" vs)

-- | Safe version of 'uwsgi_next_upstream_timeout'
uwsgi_next_upstream_timeout_s :: [Text] -> Uwsgi_Next_Upstream_Timeout
uwsgi_next_upstream_timeout_s vs = Uwsgi_Next_Upstream_Timeout$ ConfStatementExpression (Expression "uwsgi_next_upstream_timeout" vs)
newtype Uwsgi_Next_Upstream_Timeout = Uwsgi_Next_Upstream_Timeout ConfStatement
instance ToConfStatement Uwsgi_Next_Upstream_Timeout where
    toConfStatement (Uwsgi_Next_Upstream_Timeout c) = c
instance HasContextHttp
 Uwsgi_Next_Upstream_Timeout where
instance HasContextServer
 Uwsgi_Next_Upstream_Timeout where
instance HasContextLocation
 Uwsgi_Next_Upstream_Timeout where


-- | Limits the number of possible tries for passing a request to the next server. The 0 value turns off this limitation.
uwsgi_next_upstream_tries :: [Text] -> ConfStatement
uwsgi_next_upstream_tries vs = ConfStatementExpression (Expression "uwsgi_next_upstream_tries" vs)

-- | Safe version of 'uwsgi_next_upstream_tries'
uwsgi_next_upstream_tries_s :: [Text] -> Uwsgi_Next_Upstream_Tries
uwsgi_next_upstream_tries_s vs = Uwsgi_Next_Upstream_Tries$ ConfStatementExpression (Expression "uwsgi_next_upstream_tries" vs)
newtype Uwsgi_Next_Upstream_Tries = Uwsgi_Next_Upstream_Tries ConfStatement
instance ToConfStatement Uwsgi_Next_Upstream_Tries where
    toConfStatement (Uwsgi_Next_Upstream_Tries c) = c
instance HasContextHttp
 Uwsgi_Next_Upstream_Tries where
instance HasContextServer
 Uwsgi_Next_Upstream_Tries where
instance HasContextLocation
 Uwsgi_Next_Upstream_Tries where


-- | Defines conditions under which the response will not be saved to a cache. If at least one value of the string parameters is not empty and is not equal to “0” then the response will not be saved: uwsgi_no_cache $cookie_nocache $arg_nocache$arg_comment; uwsgi_no_cache $http_pragma    $http_authorization; Can be used along with the  directive.
uwsgi_no_cache :: [Text] -> ConfStatement
uwsgi_no_cache vs = ConfStatementExpression (Expression "uwsgi_no_cache" vs)

-- | Safe version of 'uwsgi_no_cache'
uwsgi_no_cache_s :: [Text] -> Uwsgi_No_Cache
uwsgi_no_cache_s vs = Uwsgi_No_Cache$ ConfStatementExpression (Expression "uwsgi_no_cache" vs)
newtype Uwsgi_No_Cache = Uwsgi_No_Cache ConfStatement
instance ToConfStatement Uwsgi_No_Cache where
    toConfStatement (Uwsgi_No_Cache c) = c
instance HasContextHttp
 Uwsgi_No_Cache where
instance HasContextServer
 Uwsgi_No_Cache where
instance HasContextLocation
 Uwsgi_No_Cache where


-- | Sets a parameter that should be passed to the uwsgi server. The value can contain text, variables, and their combination. These directives are inherited from the previous level if and only if there are no uwsgi_param directives defined on the current level.
uwsgi_param :: [Text] -> ConfStatement
uwsgi_param vs = ConfStatementExpression (Expression "uwsgi_param" vs)

-- | Safe version of 'uwsgi_param'
uwsgi_param_s :: [Text] -> Uwsgi_Param
uwsgi_param_s vs = Uwsgi_Param$ ConfStatementExpression (Expression "uwsgi_param" vs)
newtype Uwsgi_Param = Uwsgi_Param ConfStatement
instance ToConfStatement Uwsgi_Param where
    toConfStatement (Uwsgi_Param c) = c
instance HasContextHttp
 Uwsgi_Param where
instance HasContextServer
 Uwsgi_Param where
instance HasContextLocation
 Uwsgi_Param where


-- | Sets the protocol and address of a uwsgi server. As a protocol, “uwsgi” or “suwsgi” (secured uwsgi, uwsgi over SSL) can be specified. The address can be specified as a domain name or IP address, and a port: uwsgi_pass localhost:9000; uwsgi_pass uwsgi://localhost:9000; uwsgi_pass suwsgi://[2001:db8::1]:9090; or as a UNIX-domain socket path: uwsgi_pass unix:/tmp/uwsgi.socket;
uwsgi_pass :: [Text] -> ConfStatement
uwsgi_pass vs = ConfStatementExpression (Expression "uwsgi_pass" vs)

-- | Safe version of 'uwsgi_pass'
uwsgi_pass_s :: [Text] -> Uwsgi_Pass
uwsgi_pass_s vs = Uwsgi_Pass$ ConfStatementExpression (Expression "uwsgi_pass" vs)
newtype Uwsgi_Pass = Uwsgi_Pass ConfStatement
instance ToConfStatement Uwsgi_Pass where
    toConfStatement (Uwsgi_Pass c) = c
instance HasContextLocation
 Uwsgi_Pass where


-- | Permits passing otherwise disabled header fields from a uwsgi server to a client.
uwsgi_pass_header :: [Text] -> ConfStatement
uwsgi_pass_header vs = ConfStatementExpression (Expression "uwsgi_pass_header" vs)

-- | Safe version of 'uwsgi_pass_header'
uwsgi_pass_header_s :: [Text] -> Uwsgi_Pass_Header
uwsgi_pass_header_s vs = Uwsgi_Pass_Header$ ConfStatementExpression (Expression "uwsgi_pass_header" vs)
newtype Uwsgi_Pass_Header = Uwsgi_Pass_Header ConfStatement
instance ToConfStatement Uwsgi_Pass_Header where
    toConfStatement (Uwsgi_Pass_Header c) = c
instance HasContextHttp
 Uwsgi_Pass_Header where
instance HasContextServer
 Uwsgi_Pass_Header where
instance HasContextLocation
 Uwsgi_Pass_Header where


-- | Indicates whether the original request body is passed to the uwsgi server. See also the  directive.
uwsgi_pass_request_body :: [Text] -> ConfStatement
uwsgi_pass_request_body vs = ConfStatementExpression (Expression "uwsgi_pass_request_body" vs)

-- | Safe version of 'uwsgi_pass_request_body'
uwsgi_pass_request_body_s :: [Text] -> Uwsgi_Pass_Request_Body
uwsgi_pass_request_body_s vs = Uwsgi_Pass_Request_Body$ ConfStatementExpression (Expression "uwsgi_pass_request_body" vs)
newtype Uwsgi_Pass_Request_Body = Uwsgi_Pass_Request_Body ConfStatement
instance ToConfStatement Uwsgi_Pass_Request_Body where
    toConfStatement (Uwsgi_Pass_Request_Body c) = c
instance HasContextHttp
 Uwsgi_Pass_Request_Body where
instance HasContextServer
 Uwsgi_Pass_Request_Body where
instance HasContextLocation
 Uwsgi_Pass_Request_Body where


-- | Indicates whether the header fields of the original request are passed to the uwsgi server. See also the  directive.
uwsgi_pass_request_headers :: [Text] -> ConfStatement
uwsgi_pass_request_headers vs = ConfStatementExpression (Expression "uwsgi_pass_request_headers" vs)

-- | Safe version of 'uwsgi_pass_request_headers'
uwsgi_pass_request_headers_s :: [Text] -> Uwsgi_Pass_Request_Headers
uwsgi_pass_request_headers_s vs = Uwsgi_Pass_Request_Headers$ ConfStatementExpression (Expression "uwsgi_pass_request_headers" vs)
newtype Uwsgi_Pass_Request_Headers = Uwsgi_Pass_Request_Headers ConfStatement
instance ToConfStatement Uwsgi_Pass_Request_Headers where
    toConfStatement (Uwsgi_Pass_Request_Headers c) = c
instance HasContextHttp
 Uwsgi_Pass_Request_Headers where
instance HasContextServer
 Uwsgi_Pass_Request_Headers where
instance HasContextLocation
 Uwsgi_Pass_Request_Headers where


-- | Defines a timeout for reading a response from the uwsgi server. The timeout is set only between two successive read operations, not for the transmission of the whole response. If the uwsgi server does not transmit anything within this time, the connection is closed.
uwsgi_read_timeout :: [Text] -> ConfStatement
uwsgi_read_timeout vs = ConfStatementExpression (Expression "uwsgi_read_timeout" vs)

-- | Safe version of 'uwsgi_read_timeout'
uwsgi_read_timeout_s :: [Text] -> Uwsgi_Read_Timeout
uwsgi_read_timeout_s vs = Uwsgi_Read_Timeout$ ConfStatementExpression (Expression "uwsgi_read_timeout" vs)
newtype Uwsgi_Read_Timeout = Uwsgi_Read_Timeout ConfStatement
instance ToConfStatement Uwsgi_Read_Timeout where
    toConfStatement (Uwsgi_Read_Timeout c) = c
instance HasContextHttp
 Uwsgi_Read_Timeout where
instance HasContextServer
 Uwsgi_Read_Timeout where
instance HasContextLocation
 Uwsgi_Read_Timeout where


-- | Enables or disables buffering of a client request body.
uwsgi_request_buffering :: [Text] -> ConfStatement
uwsgi_request_buffering vs = ConfStatementExpression (Expression "uwsgi_request_buffering" vs)

-- | Safe version of 'uwsgi_request_buffering'
uwsgi_request_buffering_s :: [Text] -> Uwsgi_Request_Buffering
uwsgi_request_buffering_s vs = Uwsgi_Request_Buffering$ ConfStatementExpression (Expression "uwsgi_request_buffering" vs)
newtype Uwsgi_Request_Buffering = Uwsgi_Request_Buffering ConfStatement
instance ToConfStatement Uwsgi_Request_Buffering where
    toConfStatement (Uwsgi_Request_Buffering c) = c
instance HasContextHttp
 Uwsgi_Request_Buffering where
instance HasContextServer
 Uwsgi_Request_Buffering where
instance HasContextLocation
 Uwsgi_Request_Buffering where


-- | Sets a timeout for transmitting a request to the uwsgi server. The timeout is set only between two successive write operations, not for the transmission of the whole request. If the uwsgi server does not receive anything within this time, the connection is closed.
uwsgi_send_timeout :: [Text] -> ConfStatement
uwsgi_send_timeout vs = ConfStatementExpression (Expression "uwsgi_send_timeout" vs)

-- | Safe version of 'uwsgi_send_timeout'
uwsgi_send_timeout_s :: [Text] -> Uwsgi_Send_Timeout
uwsgi_send_timeout_s vs = Uwsgi_Send_Timeout$ ConfStatementExpression (Expression "uwsgi_send_timeout" vs)
newtype Uwsgi_Send_Timeout = Uwsgi_Send_Timeout ConfStatement
instance ToConfStatement Uwsgi_Send_Timeout where
    toConfStatement (Uwsgi_Send_Timeout c) = c
instance HasContextHttp
 Uwsgi_Send_Timeout where
instance HasContextServer
 Uwsgi_Send_Timeout where
instance HasContextLocation
 Uwsgi_Send_Timeout where


-- | Specifies a file with the certificate in the PEM format used for authentication to a secured uwsgi server.
uwsgi_ssl_certificate :: [Text] -> ConfStatement
uwsgi_ssl_certificate vs = ConfStatementExpression (Expression "uwsgi_ssl_certificate" vs)

-- | Safe version of 'uwsgi_ssl_certificate'
uwsgi_ssl_certificate_s :: [Text] -> Uwsgi_Ssl_Certificate
uwsgi_ssl_certificate_s vs = Uwsgi_Ssl_Certificate$ ConfStatementExpression (Expression "uwsgi_ssl_certificate" vs)
newtype Uwsgi_Ssl_Certificate = Uwsgi_Ssl_Certificate ConfStatement
instance ToConfStatement Uwsgi_Ssl_Certificate where
    toConfStatement (Uwsgi_Ssl_Certificate c) = c
instance HasContextHttp
 Uwsgi_Ssl_Certificate where
instance HasContextServer
 Uwsgi_Ssl_Certificate where
instance HasContextLocation
 Uwsgi_Ssl_Certificate where


-- | Specifies a file with the secret key in the PEM format used for authentication to a secured uwsgi server.
uwsgi_ssl_certificate_key :: [Text] -> ConfStatement
uwsgi_ssl_certificate_key vs = ConfStatementExpression (Expression "uwsgi_ssl_certificate_key" vs)

-- | Safe version of 'uwsgi_ssl_certificate_key'
uwsgi_ssl_certificate_key_s :: [Text] -> Uwsgi_Ssl_Certificate_Key
uwsgi_ssl_certificate_key_s vs = Uwsgi_Ssl_Certificate_Key$ ConfStatementExpression (Expression "uwsgi_ssl_certificate_key" vs)
newtype Uwsgi_Ssl_Certificate_Key = Uwsgi_Ssl_Certificate_Key ConfStatement
instance ToConfStatement Uwsgi_Ssl_Certificate_Key where
    toConfStatement (Uwsgi_Ssl_Certificate_Key c) = c
instance HasContextHttp
 Uwsgi_Ssl_Certificate_Key where
instance HasContextServer
 Uwsgi_Ssl_Certificate_Key where
instance HasContextLocation
 Uwsgi_Ssl_Certificate_Key where


-- | Specifies the enabled ciphers for requests to a secured uwsgi server. The ciphers are specified in the format understood by the OpenSSL library.
uwsgi_ssl_ciphers :: [Text] -> ConfStatement
uwsgi_ssl_ciphers vs = ConfStatementExpression (Expression "uwsgi_ssl_ciphers" vs)

-- | Safe version of 'uwsgi_ssl_ciphers'
uwsgi_ssl_ciphers_s :: [Text] -> Uwsgi_Ssl_Ciphers
uwsgi_ssl_ciphers_s vs = Uwsgi_Ssl_Ciphers$ ConfStatementExpression (Expression "uwsgi_ssl_ciphers" vs)
newtype Uwsgi_Ssl_Ciphers = Uwsgi_Ssl_Ciphers ConfStatement
instance ToConfStatement Uwsgi_Ssl_Ciphers where
    toConfStatement (Uwsgi_Ssl_Ciphers c) = c
instance HasContextHttp
 Uwsgi_Ssl_Ciphers where
instance HasContextServer
 Uwsgi_Ssl_Ciphers where
instance HasContextLocation
 Uwsgi_Ssl_Ciphers where


-- | Specifies a file with revoked certificates (CRL) in the PEM format used to verify the certificate of the secured uwsgi server.
uwsgi_ssl_crl :: [Text] -> ConfStatement
uwsgi_ssl_crl vs = ConfStatementExpression (Expression "uwsgi_ssl_crl" vs)

-- | Safe version of 'uwsgi_ssl_crl'
uwsgi_ssl_crl_s :: [Text] -> Uwsgi_Ssl_Crl
uwsgi_ssl_crl_s vs = Uwsgi_Ssl_Crl$ ConfStatementExpression (Expression "uwsgi_ssl_crl" vs)
newtype Uwsgi_Ssl_Crl = Uwsgi_Ssl_Crl ConfStatement
instance ToConfStatement Uwsgi_Ssl_Crl where
    toConfStatement (Uwsgi_Ssl_Crl c) = c
instance HasContextHttp
 Uwsgi_Ssl_Crl where
instance HasContextServer
 Uwsgi_Ssl_Crl where
instance HasContextLocation
 Uwsgi_Ssl_Crl where


-- | Allows overriding the server name used to verify the certificate of the secured uwsgi server and to be passed through SNI when establishing a connection with the secured uwsgi server.
uwsgi_ssl_name :: [Text] -> ConfStatement
uwsgi_ssl_name vs = ConfStatementExpression (Expression "uwsgi_ssl_name" vs)

-- | Safe version of 'uwsgi_ssl_name'
uwsgi_ssl_name_s :: [Text] -> Uwsgi_Ssl_Name
uwsgi_ssl_name_s vs = Uwsgi_Ssl_Name$ ConfStatementExpression (Expression "uwsgi_ssl_name" vs)
newtype Uwsgi_Ssl_Name = Uwsgi_Ssl_Name ConfStatement
instance ToConfStatement Uwsgi_Ssl_Name where
    toConfStatement (Uwsgi_Ssl_Name c) = c
instance HasContextHttp
 Uwsgi_Ssl_Name where
instance HasContextServer
 Uwsgi_Ssl_Name where
instance HasContextLocation
 Uwsgi_Ssl_Name where


-- | Specifies a file with passphrases for secret keys where each passphrase is specified on a separate line. Passphrases are tried in turn when loading the key.
uwsgi_ssl_password_file :: [Text] -> ConfStatement
uwsgi_ssl_password_file vs = ConfStatementExpression (Expression "uwsgi_ssl_password_file" vs)

-- | Safe version of 'uwsgi_ssl_password_file'
uwsgi_ssl_password_file_s :: [Text] -> Uwsgi_Ssl_Password_File
uwsgi_ssl_password_file_s vs = Uwsgi_Ssl_Password_File$ ConfStatementExpression (Expression "uwsgi_ssl_password_file" vs)
newtype Uwsgi_Ssl_Password_File = Uwsgi_Ssl_Password_File ConfStatement
instance ToConfStatement Uwsgi_Ssl_Password_File where
    toConfStatement (Uwsgi_Ssl_Password_File c) = c
instance HasContextHttp
 Uwsgi_Ssl_Password_File where
instance HasContextServer
 Uwsgi_Ssl_Password_File where
instance HasContextLocation
 Uwsgi_Ssl_Password_File where


-- | Enables the specified protocols for requests to a secured uwsgi server.
uwsgi_ssl_protocols :: [Text] -> ConfStatement
uwsgi_ssl_protocols vs = ConfStatementExpression (Expression "uwsgi_ssl_protocols" vs)

-- | Safe version of 'uwsgi_ssl_protocols'
uwsgi_ssl_protocols_s :: [Text] -> Uwsgi_Ssl_Protocols
uwsgi_ssl_protocols_s vs = Uwsgi_Ssl_Protocols$ ConfStatementExpression (Expression "uwsgi_ssl_protocols" vs)
newtype Uwsgi_Ssl_Protocols = Uwsgi_Ssl_Protocols ConfStatement
instance ToConfStatement Uwsgi_Ssl_Protocols where
    toConfStatement (Uwsgi_Ssl_Protocols c) = c
instance HasContextHttp
 Uwsgi_Ssl_Protocols where
instance HasContextServer
 Uwsgi_Ssl_Protocols where
instance HasContextLocation
 Uwsgi_Ssl_Protocols where


-- | Enables or disables passing of the server name through TLS Server Name Indication extension (SNI, RFC 6066) when establishing a connection with the secured uwsgi server.
uwsgi_ssl_server_name :: [Text] -> ConfStatement
uwsgi_ssl_server_name vs = ConfStatementExpression (Expression "uwsgi_ssl_server_name" vs)

-- | Safe version of 'uwsgi_ssl_server_name'
uwsgi_ssl_server_name_s :: [Text] -> Uwsgi_Ssl_Server_Name
uwsgi_ssl_server_name_s vs = Uwsgi_Ssl_Server_Name$ ConfStatementExpression (Expression "uwsgi_ssl_server_name" vs)
newtype Uwsgi_Ssl_Server_Name = Uwsgi_Ssl_Server_Name ConfStatement
instance ToConfStatement Uwsgi_Ssl_Server_Name where
    toConfStatement (Uwsgi_Ssl_Server_Name c) = c
instance HasContextHttp
 Uwsgi_Ssl_Server_Name where
instance HasContextServer
 Uwsgi_Ssl_Server_Name where
instance HasContextLocation
 Uwsgi_Ssl_Server_Name where


-- | Determines whether SSL sessions can be reused when working with a secured uwsgi server. If the errors “SSL3_GET_FINISHED:digest check failed” appear in the logs, try disabling session reuse.
uwsgi_ssl_session_reuse :: [Text] -> ConfStatement
uwsgi_ssl_session_reuse vs = ConfStatementExpression (Expression "uwsgi_ssl_session_reuse" vs)

-- | Safe version of 'uwsgi_ssl_session_reuse'
uwsgi_ssl_session_reuse_s :: [Text] -> Uwsgi_Ssl_Session_Reuse
uwsgi_ssl_session_reuse_s vs = Uwsgi_Ssl_Session_Reuse$ ConfStatementExpression (Expression "uwsgi_ssl_session_reuse" vs)
newtype Uwsgi_Ssl_Session_Reuse = Uwsgi_Ssl_Session_Reuse ConfStatement
instance ToConfStatement Uwsgi_Ssl_Session_Reuse where
    toConfStatement (Uwsgi_Ssl_Session_Reuse c) = c
instance HasContextHttp
 Uwsgi_Ssl_Session_Reuse where
instance HasContextServer
 Uwsgi_Ssl_Session_Reuse where
instance HasContextLocation
 Uwsgi_Ssl_Session_Reuse where


-- | Specifies a file with trusted CA certificates in the PEM format used to verify the certificate of the secured uwsgi server.
uwsgi_ssl_trusted_certificate :: [Text] -> ConfStatement
uwsgi_ssl_trusted_certificate vs = ConfStatementExpression (Expression "uwsgi_ssl_trusted_certificate" vs)

-- | Safe version of 'uwsgi_ssl_trusted_certificate'
uwsgi_ssl_trusted_certificate_s :: [Text] -> Uwsgi_Ssl_Trusted_Certificate
uwsgi_ssl_trusted_certificate_s vs = Uwsgi_Ssl_Trusted_Certificate$ ConfStatementExpression (Expression "uwsgi_ssl_trusted_certificate" vs)
newtype Uwsgi_Ssl_Trusted_Certificate = Uwsgi_Ssl_Trusted_Certificate ConfStatement
instance ToConfStatement Uwsgi_Ssl_Trusted_Certificate where
    toConfStatement (Uwsgi_Ssl_Trusted_Certificate c) = c
instance HasContextHttp
 Uwsgi_Ssl_Trusted_Certificate where
instance HasContextServer
 Uwsgi_Ssl_Trusted_Certificate where
instance HasContextLocation
 Uwsgi_Ssl_Trusted_Certificate where


-- | Enables or disables verification of the secured uwsgi server certificate.
uwsgi_ssl_verify :: [Text] -> ConfStatement
uwsgi_ssl_verify vs = ConfStatementExpression (Expression "uwsgi_ssl_verify" vs)

-- | Safe version of 'uwsgi_ssl_verify'
uwsgi_ssl_verify_s :: [Text] -> Uwsgi_Ssl_Verify
uwsgi_ssl_verify_s vs = Uwsgi_Ssl_Verify$ ConfStatementExpression (Expression "uwsgi_ssl_verify" vs)
newtype Uwsgi_Ssl_Verify = Uwsgi_Ssl_Verify ConfStatement
instance ToConfStatement Uwsgi_Ssl_Verify where
    toConfStatement (Uwsgi_Ssl_Verify c) = c
instance HasContextHttp
 Uwsgi_Ssl_Verify where
instance HasContextServer
 Uwsgi_Ssl_Verify where
instance HasContextLocation
 Uwsgi_Ssl_Verify where


-- | Sets the verification depth in the secured uwsgi server certificates chain.
uwsgi_ssl_verify_depth :: [Text] -> ConfStatement
uwsgi_ssl_verify_depth vs = ConfStatementExpression (Expression "uwsgi_ssl_verify_depth" vs)

-- | Safe version of 'uwsgi_ssl_verify_depth'
uwsgi_ssl_verify_depth_s :: [Text] -> Uwsgi_Ssl_Verify_Depth
uwsgi_ssl_verify_depth_s vs = Uwsgi_Ssl_Verify_Depth$ ConfStatementExpression (Expression "uwsgi_ssl_verify_depth" vs)
newtype Uwsgi_Ssl_Verify_Depth = Uwsgi_Ssl_Verify_Depth ConfStatement
instance ToConfStatement Uwsgi_Ssl_Verify_Depth where
    toConfStatement (Uwsgi_Ssl_Verify_Depth c) = c
instance HasContextHttp
 Uwsgi_Ssl_Verify_Depth where
instance HasContextServer
 Uwsgi_Ssl_Verify_Depth where
instance HasContextLocation
 Uwsgi_Ssl_Verify_Depth where


-- | Enables saving of files to a disk. The on parameter saves files with paths corresponding to the directives or . The off parameter disables saving of files. In addition, the file name can be set explicitly using the string with variables: uwsgi_store /data/www$original_uri;
uwsgi_store :: [Text] -> ConfStatement
uwsgi_store vs = ConfStatementExpression (Expression "uwsgi_store" vs)

-- | Safe version of 'uwsgi_store'
uwsgi_store_s :: [Text] -> Uwsgi_Store
uwsgi_store_s vs = Uwsgi_Store$ ConfStatementExpression (Expression "uwsgi_store" vs)
newtype Uwsgi_Store = Uwsgi_Store ConfStatement
instance ToConfStatement Uwsgi_Store where
    toConfStatement (Uwsgi_Store c) = c
instance HasContextHttp
 Uwsgi_Store where
instance HasContextServer
 Uwsgi_Store where
instance HasContextLocation
 Uwsgi_Store where


-- | Sets access permissions for newly created files and directories, e.g.: uwsgi_store_access user:rw group:rw all:r;
uwsgi_store_access :: [Text] -> ConfStatement
uwsgi_store_access vs = ConfStatementExpression (Expression "uwsgi_store_access" vs)

-- | Safe version of 'uwsgi_store_access'
uwsgi_store_access_s :: [Text] -> Uwsgi_Store_Access
uwsgi_store_access_s vs = Uwsgi_Store_Access$ ConfStatementExpression (Expression "uwsgi_store_access" vs)
newtype Uwsgi_Store_Access = Uwsgi_Store_Access ConfStatement
instance ToConfStatement Uwsgi_Store_Access where
    toConfStatement (Uwsgi_Store_Access c) = c
instance HasContextHttp
 Uwsgi_Store_Access where
instance HasContextServer
 Uwsgi_Store_Access where
instance HasContextLocation
 Uwsgi_Store_Access where


-- | Limits the size of data written to a temporary file at a time, when buffering of responses from the uwsgi server to temporary files is enabled. By default, size is limited by two buffers set by the and  directives. The maximum size of a temporary file is set by the directive.
uwsgi_temp_file_write_size :: [Text] -> ConfStatement
uwsgi_temp_file_write_size vs = ConfStatementExpression (Expression "uwsgi_temp_file_write_size" vs)

-- | Safe version of 'uwsgi_temp_file_write_size'
uwsgi_temp_file_write_size_s :: [Text] -> Uwsgi_Temp_File_Write_Size
uwsgi_temp_file_write_size_s vs = Uwsgi_Temp_File_Write_Size$ ConfStatementExpression (Expression "uwsgi_temp_file_write_size" vs)
newtype Uwsgi_Temp_File_Write_Size = Uwsgi_Temp_File_Write_Size ConfStatement
instance ToConfStatement Uwsgi_Temp_File_Write_Size where
    toConfStatement (Uwsgi_Temp_File_Write_Size c) = c
instance HasContextHttp
 Uwsgi_Temp_File_Write_Size where
instance HasContextServer
 Uwsgi_Temp_File_Write_Size where
instance HasContextLocation
 Uwsgi_Temp_File_Write_Size where


-- | Defines a directory for storing temporary files with data received from uwsgi servers. Up to three-level subdirectory hierarchy can be used underneath the specified directory. For example, in the following configuration uwsgi_temp_path /spool/nginx/uwsgi_temp 1 2; a temporary file might look like this: /spool/nginx/uwsgi_temp/7/45/00000123457
uwsgi_temp_path :: [Text] -> ConfStatement
uwsgi_temp_path vs = ConfStatementExpression (Expression "uwsgi_temp_path" vs)

-- | Safe version of 'uwsgi_temp_path'
uwsgi_temp_path_s :: [Text] -> Uwsgi_Temp_Path
uwsgi_temp_path_s vs = Uwsgi_Temp_Path$ ConfStatementExpression (Expression "uwsgi_temp_path" vs)
newtype Uwsgi_Temp_Path = Uwsgi_Temp_Path ConfStatement
instance ToConfStatement Uwsgi_Temp_Path where
    toConfStatement (Uwsgi_Temp_Path c) = c
instance HasContextHttp
 Uwsgi_Temp_Path where
instance HasContextServer
 Uwsgi_Temp_Path where
instance HasContextLocation
 Uwsgi_Temp_Path where

