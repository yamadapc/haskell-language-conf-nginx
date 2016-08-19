-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Scgi_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Makes outgoing connections to an SCGI server originate from the specified local IP address with an optional port (1.11.2). Parameter value can contain variables (1.3.12). The special value off (1.3.12) cancels the effect of the scgi_bind directive inherited from the previous configuration level, which allows the system to auto-assign the local IP address and port.
scgi_bind :: [Text] -> ConfStatement
scgi_bind vs = ConfStatementExpression (Expression "scgi_bind" vs)

-- | Safe version of 'scgi_bind'
scgi_bind_s :: [Text] -> Scgi_Bind
scgi_bind_s vs = Scgi_Bind$ ConfStatementExpression (Expression "scgi_bind" vs)
newtype Scgi_Bind = Scgi_Bind ConfStatement
instance ToConfStatement Scgi_Bind where
    toConfStatement (Scgi_Bind c) = c
instance HasContextHttp
 Scgi_Bind where
instance HasContextServer
 Scgi_Bind where
instance HasContextLocation
 Scgi_Bind where


-- | Sets the size of the buffer used for reading the first part of the response received from the SCGI server. This part usually contains a small response header. By default, the buffer size is equal to one memory page. This is either 4K or 8K, depending on a platform. It can be made smaller, however.
scgi_buffer_size :: [Text] -> ConfStatement
scgi_buffer_size vs = ConfStatementExpression (Expression "scgi_buffer_size" vs)

-- | Safe version of 'scgi_buffer_size'
scgi_buffer_size_s :: [Text] -> Scgi_Buffer_Size
scgi_buffer_size_s vs = Scgi_Buffer_Size$ ConfStatementExpression (Expression "scgi_buffer_size" vs)
newtype Scgi_Buffer_Size = Scgi_Buffer_Size ConfStatement
instance ToConfStatement Scgi_Buffer_Size where
    toConfStatement (Scgi_Buffer_Size c) = c
instance HasContextHttp
 Scgi_Buffer_Size where
instance HasContextServer
 Scgi_Buffer_Size where
instance HasContextLocation
 Scgi_Buffer_Size where


-- | Enables or disables buffering of responses from the SCGI server.
scgi_buffering :: [Text] -> ConfStatement
scgi_buffering vs = ConfStatementExpression (Expression "scgi_buffering" vs)

-- | Safe version of 'scgi_buffering'
scgi_buffering_s :: [Text] -> Scgi_Buffering
scgi_buffering_s vs = Scgi_Buffering$ ConfStatementExpression (Expression "scgi_buffering" vs)
newtype Scgi_Buffering = Scgi_Buffering ConfStatement
instance ToConfStatement Scgi_Buffering where
    toConfStatement (Scgi_Buffering c) = c
instance HasContextHttp
 Scgi_Buffering where
instance HasContextServer
 Scgi_Buffering where
instance HasContextLocation
 Scgi_Buffering where


-- | Sets the number and size of the buffers used for reading a response from the SCGI server, for a single connection. By default, the buffer size is equal to one memory page. This is either 4K or 8K, depending on a platform.
scgi_buffers :: [Text] -> ConfStatement
scgi_buffers vs = ConfStatementExpression (Expression "scgi_buffers" vs)

-- | Safe version of 'scgi_buffers'
scgi_buffers_s :: [Text] -> Scgi_Buffers
scgi_buffers_s vs = Scgi_Buffers$ ConfStatementExpression (Expression "scgi_buffers" vs)
newtype Scgi_Buffers = Scgi_Buffers ConfStatement
instance ToConfStatement Scgi_Buffers where
    toConfStatement (Scgi_Buffers c) = c
instance HasContextHttp
 Scgi_Buffers where
instance HasContextServer
 Scgi_Buffers where
instance HasContextLocation
 Scgi_Buffers where


-- | When buffering of responses from the SCGI server is enabled, limits the total size of buffers that can be busy sending a response to the client while the response is not yet fully read. In the meantime, the rest of the buffers can be used for reading the response and, if needed, buffering part of the response to a temporary file. By default, size is limited by the size of two buffers set by the and  directives.
scgi_busy_buffers_size :: [Text] -> ConfStatement
scgi_busy_buffers_size vs = ConfStatementExpression (Expression "scgi_busy_buffers_size" vs)

-- | Safe version of 'scgi_busy_buffers_size'
scgi_busy_buffers_size_s :: [Text] -> Scgi_Busy_Buffers_Size
scgi_busy_buffers_size_s vs = Scgi_Busy_Buffers_Size$ ConfStatementExpression (Expression "scgi_busy_buffers_size" vs)
newtype Scgi_Busy_Buffers_Size = Scgi_Busy_Buffers_Size ConfStatement
instance ToConfStatement Scgi_Busy_Buffers_Size where
    toConfStatement (Scgi_Busy_Buffers_Size c) = c
instance HasContextHttp
 Scgi_Busy_Buffers_Size where
instance HasContextServer
 Scgi_Busy_Buffers_Size where
instance HasContextLocation
 Scgi_Busy_Buffers_Size where


-- | Defines a shared memory zone used for caching. The same zone can be used in several places. Parameter value can contain variables (1.7.9). The off parameter disables caching inherited from the previous configuration level.
scgi_cache :: [Text] -> ConfStatement
scgi_cache vs = ConfStatementExpression (Expression "scgi_cache" vs)

-- | Safe version of 'scgi_cache'
scgi_cache_s :: [Text] -> Scgi_Cache
scgi_cache_s vs = Scgi_Cache$ ConfStatementExpression (Expression "scgi_cache" vs)
newtype Scgi_Cache = Scgi_Cache ConfStatement
instance ToConfStatement Scgi_Cache where
    toConfStatement (Scgi_Cache c) = c
instance HasContextHttp
 Scgi_Cache where
instance HasContextServer
 Scgi_Cache where
instance HasContextLocation
 Scgi_Cache where


-- | Defines conditions under which the response will not be taken from a cache. If at least one value of the string parameters is not empty and is not equal to “0” then the response will not be taken from the cache: scgi_cache_bypass $cookie_nocache $arg_nocache$arg_comment; scgi_cache_bypass $http_pragma    $http_authorization; Can be used along with the  directive.
scgi_cache_bypass :: [Text] -> ConfStatement
scgi_cache_bypass vs = ConfStatementExpression (Expression "scgi_cache_bypass" vs)

-- | Safe version of 'scgi_cache_bypass'
scgi_cache_bypass_s :: [Text] -> Scgi_Cache_Bypass
scgi_cache_bypass_s vs = Scgi_Cache_Bypass$ ConfStatementExpression (Expression "scgi_cache_bypass" vs)
newtype Scgi_Cache_Bypass = Scgi_Cache_Bypass ConfStatement
instance ToConfStatement Scgi_Cache_Bypass where
    toConfStatement (Scgi_Cache_Bypass c) = c
instance HasContextHttp
 Scgi_Cache_Bypass where
instance HasContextServer
 Scgi_Cache_Bypass where
instance HasContextLocation
 Scgi_Cache_Bypass where


-- | Defines a key for caching, for example scgi_cache_key localhost:9000$request_uri;
scgi_cache_key :: [Text] -> ConfStatement
scgi_cache_key vs = ConfStatementExpression (Expression "scgi_cache_key" vs)

-- | Safe version of 'scgi_cache_key'
scgi_cache_key_s :: [Text] -> Scgi_Cache_Key
scgi_cache_key_s vs = Scgi_Cache_Key$ ConfStatementExpression (Expression "scgi_cache_key" vs)
newtype Scgi_Cache_Key = Scgi_Cache_Key ConfStatement
instance ToConfStatement Scgi_Cache_Key where
    toConfStatement (Scgi_Cache_Key c) = c
instance HasContextHttp
 Scgi_Cache_Key where
instance HasContextServer
 Scgi_Cache_Key where
instance HasContextLocation
 Scgi_Cache_Key where


-- | When enabled, only one request at a time will be allowed to populate a new cache element identified according to the directive by passing a request to an SCGI server. Other requests of the same cache element will either wait for a response to appear in the cache or the cache lock for this element to be released, up to the time set by the directive.
scgi_cache_lock :: [Text] -> ConfStatement
scgi_cache_lock vs = ConfStatementExpression (Expression "scgi_cache_lock" vs)

-- | Safe version of 'scgi_cache_lock'
scgi_cache_lock_s :: [Text] -> Scgi_Cache_Lock
scgi_cache_lock_s vs = Scgi_Cache_Lock$ ConfStatementExpression (Expression "scgi_cache_lock" vs)
newtype Scgi_Cache_Lock = Scgi_Cache_Lock ConfStatement
instance ToConfStatement Scgi_Cache_Lock where
    toConfStatement (Scgi_Cache_Lock c) = c
instance HasContextHttp
 Scgi_Cache_Lock where
instance HasContextServer
 Scgi_Cache_Lock where
instance HasContextLocation
 Scgi_Cache_Lock where


-- | If the last request passed to the SCGI server for populating a new cache element has not completed for the specified time, one more request may be passed to the SCGI server.
scgi_cache_lock_age :: [Text] -> ConfStatement
scgi_cache_lock_age vs = ConfStatementExpression (Expression "scgi_cache_lock_age" vs)

-- | Safe version of 'scgi_cache_lock_age'
scgi_cache_lock_age_s :: [Text] -> Scgi_Cache_Lock_Age
scgi_cache_lock_age_s vs = Scgi_Cache_Lock_Age$ ConfStatementExpression (Expression "scgi_cache_lock_age" vs)
newtype Scgi_Cache_Lock_Age = Scgi_Cache_Lock_Age ConfStatement
instance ToConfStatement Scgi_Cache_Lock_Age where
    toConfStatement (Scgi_Cache_Lock_Age c) = c
instance HasContextHttp
 Scgi_Cache_Lock_Age where
instance HasContextServer
 Scgi_Cache_Lock_Age where
instance HasContextLocation
 Scgi_Cache_Lock_Age where


-- | Sets a timeout for . When the time expires, the request will be passed to the SCGI server, however, the response will not be cached. Before 1.7.8, the response could be cached.
scgi_cache_lock_timeout :: [Text] -> ConfStatement
scgi_cache_lock_timeout vs = ConfStatementExpression (Expression "scgi_cache_lock_timeout" vs)

-- | Safe version of 'scgi_cache_lock_timeout'
scgi_cache_lock_timeout_s :: [Text] -> Scgi_Cache_Lock_Timeout
scgi_cache_lock_timeout_s vs = Scgi_Cache_Lock_Timeout$ ConfStatementExpression (Expression "scgi_cache_lock_timeout" vs)
newtype Scgi_Cache_Lock_Timeout = Scgi_Cache_Lock_Timeout ConfStatement
instance ToConfStatement Scgi_Cache_Lock_Timeout where
    toConfStatement (Scgi_Cache_Lock_Timeout c) = c
instance HasContextHttp
 Scgi_Cache_Lock_Timeout where
instance HasContextServer
 Scgi_Cache_Lock_Timeout where
instance HasContextLocation
 Scgi_Cache_Lock_Timeout where


-- | If the client request method is listed in this directive then the response will be cached. “GET” and “HEAD” methods are always added to the list, though it is recommended to specify them explicitly. See also the  directive.
scgi_cache_methods :: [Text] -> ConfStatement
scgi_cache_methods vs = ConfStatementExpression (Expression "scgi_cache_methods" vs)

-- | Safe version of 'scgi_cache_methods'
scgi_cache_methods_s :: [Text] -> Scgi_Cache_Methods
scgi_cache_methods_s vs = Scgi_Cache_Methods$ ConfStatementExpression (Expression "scgi_cache_methods" vs)
newtype Scgi_Cache_Methods = Scgi_Cache_Methods ConfStatement
instance ToConfStatement Scgi_Cache_Methods where
    toConfStatement (Scgi_Cache_Methods c) = c
instance HasContextHttp
 Scgi_Cache_Methods where
instance HasContextServer
 Scgi_Cache_Methods where
instance HasContextLocation
 Scgi_Cache_Methods where


-- | Sets the number of requests after which the response will be cached.
scgi_cache_min_uses :: [Text] -> ConfStatement
scgi_cache_min_uses vs = ConfStatementExpression (Expression "scgi_cache_min_uses" vs)

-- | Safe version of 'scgi_cache_min_uses'
scgi_cache_min_uses_s :: [Text] -> Scgi_Cache_Min_Uses
scgi_cache_min_uses_s vs = Scgi_Cache_Min_Uses$ ConfStatementExpression (Expression "scgi_cache_min_uses" vs)
newtype Scgi_Cache_Min_Uses = Scgi_Cache_Min_Uses ConfStatement
instance ToConfStatement Scgi_Cache_Min_Uses where
    toConfStatement (Scgi_Cache_Min_Uses c) = c
instance HasContextHttp
 Scgi_Cache_Min_Uses where
instance HasContextServer
 Scgi_Cache_Min_Uses where
instance HasContextLocation
 Scgi_Cache_Min_Uses where


-- | Sets the path and other parameters of a cache. Cache data are stored in files. The file name in a cache is a result of applying the MD5 function to the cache key. The levels parameter defines hierarchy levels of a cache. For example, in the following configuration scgi_cache_path /data/nginx/cache levels=1:2 keys_zone=one:10m; file names in a cache will look like this: /data/nginx/cache/c/29/b7f54b2df7773722d382f4809d65029c
scgi_cache_path :: [Text] -> ConfStatement
scgi_cache_path vs = ConfStatementExpression (Expression "scgi_cache_path" vs)

-- | Safe version of 'scgi_cache_path'
scgi_cache_path_s :: [Text] -> Scgi_Cache_Path
scgi_cache_path_s vs = Scgi_Cache_Path$ ConfStatementExpression (Expression "scgi_cache_path" vs)
newtype Scgi_Cache_Path = Scgi_Cache_Path ConfStatement
instance ToConfStatement Scgi_Cache_Path where
    toConfStatement (Scgi_Cache_Path c) = c
instance HasContextHttp
 Scgi_Cache_Path where


-- | Defines conditions under which the request will be considered a cache purge request. If at least one value of the string parameters is not empty and is not equal to “0” then the cache entry with a corresponding cache key is removed. The result of successful operation is indicated by returning the  response.
scgi_cache_purge :: [Text] -> ConfStatement
scgi_cache_purge vs = ConfStatementExpression (Expression "scgi_cache_purge" vs)

-- | Safe version of 'scgi_cache_purge'
scgi_cache_purge_s :: [Text] -> Scgi_Cache_Purge
scgi_cache_purge_s vs = Scgi_Cache_Purge$ ConfStatementExpression (Expression "scgi_cache_purge" vs)
newtype Scgi_Cache_Purge = Scgi_Cache_Purge ConfStatement
instance ToConfStatement Scgi_Cache_Purge where
    toConfStatement (Scgi_Cache_Purge c) = c
instance HasContextHttp
 Scgi_Cache_Purge where
instance HasContextServer
 Scgi_Cache_Purge where
instance HasContextLocation
 Scgi_Cache_Purge where


-- | Enables revalidation of expired cache items using conditional requests with the If-Modified-Since and If-None-Match header fields.
scgi_cache_revalidate :: [Text] -> ConfStatement
scgi_cache_revalidate vs = ConfStatementExpression (Expression "scgi_cache_revalidate" vs)

-- | Safe version of 'scgi_cache_revalidate'
scgi_cache_revalidate_s :: [Text] -> Scgi_Cache_Revalidate
scgi_cache_revalidate_s vs = Scgi_Cache_Revalidate$ ConfStatementExpression (Expression "scgi_cache_revalidate" vs)
newtype Scgi_Cache_Revalidate = Scgi_Cache_Revalidate ConfStatement
instance ToConfStatement Scgi_Cache_Revalidate where
    toConfStatement (Scgi_Cache_Revalidate c) = c
instance HasContextHttp
 Scgi_Cache_Revalidate where
instance HasContextServer
 Scgi_Cache_Revalidate where
instance HasContextLocation
 Scgi_Cache_Revalidate where


-- | Determines in which cases a stale cached response can be used when an error occurs during communication with the SCGI server. The directive’s parameters match the parameters of the directive.
scgi_cache_use_stale :: [Text] -> ConfStatement
scgi_cache_use_stale vs = ConfStatementExpression (Expression "scgi_cache_use_stale" vs)

-- | Safe version of 'scgi_cache_use_stale'
scgi_cache_use_stale_s :: [Text] -> Scgi_Cache_Use_Stale
scgi_cache_use_stale_s vs = Scgi_Cache_Use_Stale$ ConfStatementExpression (Expression "scgi_cache_use_stale" vs)
newtype Scgi_Cache_Use_Stale = Scgi_Cache_Use_Stale ConfStatement
instance ToConfStatement Scgi_Cache_Use_Stale where
    toConfStatement (Scgi_Cache_Use_Stale c) = c
instance HasContextHttp
 Scgi_Cache_Use_Stale where
instance HasContextServer
 Scgi_Cache_Use_Stale where
instance HasContextLocation
 Scgi_Cache_Use_Stale where


-- | Sets caching time for different response codes. For example, the following directives scgi_cache_valid 200 302 10m; scgi_cache_valid 404      1m; set 10 minutes of caching for responses with codes 200 and 302 and 1 minute for responses with code 404.
scgi_cache_valid :: [Text] -> ConfStatement
scgi_cache_valid vs = ConfStatementExpression (Expression "scgi_cache_valid" vs)

-- | Safe version of 'scgi_cache_valid'
scgi_cache_valid_s :: [Text] -> Scgi_Cache_Valid
scgi_cache_valid_s vs = Scgi_Cache_Valid$ ConfStatementExpression (Expression "scgi_cache_valid" vs)
newtype Scgi_Cache_Valid = Scgi_Cache_Valid ConfStatement
instance ToConfStatement Scgi_Cache_Valid where
    toConfStatement (Scgi_Cache_Valid c) = c
instance HasContextHttp
 Scgi_Cache_Valid where
instance HasContextServer
 Scgi_Cache_Valid where
instance HasContextLocation
 Scgi_Cache_Valid where


-- | Defines a timeout for establishing a connection with an SCGI server. It should be noted that this timeout cannot usually exceed 75 seconds.
scgi_connect_timeout :: [Text] -> ConfStatement
scgi_connect_timeout vs = ConfStatementExpression (Expression "scgi_connect_timeout" vs)

-- | Safe version of 'scgi_connect_timeout'
scgi_connect_timeout_s :: [Text] -> Scgi_Connect_Timeout
scgi_connect_timeout_s vs = Scgi_Connect_Timeout$ ConfStatementExpression (Expression "scgi_connect_timeout" vs)
newtype Scgi_Connect_Timeout = Scgi_Connect_Timeout ConfStatement
instance ToConfStatement Scgi_Connect_Timeout where
    toConfStatement (Scgi_Connect_Timeout c) = c
instance HasContextHttp
 Scgi_Connect_Timeout where
instance HasContextServer
 Scgi_Connect_Timeout where
instance HasContextLocation
 Scgi_Connect_Timeout where


-- | Enables byte-range support for both cached and uncached responses from the SCGI server regardless of the Accept-Ranges field in these responses.
scgi_force_ranges :: [Text] -> ConfStatement
scgi_force_ranges vs = ConfStatementExpression (Expression "scgi_force_ranges" vs)

-- | Safe version of 'scgi_force_ranges'
scgi_force_ranges_s :: [Text] -> Scgi_Force_Ranges
scgi_force_ranges_s vs = Scgi_Force_Ranges$ ConfStatementExpression (Expression "scgi_force_ranges" vs)
newtype Scgi_Force_Ranges = Scgi_Force_Ranges ConfStatement
instance ToConfStatement Scgi_Force_Ranges where
    toConfStatement (Scgi_Force_Ranges c) = c
instance HasContextHttp
 Scgi_Force_Ranges where
instance HasContextServer
 Scgi_Force_Ranges where
instance HasContextLocation
 Scgi_Force_Ranges where


-- | By default, nginx does not pass the header fields Status and X-Accel-... from the response of an SCGI server to a client. The scgi_hide_header directive sets additional fields that will not be passed. If, on the contrary, the passing of fields needs to be permitted, the  directive can be used.
scgi_hide_header :: [Text] -> ConfStatement
scgi_hide_header vs = ConfStatementExpression (Expression "scgi_hide_header" vs)

-- | Safe version of 'scgi_hide_header'
scgi_hide_header_s :: [Text] -> Scgi_Hide_Header
scgi_hide_header_s vs = Scgi_Hide_Header$ ConfStatementExpression (Expression "scgi_hide_header" vs)
newtype Scgi_Hide_Header = Scgi_Hide_Header ConfStatement
instance ToConfStatement Scgi_Hide_Header where
    toConfStatement (Scgi_Hide_Header c) = c
instance HasContextHttp
 Scgi_Hide_Header where
instance HasContextServer
 Scgi_Hide_Header where
instance HasContextLocation
 Scgi_Hide_Header where


-- | Determines whether the connection with an SCGI server should be closed when a client closes the connection without waiting for a response.
scgi_ignore_client_abort :: [Text] -> ConfStatement
scgi_ignore_client_abort vs = ConfStatementExpression (Expression "scgi_ignore_client_abort" vs)

-- | Safe version of 'scgi_ignore_client_abort'
scgi_ignore_client_abort_s :: [Text] -> Scgi_Ignore_Client_Abort
scgi_ignore_client_abort_s vs = Scgi_Ignore_Client_Abort$ ConfStatementExpression (Expression "scgi_ignore_client_abort" vs)
newtype Scgi_Ignore_Client_Abort = Scgi_Ignore_Client_Abort ConfStatement
instance ToConfStatement Scgi_Ignore_Client_Abort where
    toConfStatement (Scgi_Ignore_Client_Abort c) = c
instance HasContextHttp
 Scgi_Ignore_Client_Abort where
instance HasContextServer
 Scgi_Ignore_Client_Abort where
instance HasContextLocation
 Scgi_Ignore_Client_Abort where


-- | Disables processing of certain response header fields from the SCGI server. The following fields can be ignored: X-Accel-Redirect, X-Accel-Expires, X-Accel-Limit-Rate (1.1.6), X-Accel-Buffering (1.1.6), X-Accel-Charset (1.1.6), Expires, Cache-Control, Set-Cookie (0.8.44), and Vary (1.7.7).
scgi_ignore_headers :: [Text] -> ConfStatement
scgi_ignore_headers vs = ConfStatementExpression (Expression "scgi_ignore_headers" vs)

-- | Safe version of 'scgi_ignore_headers'
scgi_ignore_headers_s :: [Text] -> Scgi_Ignore_Headers
scgi_ignore_headers_s vs = Scgi_Ignore_Headers$ ConfStatementExpression (Expression "scgi_ignore_headers" vs)
newtype Scgi_Ignore_Headers = Scgi_Ignore_Headers ConfStatement
instance ToConfStatement Scgi_Ignore_Headers where
    toConfStatement (Scgi_Ignore_Headers c) = c
instance HasContextHttp
 Scgi_Ignore_Headers where
instance HasContextServer
 Scgi_Ignore_Headers where
instance HasContextLocation
 Scgi_Ignore_Headers where


-- | Determines whether an SCGI server responses with codes greater than or equal to 300 should be passed to a client or be redirected to nginx for processing with the  directive.
scgi_intercept_errors :: [Text] -> ConfStatement
scgi_intercept_errors vs = ConfStatementExpression (Expression "scgi_intercept_errors" vs)

-- | Safe version of 'scgi_intercept_errors'
scgi_intercept_errors_s :: [Text] -> Scgi_Intercept_Errors
scgi_intercept_errors_s vs = Scgi_Intercept_Errors$ ConfStatementExpression (Expression "scgi_intercept_errors" vs)
newtype Scgi_Intercept_Errors = Scgi_Intercept_Errors ConfStatement
instance ToConfStatement Scgi_Intercept_Errors where
    toConfStatement (Scgi_Intercept_Errors c) = c
instance HasContextHttp
 Scgi_Intercept_Errors where
instance HasContextServer
 Scgi_Intercept_Errors where
instance HasContextLocation
 Scgi_Intercept_Errors where


-- | Limits the speed of reading the response from the SCGI server. The rate is specified in bytes per second. The zero value disables rate limiting. The limit is set per a request, and so if nginx simultaneously opens two connections to the SCGI server, the overall rate will be twice as much as the specified limit. The limitation works only if buffering of responses from the SCGI server is enabled.
scgi_limit_rate :: [Text] -> ConfStatement
scgi_limit_rate vs = ConfStatementExpression (Expression "scgi_limit_rate" vs)

-- | Safe version of 'scgi_limit_rate'
scgi_limit_rate_s :: [Text] -> Scgi_Limit_Rate
scgi_limit_rate_s vs = Scgi_Limit_Rate$ ConfStatementExpression (Expression "scgi_limit_rate" vs)
newtype Scgi_Limit_Rate = Scgi_Limit_Rate ConfStatement
instance ToConfStatement Scgi_Limit_Rate where
    toConfStatement (Scgi_Limit_Rate c) = c
instance HasContextHttp
 Scgi_Limit_Rate where
instance HasContextServer
 Scgi_Limit_Rate where
instance HasContextLocation
 Scgi_Limit_Rate where


-- | When buffering of responses from the SCGI server is enabled, and the whole response does not fit into the buffers set by the  and directives, a part of the response can be saved to a temporary file. This directive sets the maximum size of the temporary file. The size of data written to the temporary file at a time is set by the  directive.
scgi_max_temp_file_size :: [Text] -> ConfStatement
scgi_max_temp_file_size vs = ConfStatementExpression (Expression "scgi_max_temp_file_size" vs)

-- | Safe version of 'scgi_max_temp_file_size'
scgi_max_temp_file_size_s :: [Text] -> Scgi_Max_Temp_File_Size
scgi_max_temp_file_size_s vs = Scgi_Max_Temp_File_Size$ ConfStatementExpression (Expression "scgi_max_temp_file_size" vs)
newtype Scgi_Max_Temp_File_Size = Scgi_Max_Temp_File_Size ConfStatement
instance ToConfStatement Scgi_Max_Temp_File_Size where
    toConfStatement (Scgi_Max_Temp_File_Size c) = c
instance HasContextHttp
 Scgi_Max_Temp_File_Size where
instance HasContextServer
 Scgi_Max_Temp_File_Size where
instance HasContextLocation
 Scgi_Max_Temp_File_Size where


-- | Specifies in which cases a request should be passed to the next server: error an error occurred while establishing a connection with the server, passing a request to it, or reading the response header; timeout a timeout has occurred while establishing a connection with the server, passing a request to it, or reading the response header; invalid_header a server returned an empty or invalid response; http_500 a server returned a response with the code 500; http_503 a server returned a response with the code 503; http_403 a server returned a response with the code 403; http_404 a server returned a response with the code 404; non_idempotent normally, requests with a non-idempotent method (POST, LOCK, PATCH) are not passed to the next server if a request has been sent to an upstream server (1.9.13); enabling this option explicitly allows retrying such requests; off disables passing a request to the next server.
scgi_next_upstream :: [Text] -> ConfStatement
scgi_next_upstream vs = ConfStatementExpression (Expression "scgi_next_upstream" vs)

-- | Safe version of 'scgi_next_upstream'
scgi_next_upstream_s :: [Text] -> Scgi_Next_Upstream
scgi_next_upstream_s vs = Scgi_Next_Upstream$ ConfStatementExpression (Expression "scgi_next_upstream" vs)
newtype Scgi_Next_Upstream = Scgi_Next_Upstream ConfStatement
instance ToConfStatement Scgi_Next_Upstream where
    toConfStatement (Scgi_Next_Upstream c) = c
instance HasContextHttp
 Scgi_Next_Upstream where
instance HasContextServer
 Scgi_Next_Upstream where
instance HasContextLocation
 Scgi_Next_Upstream where


-- | Limits the time during which a request can be passed to the next server. The 0 value turns off this limitation.
scgi_next_upstream_timeout :: [Text] -> ConfStatement
scgi_next_upstream_timeout vs = ConfStatementExpression (Expression "scgi_next_upstream_timeout" vs)

-- | Safe version of 'scgi_next_upstream_timeout'
scgi_next_upstream_timeout_s :: [Text] -> Scgi_Next_Upstream_Timeout
scgi_next_upstream_timeout_s vs = Scgi_Next_Upstream_Timeout$ ConfStatementExpression (Expression "scgi_next_upstream_timeout" vs)
newtype Scgi_Next_Upstream_Timeout = Scgi_Next_Upstream_Timeout ConfStatement
instance ToConfStatement Scgi_Next_Upstream_Timeout where
    toConfStatement (Scgi_Next_Upstream_Timeout c) = c
instance HasContextHttp
 Scgi_Next_Upstream_Timeout where
instance HasContextServer
 Scgi_Next_Upstream_Timeout where
instance HasContextLocation
 Scgi_Next_Upstream_Timeout where


-- | Limits the number of possible tries for passing a request to the next server. The 0 value turns off this limitation.
scgi_next_upstream_tries :: [Text] -> ConfStatement
scgi_next_upstream_tries vs = ConfStatementExpression (Expression "scgi_next_upstream_tries" vs)

-- | Safe version of 'scgi_next_upstream_tries'
scgi_next_upstream_tries_s :: [Text] -> Scgi_Next_Upstream_Tries
scgi_next_upstream_tries_s vs = Scgi_Next_Upstream_Tries$ ConfStatementExpression (Expression "scgi_next_upstream_tries" vs)
newtype Scgi_Next_Upstream_Tries = Scgi_Next_Upstream_Tries ConfStatement
instance ToConfStatement Scgi_Next_Upstream_Tries where
    toConfStatement (Scgi_Next_Upstream_Tries c) = c
instance HasContextHttp
 Scgi_Next_Upstream_Tries where
instance HasContextServer
 Scgi_Next_Upstream_Tries where
instance HasContextLocation
 Scgi_Next_Upstream_Tries where


-- | Defines conditions under which the response will not be saved to a cache. If at least one value of the string parameters is not empty and is not equal to “0” then the response will not be saved: scgi_no_cache $cookie_nocache $arg_nocache$arg_comment; scgi_no_cache $http_pragma    $http_authorization; Can be used along with the  directive.
scgi_no_cache :: [Text] -> ConfStatement
scgi_no_cache vs = ConfStatementExpression (Expression "scgi_no_cache" vs)

-- | Safe version of 'scgi_no_cache'
scgi_no_cache_s :: [Text] -> Scgi_No_Cache
scgi_no_cache_s vs = Scgi_No_Cache$ ConfStatementExpression (Expression "scgi_no_cache" vs)
newtype Scgi_No_Cache = Scgi_No_Cache ConfStatement
instance ToConfStatement Scgi_No_Cache where
    toConfStatement (Scgi_No_Cache c) = c
instance HasContextHttp
 Scgi_No_Cache where
instance HasContextServer
 Scgi_No_Cache where
instance HasContextLocation
 Scgi_No_Cache where


-- | Sets a parameter that should be passed to the SCGI server. The value can contain text, variables, and their combination. These directives are inherited from the previous level if and only if there are no scgi_param directives defined on the current level.
scgi_param :: [Text] -> ConfStatement
scgi_param vs = ConfStatementExpression (Expression "scgi_param" vs)

-- | Safe version of 'scgi_param'
scgi_param_s :: [Text] -> Scgi_Param
scgi_param_s vs = Scgi_Param$ ConfStatementExpression (Expression "scgi_param" vs)
newtype Scgi_Param = Scgi_Param ConfStatement
instance ToConfStatement Scgi_Param where
    toConfStatement (Scgi_Param c) = c
instance HasContextHttp
 Scgi_Param where
instance HasContextServer
 Scgi_Param where
instance HasContextLocation
 Scgi_Param where


-- | Sets the address of an SCGI server. The address can be specified as a domain name or IP address, and a port: scgi_pass localhost:9000; or as a UNIX-domain socket path: scgi_pass unix:/tmp/scgi.socket;
scgi_pass :: [Text] -> ConfStatement
scgi_pass vs = ConfStatementExpression (Expression "scgi_pass" vs)

-- | Safe version of 'scgi_pass'
scgi_pass_s :: [Text] -> Scgi_Pass
scgi_pass_s vs = Scgi_Pass$ ConfStatementExpression (Expression "scgi_pass" vs)
newtype Scgi_Pass = Scgi_Pass ConfStatement
instance ToConfStatement Scgi_Pass where
    toConfStatement (Scgi_Pass c) = c
instance HasContextLocation
 Scgi_Pass where


-- | Permits passing otherwise disabled header fields from an SCGI server to a client.
scgi_pass_header :: [Text] -> ConfStatement
scgi_pass_header vs = ConfStatementExpression (Expression "scgi_pass_header" vs)

-- | Safe version of 'scgi_pass_header'
scgi_pass_header_s :: [Text] -> Scgi_Pass_Header
scgi_pass_header_s vs = Scgi_Pass_Header$ ConfStatementExpression (Expression "scgi_pass_header" vs)
newtype Scgi_Pass_Header = Scgi_Pass_Header ConfStatement
instance ToConfStatement Scgi_Pass_Header where
    toConfStatement (Scgi_Pass_Header c) = c
instance HasContextHttp
 Scgi_Pass_Header where
instance HasContextServer
 Scgi_Pass_Header where
instance HasContextLocation
 Scgi_Pass_Header where


-- | Indicates whether the original request body is passed to the SCGI server. See also the  directive.
scgi_pass_request_body :: [Text] -> ConfStatement
scgi_pass_request_body vs = ConfStatementExpression (Expression "scgi_pass_request_body" vs)

-- | Safe version of 'scgi_pass_request_body'
scgi_pass_request_body_s :: [Text] -> Scgi_Pass_Request_Body
scgi_pass_request_body_s vs = Scgi_Pass_Request_Body$ ConfStatementExpression (Expression "scgi_pass_request_body" vs)
newtype Scgi_Pass_Request_Body = Scgi_Pass_Request_Body ConfStatement
instance ToConfStatement Scgi_Pass_Request_Body where
    toConfStatement (Scgi_Pass_Request_Body c) = c
instance HasContextHttp
 Scgi_Pass_Request_Body where
instance HasContextServer
 Scgi_Pass_Request_Body where
instance HasContextLocation
 Scgi_Pass_Request_Body where


-- | Indicates whether the header fields of the original request are passed to the SCGI server. See also the  directive.
scgi_pass_request_headers :: [Text] -> ConfStatement
scgi_pass_request_headers vs = ConfStatementExpression (Expression "scgi_pass_request_headers" vs)

-- | Safe version of 'scgi_pass_request_headers'
scgi_pass_request_headers_s :: [Text] -> Scgi_Pass_Request_Headers
scgi_pass_request_headers_s vs = Scgi_Pass_Request_Headers$ ConfStatementExpression (Expression "scgi_pass_request_headers" vs)
newtype Scgi_Pass_Request_Headers = Scgi_Pass_Request_Headers ConfStatement
instance ToConfStatement Scgi_Pass_Request_Headers where
    toConfStatement (Scgi_Pass_Request_Headers c) = c
instance HasContextHttp
 Scgi_Pass_Request_Headers where
instance HasContextServer
 Scgi_Pass_Request_Headers where
instance HasContextLocation
 Scgi_Pass_Request_Headers where


-- | Defines a timeout for reading a response from the SCGI server. The timeout is set only between two successive read operations, not for the transmission of the whole response. If the SCGI server does not transmit anything within this time, the connection is closed.
scgi_read_timeout :: [Text] -> ConfStatement
scgi_read_timeout vs = ConfStatementExpression (Expression "scgi_read_timeout" vs)

-- | Safe version of 'scgi_read_timeout'
scgi_read_timeout_s :: [Text] -> Scgi_Read_Timeout
scgi_read_timeout_s vs = Scgi_Read_Timeout$ ConfStatementExpression (Expression "scgi_read_timeout" vs)
newtype Scgi_Read_Timeout = Scgi_Read_Timeout ConfStatement
instance ToConfStatement Scgi_Read_Timeout where
    toConfStatement (Scgi_Read_Timeout c) = c
instance HasContextHttp
 Scgi_Read_Timeout where
instance HasContextServer
 Scgi_Read_Timeout where
instance HasContextLocation
 Scgi_Read_Timeout where


-- | Enables or disables buffering of a client request body.
scgi_request_buffering :: [Text] -> ConfStatement
scgi_request_buffering vs = ConfStatementExpression (Expression "scgi_request_buffering" vs)

-- | Safe version of 'scgi_request_buffering'
scgi_request_buffering_s :: [Text] -> Scgi_Request_Buffering
scgi_request_buffering_s vs = Scgi_Request_Buffering$ ConfStatementExpression (Expression "scgi_request_buffering" vs)
newtype Scgi_Request_Buffering = Scgi_Request_Buffering ConfStatement
instance ToConfStatement Scgi_Request_Buffering where
    toConfStatement (Scgi_Request_Buffering c) = c
instance HasContextHttp
 Scgi_Request_Buffering where
instance HasContextServer
 Scgi_Request_Buffering where
instance HasContextLocation
 Scgi_Request_Buffering where


-- | Sets a timeout for transmitting a request to the SCGI server. The timeout is set only between two successive write operations, not for the transmission of the whole request. If the SCGI server does not receive anything within this time, the connection is closed.
scgi_send_timeout :: [Text] -> ConfStatement
scgi_send_timeout vs = ConfStatementExpression (Expression "scgi_send_timeout" vs)

-- | Safe version of 'scgi_send_timeout'
scgi_send_timeout_s :: [Text] -> Scgi_Send_Timeout
scgi_send_timeout_s vs = Scgi_Send_Timeout$ ConfStatementExpression (Expression "scgi_send_timeout" vs)
newtype Scgi_Send_Timeout = Scgi_Send_Timeout ConfStatement
instance ToConfStatement Scgi_Send_Timeout where
    toConfStatement (Scgi_Send_Timeout c) = c
instance HasContextHttp
 Scgi_Send_Timeout where
instance HasContextServer
 Scgi_Send_Timeout where
instance HasContextLocation
 Scgi_Send_Timeout where


-- | Enables saving of files to a disk. The on parameter saves files with paths corresponding to the directives or . The off parameter disables saving of files. In addition, the file name can be set explicitly using the string with variables: scgi_store /data/www$original_uri;
scgi_store :: [Text] -> ConfStatement
scgi_store vs = ConfStatementExpression (Expression "scgi_store" vs)

-- | Safe version of 'scgi_store'
scgi_store_s :: [Text] -> Scgi_Store
scgi_store_s vs = Scgi_Store$ ConfStatementExpression (Expression "scgi_store" vs)
newtype Scgi_Store = Scgi_Store ConfStatement
instance ToConfStatement Scgi_Store where
    toConfStatement (Scgi_Store c) = c
instance HasContextHttp
 Scgi_Store where
instance HasContextServer
 Scgi_Store where
instance HasContextLocation
 Scgi_Store where


-- | Sets access permissions for newly created files and directories, e.g.: scgi_store_access user:rw group:rw all:r;
scgi_store_access :: [Text] -> ConfStatement
scgi_store_access vs = ConfStatementExpression (Expression "scgi_store_access" vs)

-- | Safe version of 'scgi_store_access'
scgi_store_access_s :: [Text] -> Scgi_Store_Access
scgi_store_access_s vs = Scgi_Store_Access$ ConfStatementExpression (Expression "scgi_store_access" vs)
newtype Scgi_Store_Access = Scgi_Store_Access ConfStatement
instance ToConfStatement Scgi_Store_Access where
    toConfStatement (Scgi_Store_Access c) = c
instance HasContextHttp
 Scgi_Store_Access where
instance HasContextServer
 Scgi_Store_Access where
instance HasContextLocation
 Scgi_Store_Access where


-- | Limits the size of data written to a temporary file at a time, when buffering of responses from the SCGI server to temporary files is enabled. By default, size is limited by two buffers set by the and  directives. The maximum size of a temporary file is set by the directive.
scgi_temp_file_write_size :: [Text] -> ConfStatement
scgi_temp_file_write_size vs = ConfStatementExpression (Expression "scgi_temp_file_write_size" vs)

-- | Safe version of 'scgi_temp_file_write_size'
scgi_temp_file_write_size_s :: [Text] -> Scgi_Temp_File_Write_Size
scgi_temp_file_write_size_s vs = Scgi_Temp_File_Write_Size$ ConfStatementExpression (Expression "scgi_temp_file_write_size" vs)
newtype Scgi_Temp_File_Write_Size = Scgi_Temp_File_Write_Size ConfStatement
instance ToConfStatement Scgi_Temp_File_Write_Size where
    toConfStatement (Scgi_Temp_File_Write_Size c) = c
instance HasContextHttp
 Scgi_Temp_File_Write_Size where
instance HasContextServer
 Scgi_Temp_File_Write_Size where
instance HasContextLocation
 Scgi_Temp_File_Write_Size where


-- | Defines a directory for storing temporary files with data received from SCGI servers. Up to three-level subdirectory hierarchy can be used underneath the specified directory. For example, in the following configuration scgi_temp_path /spool/nginx/scgi_temp 1 2; a temporary file might look like this: /spool/nginx/scgi_temp/7/45/00000123457
scgi_temp_path :: [Text] -> ConfStatement
scgi_temp_path vs = ConfStatementExpression (Expression "scgi_temp_path" vs)

-- | Safe version of 'scgi_temp_path'
scgi_temp_path_s :: [Text] -> Scgi_Temp_Path
scgi_temp_path_s vs = Scgi_Temp_Path$ ConfStatementExpression (Expression "scgi_temp_path" vs)
newtype Scgi_Temp_Path = Scgi_Temp_Path ConfStatement
instance ToConfStatement Scgi_Temp_Path where
    toConfStatement (Scgi_Temp_Path c) = c
instance HasContextHttp
 Scgi_Temp_Path where
instance HasContextServer
 Scgi_Temp_Path where
instance HasContextLocation
 Scgi_Temp_Path where

