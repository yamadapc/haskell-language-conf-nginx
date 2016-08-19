-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Fastcgi_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Makes outgoing connections to a FastCGI server originate from the specified local IP address with an optional port (1.11.2). Parameter value can contain variables (1.3.12). The special value off (1.3.12) cancels the effect of the fastcgi_bind directive inherited from the previous configuration level, which allows the system to auto-assign the local IP address and port.
fastcgi_bind :: [Text] -> ConfStatement
fastcgi_bind vs = ConfStatementExpression (Expression "fastcgi_bind" vs)

-- | Safe version of 'fastcgi_bind'
fastcgi_bind_s :: [Text] -> Fastcgi_Bind
fastcgi_bind_s vs = Fastcgi_Bind$ ConfStatementExpression (Expression "fastcgi_bind" vs)
newtype Fastcgi_Bind = Fastcgi_Bind ConfStatement
instance ToConfStatement Fastcgi_Bind where
    toConfStatement (Fastcgi_Bind c) = c
instance HasContextHttp
 Fastcgi_Bind where
instance HasContextServer
 Fastcgi_Bind where
instance HasContextLocation
 Fastcgi_Bind where


-- | Sets the size of the buffer used for reading the first part of the response received from the FastCGI server. This part usually contains a small response header. By default, the buffer size is equal to one memory page. This is either 4K or 8K, depending on a platform. It can be made smaller, however.
fastcgi_buffer_size :: [Text] -> ConfStatement
fastcgi_buffer_size vs = ConfStatementExpression (Expression "fastcgi_buffer_size" vs)

-- | Safe version of 'fastcgi_buffer_size'
fastcgi_buffer_size_s :: [Text] -> Fastcgi_Buffer_Size
fastcgi_buffer_size_s vs = Fastcgi_Buffer_Size$ ConfStatementExpression (Expression "fastcgi_buffer_size" vs)
newtype Fastcgi_Buffer_Size = Fastcgi_Buffer_Size ConfStatement
instance ToConfStatement Fastcgi_Buffer_Size where
    toConfStatement (Fastcgi_Buffer_Size c) = c
instance HasContextHttp
 Fastcgi_Buffer_Size where
instance HasContextServer
 Fastcgi_Buffer_Size where
instance HasContextLocation
 Fastcgi_Buffer_Size where


-- | Enables or disables buffering of responses from the FastCGI server.
fastcgi_buffering :: [Text] -> ConfStatement
fastcgi_buffering vs = ConfStatementExpression (Expression "fastcgi_buffering" vs)

-- | Safe version of 'fastcgi_buffering'
fastcgi_buffering_s :: [Text] -> Fastcgi_Buffering
fastcgi_buffering_s vs = Fastcgi_Buffering$ ConfStatementExpression (Expression "fastcgi_buffering" vs)
newtype Fastcgi_Buffering = Fastcgi_Buffering ConfStatement
instance ToConfStatement Fastcgi_Buffering where
    toConfStatement (Fastcgi_Buffering c) = c
instance HasContextHttp
 Fastcgi_Buffering where
instance HasContextServer
 Fastcgi_Buffering where
instance HasContextLocation
 Fastcgi_Buffering where


-- | Sets the number and size of the buffers used for reading a response from the FastCGI server, for a single connection. By default, the buffer size is equal to one memory page. This is either 4K or 8K, depending on a platform.
fastcgi_buffers :: [Text] -> ConfStatement
fastcgi_buffers vs = ConfStatementExpression (Expression "fastcgi_buffers" vs)

-- | Safe version of 'fastcgi_buffers'
fastcgi_buffers_s :: [Text] -> Fastcgi_Buffers
fastcgi_buffers_s vs = Fastcgi_Buffers$ ConfStatementExpression (Expression "fastcgi_buffers" vs)
newtype Fastcgi_Buffers = Fastcgi_Buffers ConfStatement
instance ToConfStatement Fastcgi_Buffers where
    toConfStatement (Fastcgi_Buffers c) = c
instance HasContextHttp
 Fastcgi_Buffers where
instance HasContextServer
 Fastcgi_Buffers where
instance HasContextLocation
 Fastcgi_Buffers where


-- | When buffering of responses from the FastCGI server is enabled, limits the total size of buffers that can be busy sending a response to the client while the response is not yet fully read. In the meantime, the rest of the buffers can be used for reading the response and, if needed, buffering part of the response to a temporary file. By default, size is limited by the size of two buffers set by the and  directives.
fastcgi_busy_buffers_size :: [Text] -> ConfStatement
fastcgi_busy_buffers_size vs = ConfStatementExpression (Expression "fastcgi_busy_buffers_size" vs)

-- | Safe version of 'fastcgi_busy_buffers_size'
fastcgi_busy_buffers_size_s :: [Text] -> Fastcgi_Busy_Buffers_Size
fastcgi_busy_buffers_size_s vs = Fastcgi_Busy_Buffers_Size$ ConfStatementExpression (Expression "fastcgi_busy_buffers_size" vs)
newtype Fastcgi_Busy_Buffers_Size = Fastcgi_Busy_Buffers_Size ConfStatement
instance ToConfStatement Fastcgi_Busy_Buffers_Size where
    toConfStatement (Fastcgi_Busy_Buffers_Size c) = c
instance HasContextHttp
 Fastcgi_Busy_Buffers_Size where
instance HasContextServer
 Fastcgi_Busy_Buffers_Size where
instance HasContextLocation
 Fastcgi_Busy_Buffers_Size where


-- | Defines a shared memory zone used for caching. The same zone can be used in several places. Parameter value can contain variables (1.7.9). The off parameter disables caching inherited from the previous configuration level.
fastcgi_cache :: [Text] -> ConfStatement
fastcgi_cache vs = ConfStatementExpression (Expression "fastcgi_cache" vs)

-- | Safe version of 'fastcgi_cache'
fastcgi_cache_s :: [Text] -> Fastcgi_Cache
fastcgi_cache_s vs = Fastcgi_Cache$ ConfStatementExpression (Expression "fastcgi_cache" vs)
newtype Fastcgi_Cache = Fastcgi_Cache ConfStatement
instance ToConfStatement Fastcgi_Cache where
    toConfStatement (Fastcgi_Cache c) = c
instance HasContextHttp
 Fastcgi_Cache where
instance HasContextServer
 Fastcgi_Cache where
instance HasContextLocation
 Fastcgi_Cache where


-- | Defines conditions under which the response will not be taken from a cache. If at least one value of the string parameters is not empty and is not equal to “0” then the response will not be taken from the cache: fastcgi_cache_bypass $cookie_nocache $arg_nocache$arg_comment; fastcgi_cache_bypass $http_pragma    $http_authorization; Can be used along with the  directive.
fastcgi_cache_bypass :: [Text] -> ConfStatement
fastcgi_cache_bypass vs = ConfStatementExpression (Expression "fastcgi_cache_bypass" vs)

-- | Safe version of 'fastcgi_cache_bypass'
fastcgi_cache_bypass_s :: [Text] -> Fastcgi_Cache_Bypass
fastcgi_cache_bypass_s vs = Fastcgi_Cache_Bypass$ ConfStatementExpression (Expression "fastcgi_cache_bypass" vs)
newtype Fastcgi_Cache_Bypass = Fastcgi_Cache_Bypass ConfStatement
instance ToConfStatement Fastcgi_Cache_Bypass where
    toConfStatement (Fastcgi_Cache_Bypass c) = c
instance HasContextHttp
 Fastcgi_Cache_Bypass where
instance HasContextServer
 Fastcgi_Cache_Bypass where
instance HasContextLocation
 Fastcgi_Cache_Bypass where


-- | Defines a key for caching, for example fastcgi_cache_key localhost:9000$request_uri;
fastcgi_cache_key :: [Text] -> ConfStatement
fastcgi_cache_key vs = ConfStatementExpression (Expression "fastcgi_cache_key" vs)

-- | Safe version of 'fastcgi_cache_key'
fastcgi_cache_key_s :: [Text] -> Fastcgi_Cache_Key
fastcgi_cache_key_s vs = Fastcgi_Cache_Key$ ConfStatementExpression (Expression "fastcgi_cache_key" vs)
newtype Fastcgi_Cache_Key = Fastcgi_Cache_Key ConfStatement
instance ToConfStatement Fastcgi_Cache_Key where
    toConfStatement (Fastcgi_Cache_Key c) = c
instance HasContextHttp
 Fastcgi_Cache_Key where
instance HasContextServer
 Fastcgi_Cache_Key where
instance HasContextLocation
 Fastcgi_Cache_Key where


-- | When enabled, only one request at a time will be allowed to populate a new cache element identified according to the directive by passing a request to a FastCGI server. Other requests of the same cache element will either wait for a response to appear in the cache or the cache lock for this element to be released, up to the time set by the directive.
fastcgi_cache_lock :: [Text] -> ConfStatement
fastcgi_cache_lock vs = ConfStatementExpression (Expression "fastcgi_cache_lock" vs)

-- | Safe version of 'fastcgi_cache_lock'
fastcgi_cache_lock_s :: [Text] -> Fastcgi_Cache_Lock
fastcgi_cache_lock_s vs = Fastcgi_Cache_Lock$ ConfStatementExpression (Expression "fastcgi_cache_lock" vs)
newtype Fastcgi_Cache_Lock = Fastcgi_Cache_Lock ConfStatement
instance ToConfStatement Fastcgi_Cache_Lock where
    toConfStatement (Fastcgi_Cache_Lock c) = c
instance HasContextHttp
 Fastcgi_Cache_Lock where
instance HasContextServer
 Fastcgi_Cache_Lock where
instance HasContextLocation
 Fastcgi_Cache_Lock where


-- | If the last request passed to the FastCGI server for populating a new cache element has not completed for the specified time, one more request may be passed to the FastCGI server.
fastcgi_cache_lock_age :: [Text] -> ConfStatement
fastcgi_cache_lock_age vs = ConfStatementExpression (Expression "fastcgi_cache_lock_age" vs)

-- | Safe version of 'fastcgi_cache_lock_age'
fastcgi_cache_lock_age_s :: [Text] -> Fastcgi_Cache_Lock_Age
fastcgi_cache_lock_age_s vs = Fastcgi_Cache_Lock_Age$ ConfStatementExpression (Expression "fastcgi_cache_lock_age" vs)
newtype Fastcgi_Cache_Lock_Age = Fastcgi_Cache_Lock_Age ConfStatement
instance ToConfStatement Fastcgi_Cache_Lock_Age where
    toConfStatement (Fastcgi_Cache_Lock_Age c) = c
instance HasContextHttp
 Fastcgi_Cache_Lock_Age where
instance HasContextServer
 Fastcgi_Cache_Lock_Age where
instance HasContextLocation
 Fastcgi_Cache_Lock_Age where


-- | Sets a timeout for . When the time expires, the request will be passed to the FastCGI server, however, the response will not be cached. Before 1.7.8, the response could be cached.
fastcgi_cache_lock_timeout :: [Text] -> ConfStatement
fastcgi_cache_lock_timeout vs = ConfStatementExpression (Expression "fastcgi_cache_lock_timeout" vs)

-- | Safe version of 'fastcgi_cache_lock_timeout'
fastcgi_cache_lock_timeout_s :: [Text] -> Fastcgi_Cache_Lock_Timeout
fastcgi_cache_lock_timeout_s vs = Fastcgi_Cache_Lock_Timeout$ ConfStatementExpression (Expression "fastcgi_cache_lock_timeout" vs)
newtype Fastcgi_Cache_Lock_Timeout = Fastcgi_Cache_Lock_Timeout ConfStatement
instance ToConfStatement Fastcgi_Cache_Lock_Timeout where
    toConfStatement (Fastcgi_Cache_Lock_Timeout c) = c
instance HasContextHttp
 Fastcgi_Cache_Lock_Timeout where
instance HasContextServer
 Fastcgi_Cache_Lock_Timeout where
instance HasContextLocation
 Fastcgi_Cache_Lock_Timeout where


-- | If the client request method is listed in this directive then the response will be cached. “GET” and “HEAD” methods are always added to the list, though it is recommended to specify them explicitly. See also the  directive.
fastcgi_cache_methods :: [Text] -> ConfStatement
fastcgi_cache_methods vs = ConfStatementExpression (Expression "fastcgi_cache_methods" vs)

-- | Safe version of 'fastcgi_cache_methods'
fastcgi_cache_methods_s :: [Text] -> Fastcgi_Cache_Methods
fastcgi_cache_methods_s vs = Fastcgi_Cache_Methods$ ConfStatementExpression (Expression "fastcgi_cache_methods" vs)
newtype Fastcgi_Cache_Methods = Fastcgi_Cache_Methods ConfStatement
instance ToConfStatement Fastcgi_Cache_Methods where
    toConfStatement (Fastcgi_Cache_Methods c) = c
instance HasContextHttp
 Fastcgi_Cache_Methods where
instance HasContextServer
 Fastcgi_Cache_Methods where
instance HasContextLocation
 Fastcgi_Cache_Methods where


-- | Sets the number of requests after which the response will be cached.
fastcgi_cache_min_uses :: [Text] -> ConfStatement
fastcgi_cache_min_uses vs = ConfStatementExpression (Expression "fastcgi_cache_min_uses" vs)

-- | Safe version of 'fastcgi_cache_min_uses'
fastcgi_cache_min_uses_s :: [Text] -> Fastcgi_Cache_Min_Uses
fastcgi_cache_min_uses_s vs = Fastcgi_Cache_Min_Uses$ ConfStatementExpression (Expression "fastcgi_cache_min_uses" vs)
newtype Fastcgi_Cache_Min_Uses = Fastcgi_Cache_Min_Uses ConfStatement
instance ToConfStatement Fastcgi_Cache_Min_Uses where
    toConfStatement (Fastcgi_Cache_Min_Uses c) = c
instance HasContextHttp
 Fastcgi_Cache_Min_Uses where
instance HasContextServer
 Fastcgi_Cache_Min_Uses where
instance HasContextLocation
 Fastcgi_Cache_Min_Uses where


-- | Sets the path and other parameters of a cache. Cache data are stored in files. Both the key and file name in a cache are a result of applying the MD5 function to the proxied URL. The levels parameter defines hierarchy levels of a cache. For example, in the following configuration fastcgi_cache_path /data/nginx/cache levels=1:2 keys_zone=one:10m; file names in a cache will look like this: /data/nginx/cache/c/29/b7f54b2df7773722d382f4809d65029c
fastcgi_cache_path :: [Text] -> ConfStatement
fastcgi_cache_path vs = ConfStatementExpression (Expression "fastcgi_cache_path" vs)

-- | Safe version of 'fastcgi_cache_path'
fastcgi_cache_path_s :: [Text] -> Fastcgi_Cache_Path
fastcgi_cache_path_s vs = Fastcgi_Cache_Path$ ConfStatementExpression (Expression "fastcgi_cache_path" vs)
newtype Fastcgi_Cache_Path = Fastcgi_Cache_Path ConfStatement
instance ToConfStatement Fastcgi_Cache_Path where
    toConfStatement (Fastcgi_Cache_Path c) = c
instance HasContextHttp
 Fastcgi_Cache_Path where


-- | Defines conditions under which the request will be considered a cache purge request. If at least one value of the string parameters is not empty and is not equal to “0” then the cache entry with a corresponding cache key is removed. The result of successful operation is indicated by returning the  response.
fastcgi_cache_purge :: [Text] -> ConfStatement
fastcgi_cache_purge vs = ConfStatementExpression (Expression "fastcgi_cache_purge" vs)

-- | Safe version of 'fastcgi_cache_purge'
fastcgi_cache_purge_s :: [Text] -> Fastcgi_Cache_Purge
fastcgi_cache_purge_s vs = Fastcgi_Cache_Purge$ ConfStatementExpression (Expression "fastcgi_cache_purge" vs)
newtype Fastcgi_Cache_Purge = Fastcgi_Cache_Purge ConfStatement
instance ToConfStatement Fastcgi_Cache_Purge where
    toConfStatement (Fastcgi_Cache_Purge c) = c
instance HasContextHttp
 Fastcgi_Cache_Purge where
instance HasContextServer
 Fastcgi_Cache_Purge where
instance HasContextLocation
 Fastcgi_Cache_Purge where


-- | Enables revalidation of expired cache items using conditional requests with the If-Modified-Since and If-None-Match header fields.
fastcgi_cache_revalidate :: [Text] -> ConfStatement
fastcgi_cache_revalidate vs = ConfStatementExpression (Expression "fastcgi_cache_revalidate" vs)

-- | Safe version of 'fastcgi_cache_revalidate'
fastcgi_cache_revalidate_s :: [Text] -> Fastcgi_Cache_Revalidate
fastcgi_cache_revalidate_s vs = Fastcgi_Cache_Revalidate$ ConfStatementExpression (Expression "fastcgi_cache_revalidate" vs)
newtype Fastcgi_Cache_Revalidate = Fastcgi_Cache_Revalidate ConfStatement
instance ToConfStatement Fastcgi_Cache_Revalidate where
    toConfStatement (Fastcgi_Cache_Revalidate c) = c
instance HasContextHttp
 Fastcgi_Cache_Revalidate where
instance HasContextServer
 Fastcgi_Cache_Revalidate where
instance HasContextLocation
 Fastcgi_Cache_Revalidate where


-- | Determines in which cases a stale cached response can be used when an error occurs during communication with the FastCGI server. The directive’s parameters match the parameters of the directive.
fastcgi_cache_use_stale :: [Text] -> ConfStatement
fastcgi_cache_use_stale vs = ConfStatementExpression (Expression "fastcgi_cache_use_stale" vs)

-- | Safe version of 'fastcgi_cache_use_stale'
fastcgi_cache_use_stale_s :: [Text] -> Fastcgi_Cache_Use_Stale
fastcgi_cache_use_stale_s vs = Fastcgi_Cache_Use_Stale$ ConfStatementExpression (Expression "fastcgi_cache_use_stale" vs)
newtype Fastcgi_Cache_Use_Stale = Fastcgi_Cache_Use_Stale ConfStatement
instance ToConfStatement Fastcgi_Cache_Use_Stale where
    toConfStatement (Fastcgi_Cache_Use_Stale c) = c
instance HasContextHttp
 Fastcgi_Cache_Use_Stale where
instance HasContextServer
 Fastcgi_Cache_Use_Stale where
instance HasContextLocation
 Fastcgi_Cache_Use_Stale where


-- | Sets caching time for different response codes. For example, the following directives fastcgi_cache_valid 200 302 10m; fastcgi_cache_valid 404      1m; set 10 minutes of caching for responses with codes 200 and 302 and 1 minute for responses with code 404.
fastcgi_cache_valid :: [Text] -> ConfStatement
fastcgi_cache_valid vs = ConfStatementExpression (Expression "fastcgi_cache_valid" vs)

-- | Safe version of 'fastcgi_cache_valid'
fastcgi_cache_valid_s :: [Text] -> Fastcgi_Cache_Valid
fastcgi_cache_valid_s vs = Fastcgi_Cache_Valid$ ConfStatementExpression (Expression "fastcgi_cache_valid" vs)
newtype Fastcgi_Cache_Valid = Fastcgi_Cache_Valid ConfStatement
instance ToConfStatement Fastcgi_Cache_Valid where
    toConfStatement (Fastcgi_Cache_Valid c) = c
instance HasContextHttp
 Fastcgi_Cache_Valid where
instance HasContextServer
 Fastcgi_Cache_Valid where
instance HasContextLocation
 Fastcgi_Cache_Valid where


-- | Sets a string to search for in the error stream of a response received from a FastCGI server. If the string is found then it is considered that the FastCGI server has returned an invalid response. This allows handling application errors in nginx, for example: location /php { fastcgi_pass backend:9000; ... fastcgi_catch_stderr "PHP Fatal error"; fastcgi_next_upstream error timeout invalid_header; }
fastcgi_catch_stderr :: [Text] -> ConfStatement
fastcgi_catch_stderr vs = ConfStatementExpression (Expression "fastcgi_catch_stderr" vs)

-- | Safe version of 'fastcgi_catch_stderr'
fastcgi_catch_stderr_s :: [Text] -> Fastcgi_Catch_Stderr
fastcgi_catch_stderr_s vs = Fastcgi_Catch_Stderr$ ConfStatementExpression (Expression "fastcgi_catch_stderr" vs)
newtype Fastcgi_Catch_Stderr = Fastcgi_Catch_Stderr ConfStatement
instance ToConfStatement Fastcgi_Catch_Stderr where
    toConfStatement (Fastcgi_Catch_Stderr c) = c
instance HasContextHttp
 Fastcgi_Catch_Stderr where
instance HasContextServer
 Fastcgi_Catch_Stderr where
instance HasContextLocation
 Fastcgi_Catch_Stderr where


-- | Defines a timeout for establishing a connection with a FastCGI server. It should be noted that this timeout cannot usually exceed 75 seconds.
fastcgi_connect_timeout :: [Text] -> ConfStatement
fastcgi_connect_timeout vs = ConfStatementExpression (Expression "fastcgi_connect_timeout" vs)

-- | Safe version of 'fastcgi_connect_timeout'
fastcgi_connect_timeout_s :: [Text] -> Fastcgi_Connect_Timeout
fastcgi_connect_timeout_s vs = Fastcgi_Connect_Timeout$ ConfStatementExpression (Expression "fastcgi_connect_timeout" vs)
newtype Fastcgi_Connect_Timeout = Fastcgi_Connect_Timeout ConfStatement
instance ToConfStatement Fastcgi_Connect_Timeout where
    toConfStatement (Fastcgi_Connect_Timeout c) = c
instance HasContextHttp
 Fastcgi_Connect_Timeout where
instance HasContextServer
 Fastcgi_Connect_Timeout where
instance HasContextLocation
 Fastcgi_Connect_Timeout where


-- | Enables byte-range support for both cached and uncached responses from the FastCGI server regardless of the Accept-Ranges field in these responses.
fastcgi_force_ranges :: [Text] -> ConfStatement
fastcgi_force_ranges vs = ConfStatementExpression (Expression "fastcgi_force_ranges" vs)

-- | Safe version of 'fastcgi_force_ranges'
fastcgi_force_ranges_s :: [Text] -> Fastcgi_Force_Ranges
fastcgi_force_ranges_s vs = Fastcgi_Force_Ranges$ ConfStatementExpression (Expression "fastcgi_force_ranges" vs)
newtype Fastcgi_Force_Ranges = Fastcgi_Force_Ranges ConfStatement
instance ToConfStatement Fastcgi_Force_Ranges where
    toConfStatement (Fastcgi_Force_Ranges c) = c
instance HasContextHttp
 Fastcgi_Force_Ranges where
instance HasContextServer
 Fastcgi_Force_Ranges where
instance HasContextLocation
 Fastcgi_Force_Ranges where


-- | By default, nginx does not pass the header fields Status and X-Accel-... from the response of a FastCGI server to a client. The fastcgi_hide_header directive sets additional fields that will not be passed. If, on the contrary, the passing of fields needs to be permitted, the  directive can be used.
fastcgi_hide_header :: [Text] -> ConfStatement
fastcgi_hide_header vs = ConfStatementExpression (Expression "fastcgi_hide_header" vs)

-- | Safe version of 'fastcgi_hide_header'
fastcgi_hide_header_s :: [Text] -> Fastcgi_Hide_Header
fastcgi_hide_header_s vs = Fastcgi_Hide_Header$ ConfStatementExpression (Expression "fastcgi_hide_header" vs)
newtype Fastcgi_Hide_Header = Fastcgi_Hide_Header ConfStatement
instance ToConfStatement Fastcgi_Hide_Header where
    toConfStatement (Fastcgi_Hide_Header c) = c
instance HasContextHttp
 Fastcgi_Hide_Header where
instance HasContextServer
 Fastcgi_Hide_Header where
instance HasContextLocation
 Fastcgi_Hide_Header where


-- | Determines whether the connection with a FastCGI server should be closed when a client closes the connection without waiting for a response.
fastcgi_ignore_client_abort :: [Text] -> ConfStatement
fastcgi_ignore_client_abort vs = ConfStatementExpression (Expression "fastcgi_ignore_client_abort" vs)

-- | Safe version of 'fastcgi_ignore_client_abort'
fastcgi_ignore_client_abort_s :: [Text] -> Fastcgi_Ignore_Client_Abort
fastcgi_ignore_client_abort_s vs = Fastcgi_Ignore_Client_Abort$ ConfStatementExpression (Expression "fastcgi_ignore_client_abort" vs)
newtype Fastcgi_Ignore_Client_Abort = Fastcgi_Ignore_Client_Abort ConfStatement
instance ToConfStatement Fastcgi_Ignore_Client_Abort where
    toConfStatement (Fastcgi_Ignore_Client_Abort c) = c
instance HasContextHttp
 Fastcgi_Ignore_Client_Abort where
instance HasContextServer
 Fastcgi_Ignore_Client_Abort where
instance HasContextLocation
 Fastcgi_Ignore_Client_Abort where


-- | Disables processing of certain response header fields from the FastCGI server. The following fields can be ignored: X-Accel-Redirect, X-Accel-Expires, X-Accel-Limit-Rate (1.1.6), X-Accel-Buffering (1.1.6), X-Accel-Charset (1.1.6), Expires, Cache-Control, Set-Cookie (0.8.44), and Vary (1.7.7).
fastcgi_ignore_headers :: [Text] -> ConfStatement
fastcgi_ignore_headers vs = ConfStatementExpression (Expression "fastcgi_ignore_headers" vs)

-- | Safe version of 'fastcgi_ignore_headers'
fastcgi_ignore_headers_s :: [Text] -> Fastcgi_Ignore_Headers
fastcgi_ignore_headers_s vs = Fastcgi_Ignore_Headers$ ConfStatementExpression (Expression "fastcgi_ignore_headers" vs)
newtype Fastcgi_Ignore_Headers = Fastcgi_Ignore_Headers ConfStatement
instance ToConfStatement Fastcgi_Ignore_Headers where
    toConfStatement (Fastcgi_Ignore_Headers c) = c
instance HasContextHttp
 Fastcgi_Ignore_Headers where
instance HasContextServer
 Fastcgi_Ignore_Headers where
instance HasContextLocation
 Fastcgi_Ignore_Headers where


-- | Sets a file name that will be appended after a URI that ends with a slash, in the value of the $fastcgi_script_name variable. For example, with these settings fastcgi_index index.php; fastcgi_param SCRIPT_FILENAME /home/www/scripts/php$fastcgi_script_name; and the “/page.php” request, the SCRIPT_FILENAME parameter will be equal to “/home/www/scripts/php/page.php”, and with the “/” request it will be equal to “/home/www/scripts/php/index.php”.
fastcgi_index :: [Text] -> ConfStatement
fastcgi_index vs = ConfStatementExpression (Expression "fastcgi_index" vs)

-- | Safe version of 'fastcgi_index'
fastcgi_index_s :: [Text] -> Fastcgi_Index
fastcgi_index_s vs = Fastcgi_Index$ ConfStatementExpression (Expression "fastcgi_index" vs)
newtype Fastcgi_Index = Fastcgi_Index ConfStatement
instance ToConfStatement Fastcgi_Index where
    toConfStatement (Fastcgi_Index c) = c
instance HasContextHttp
 Fastcgi_Index where
instance HasContextServer
 Fastcgi_Index where
instance HasContextLocation
 Fastcgi_Index where


-- | Determines whether FastCGI server responses with codes greater than or equal to 300 should be passed to a client or be redirected to nginx for processing with the  directive.
fastcgi_intercept_errors :: [Text] -> ConfStatement
fastcgi_intercept_errors vs = ConfStatementExpression (Expression "fastcgi_intercept_errors" vs)

-- | Safe version of 'fastcgi_intercept_errors'
fastcgi_intercept_errors_s :: [Text] -> Fastcgi_Intercept_Errors
fastcgi_intercept_errors_s vs = Fastcgi_Intercept_Errors$ ConfStatementExpression (Expression "fastcgi_intercept_errors" vs)
newtype Fastcgi_Intercept_Errors = Fastcgi_Intercept_Errors ConfStatement
instance ToConfStatement Fastcgi_Intercept_Errors where
    toConfStatement (Fastcgi_Intercept_Errors c) = c
instance HasContextHttp
 Fastcgi_Intercept_Errors where
instance HasContextServer
 Fastcgi_Intercept_Errors where
instance HasContextLocation
 Fastcgi_Intercept_Errors where


-- | By default, a FastCGI server will close a connection right after sending the response. However, when this directive is set to the value on, nginx will instruct a FastCGI server to keep connections open. This is necessary, in particular, for connections to FastCGI servers to function.
fastcgi_keep_conn :: [Text] -> ConfStatement
fastcgi_keep_conn vs = ConfStatementExpression (Expression "fastcgi_keep_conn" vs)

-- | Safe version of 'fastcgi_keep_conn'
fastcgi_keep_conn_s :: [Text] -> Fastcgi_Keep_Conn
fastcgi_keep_conn_s vs = Fastcgi_Keep_Conn$ ConfStatementExpression (Expression "fastcgi_keep_conn" vs)
newtype Fastcgi_Keep_Conn = Fastcgi_Keep_Conn ConfStatement
instance ToConfStatement Fastcgi_Keep_Conn where
    toConfStatement (Fastcgi_Keep_Conn c) = c
instance HasContextHttp
 Fastcgi_Keep_Conn where
instance HasContextServer
 Fastcgi_Keep_Conn where
instance HasContextLocation
 Fastcgi_Keep_Conn where


-- | Limits the speed of reading the response from the FastCGI server. The rate is specified in bytes per second. The zero value disables rate limiting. The limit is set per a request, and so if nginx simultaneously opens two connections to the FastCFI server, the overall rate will be twice as much as the specified limit. The limitation works only if buffering of responses from the FastCGI server is enabled.
fastcgi_limit_rate :: [Text] -> ConfStatement
fastcgi_limit_rate vs = ConfStatementExpression (Expression "fastcgi_limit_rate" vs)

-- | Safe version of 'fastcgi_limit_rate'
fastcgi_limit_rate_s :: [Text] -> Fastcgi_Limit_Rate
fastcgi_limit_rate_s vs = Fastcgi_Limit_Rate$ ConfStatementExpression (Expression "fastcgi_limit_rate" vs)
newtype Fastcgi_Limit_Rate = Fastcgi_Limit_Rate ConfStatement
instance ToConfStatement Fastcgi_Limit_Rate where
    toConfStatement (Fastcgi_Limit_Rate c) = c
instance HasContextHttp
 Fastcgi_Limit_Rate where
instance HasContextServer
 Fastcgi_Limit_Rate where
instance HasContextLocation
 Fastcgi_Limit_Rate where


-- | When buffering of responses from the FastCGI server is enabled, and the whole response does not fit into the buffers set by the  and directives, a part of the response can be saved to a temporary file. This directive sets the maximum size of the temporary file. The size of data written to the temporary file at a time is set by the  directive.
fastcgi_max_temp_file_size :: [Text] -> ConfStatement
fastcgi_max_temp_file_size vs = ConfStatementExpression (Expression "fastcgi_max_temp_file_size" vs)

-- | Safe version of 'fastcgi_max_temp_file_size'
fastcgi_max_temp_file_size_s :: [Text] -> Fastcgi_Max_Temp_File_Size
fastcgi_max_temp_file_size_s vs = Fastcgi_Max_Temp_File_Size$ ConfStatementExpression (Expression "fastcgi_max_temp_file_size" vs)
newtype Fastcgi_Max_Temp_File_Size = Fastcgi_Max_Temp_File_Size ConfStatement
instance ToConfStatement Fastcgi_Max_Temp_File_Size where
    toConfStatement (Fastcgi_Max_Temp_File_Size c) = c
instance HasContextHttp
 Fastcgi_Max_Temp_File_Size where
instance HasContextServer
 Fastcgi_Max_Temp_File_Size where
instance HasContextLocation
 Fastcgi_Max_Temp_File_Size where


-- | Specifies in which cases a request should be passed to the next server: error an error occurred while establishing a connection with the server, passing a request to it, or reading the response header; timeout a timeout has occurred while establishing a connection with the server, passing a request to it, or reading the response header; invalid_header a server returned an empty or invalid response; http_500 a server returned a response with the code 500; http_503 a server returned a response with the code 503; http_403 a server returned a response with the code 403; http_404 a server returned a response with the code 404; non_idempotent normally, requests with a non-idempotent method (POST, LOCK, PATCH) are not passed to the next server if a request has been sent to an upstream server (1.9.13); enabling this option explicitly allows retrying such requests; off disables passing a request to the next server.
fastcgi_next_upstream :: [Text] -> ConfStatement
fastcgi_next_upstream vs = ConfStatementExpression (Expression "fastcgi_next_upstream" vs)

-- | Safe version of 'fastcgi_next_upstream'
fastcgi_next_upstream_s :: [Text] -> Fastcgi_Next_Upstream
fastcgi_next_upstream_s vs = Fastcgi_Next_Upstream$ ConfStatementExpression (Expression "fastcgi_next_upstream" vs)
newtype Fastcgi_Next_Upstream = Fastcgi_Next_Upstream ConfStatement
instance ToConfStatement Fastcgi_Next_Upstream where
    toConfStatement (Fastcgi_Next_Upstream c) = c
instance HasContextHttp
 Fastcgi_Next_Upstream where
instance HasContextServer
 Fastcgi_Next_Upstream where
instance HasContextLocation
 Fastcgi_Next_Upstream where


-- | Limits the time during which a request can be passed to the next server. The 0 value turns off this limitation.
fastcgi_next_upstream_timeout :: [Text] -> ConfStatement
fastcgi_next_upstream_timeout vs = ConfStatementExpression (Expression "fastcgi_next_upstream_timeout" vs)

-- | Safe version of 'fastcgi_next_upstream_timeout'
fastcgi_next_upstream_timeout_s :: [Text] -> Fastcgi_Next_Upstream_Timeout
fastcgi_next_upstream_timeout_s vs = Fastcgi_Next_Upstream_Timeout$ ConfStatementExpression (Expression "fastcgi_next_upstream_timeout" vs)
newtype Fastcgi_Next_Upstream_Timeout = Fastcgi_Next_Upstream_Timeout ConfStatement
instance ToConfStatement Fastcgi_Next_Upstream_Timeout where
    toConfStatement (Fastcgi_Next_Upstream_Timeout c) = c
instance HasContextHttp
 Fastcgi_Next_Upstream_Timeout where
instance HasContextServer
 Fastcgi_Next_Upstream_Timeout where
instance HasContextLocation
 Fastcgi_Next_Upstream_Timeout where


-- | Limits the number of possible tries for passing a request to the next server. The 0 value turns off this limitation.
fastcgi_next_upstream_tries :: [Text] -> ConfStatement
fastcgi_next_upstream_tries vs = ConfStatementExpression (Expression "fastcgi_next_upstream_tries" vs)

-- | Safe version of 'fastcgi_next_upstream_tries'
fastcgi_next_upstream_tries_s :: [Text] -> Fastcgi_Next_Upstream_Tries
fastcgi_next_upstream_tries_s vs = Fastcgi_Next_Upstream_Tries$ ConfStatementExpression (Expression "fastcgi_next_upstream_tries" vs)
newtype Fastcgi_Next_Upstream_Tries = Fastcgi_Next_Upstream_Tries ConfStatement
instance ToConfStatement Fastcgi_Next_Upstream_Tries where
    toConfStatement (Fastcgi_Next_Upstream_Tries c) = c
instance HasContextHttp
 Fastcgi_Next_Upstream_Tries where
instance HasContextServer
 Fastcgi_Next_Upstream_Tries where
instance HasContextLocation
 Fastcgi_Next_Upstream_Tries where


-- | Defines conditions under which the response will not be saved to a cache. If at least one value of the string parameters is not empty and is not equal to “0” then the response will not be saved: fastcgi_no_cache $cookie_nocache $arg_nocache$arg_comment; fastcgi_no_cache $http_pragma    $http_authorization; Can be used along with the  directive.
fastcgi_no_cache :: [Text] -> ConfStatement
fastcgi_no_cache vs = ConfStatementExpression (Expression "fastcgi_no_cache" vs)

-- | Safe version of 'fastcgi_no_cache'
fastcgi_no_cache_s :: [Text] -> Fastcgi_No_Cache
fastcgi_no_cache_s vs = Fastcgi_No_Cache$ ConfStatementExpression (Expression "fastcgi_no_cache" vs)
newtype Fastcgi_No_Cache = Fastcgi_No_Cache ConfStatement
instance ToConfStatement Fastcgi_No_Cache where
    toConfStatement (Fastcgi_No_Cache c) = c
instance HasContextHttp
 Fastcgi_No_Cache where
instance HasContextServer
 Fastcgi_No_Cache where
instance HasContextLocation
 Fastcgi_No_Cache where


-- | Sets a parameter that should be passed to the FastCGI server. The value can contain text, variables, and their combination. These directives are inherited from the previous level if and only if there are no fastcgi_param directives defined on the current level.
fastcgi_param :: [Text] -> ConfStatement
fastcgi_param vs = ConfStatementExpression (Expression "fastcgi_param" vs)

-- | Safe version of 'fastcgi_param'
fastcgi_param_s :: [Text] -> Fastcgi_Param
fastcgi_param_s vs = Fastcgi_Param$ ConfStatementExpression (Expression "fastcgi_param" vs)
newtype Fastcgi_Param = Fastcgi_Param ConfStatement
instance ToConfStatement Fastcgi_Param where
    toConfStatement (Fastcgi_Param c) = c
instance HasContextHttp
 Fastcgi_Param where
instance HasContextServer
 Fastcgi_Param where
instance HasContextLocation
 Fastcgi_Param where


-- | Sets the address of a FastCGI server. The address can be specified as a domain name or IP address, and a port: fastcgi_pass localhost:9000; or as a UNIX-domain socket path: fastcgi_pass unix:/tmp/fastcgi.socket;
fastcgi_pass :: [Text] -> ConfStatement
fastcgi_pass vs = ConfStatementExpression (Expression "fastcgi_pass" vs)

-- | Safe version of 'fastcgi_pass'
fastcgi_pass_s :: [Text] -> Fastcgi_Pass
fastcgi_pass_s vs = Fastcgi_Pass$ ConfStatementExpression (Expression "fastcgi_pass" vs)
newtype Fastcgi_Pass = Fastcgi_Pass ConfStatement
instance ToConfStatement Fastcgi_Pass where
    toConfStatement (Fastcgi_Pass c) = c
instance HasContextLocation
 Fastcgi_Pass where


-- | Permits passing otherwise disabled header fields from a FastCGI server to a client.
fastcgi_pass_header :: [Text] -> ConfStatement
fastcgi_pass_header vs = ConfStatementExpression (Expression "fastcgi_pass_header" vs)

-- | Safe version of 'fastcgi_pass_header'
fastcgi_pass_header_s :: [Text] -> Fastcgi_Pass_Header
fastcgi_pass_header_s vs = Fastcgi_Pass_Header$ ConfStatementExpression (Expression "fastcgi_pass_header" vs)
newtype Fastcgi_Pass_Header = Fastcgi_Pass_Header ConfStatement
instance ToConfStatement Fastcgi_Pass_Header where
    toConfStatement (Fastcgi_Pass_Header c) = c
instance HasContextHttp
 Fastcgi_Pass_Header where
instance HasContextServer
 Fastcgi_Pass_Header where
instance HasContextLocation
 Fastcgi_Pass_Header where


-- | Indicates whether the original request body is passed to the FastCGI server. See also the  directive.
fastcgi_pass_request_body :: [Text] -> ConfStatement
fastcgi_pass_request_body vs = ConfStatementExpression (Expression "fastcgi_pass_request_body" vs)

-- | Safe version of 'fastcgi_pass_request_body'
fastcgi_pass_request_body_s :: [Text] -> Fastcgi_Pass_Request_Body
fastcgi_pass_request_body_s vs = Fastcgi_Pass_Request_Body$ ConfStatementExpression (Expression "fastcgi_pass_request_body" vs)
newtype Fastcgi_Pass_Request_Body = Fastcgi_Pass_Request_Body ConfStatement
instance ToConfStatement Fastcgi_Pass_Request_Body where
    toConfStatement (Fastcgi_Pass_Request_Body c) = c
instance HasContextHttp
 Fastcgi_Pass_Request_Body where
instance HasContextServer
 Fastcgi_Pass_Request_Body where
instance HasContextLocation
 Fastcgi_Pass_Request_Body where


-- | Indicates whether the header fields of the original request are passed to the FastCGI server. See also the  directive.
fastcgi_pass_request_headers :: [Text] -> ConfStatement
fastcgi_pass_request_headers vs = ConfStatementExpression (Expression "fastcgi_pass_request_headers" vs)

-- | Safe version of 'fastcgi_pass_request_headers'
fastcgi_pass_request_headers_s :: [Text] -> Fastcgi_Pass_Request_Headers
fastcgi_pass_request_headers_s vs = Fastcgi_Pass_Request_Headers$ ConfStatementExpression (Expression "fastcgi_pass_request_headers" vs)
newtype Fastcgi_Pass_Request_Headers = Fastcgi_Pass_Request_Headers ConfStatement
instance ToConfStatement Fastcgi_Pass_Request_Headers where
    toConfStatement (Fastcgi_Pass_Request_Headers c) = c
instance HasContextHttp
 Fastcgi_Pass_Request_Headers where
instance HasContextServer
 Fastcgi_Pass_Request_Headers where
instance HasContextLocation
 Fastcgi_Pass_Request_Headers where


-- | Defines a timeout for reading a response from the FastCGI server. The timeout is set only between two successive read operations, not for the transmission of the whole response. If the FastCGI server does not transmit anything within this time, the connection is closed.
fastcgi_read_timeout :: [Text] -> ConfStatement
fastcgi_read_timeout vs = ConfStatementExpression (Expression "fastcgi_read_timeout" vs)

-- | Safe version of 'fastcgi_read_timeout'
fastcgi_read_timeout_s :: [Text] -> Fastcgi_Read_Timeout
fastcgi_read_timeout_s vs = Fastcgi_Read_Timeout$ ConfStatementExpression (Expression "fastcgi_read_timeout" vs)
newtype Fastcgi_Read_Timeout = Fastcgi_Read_Timeout ConfStatement
instance ToConfStatement Fastcgi_Read_Timeout where
    toConfStatement (Fastcgi_Read_Timeout c) = c
instance HasContextHttp
 Fastcgi_Read_Timeout where
instance HasContextServer
 Fastcgi_Read_Timeout where
instance HasContextLocation
 Fastcgi_Read_Timeout where


-- | Enables or disables buffering of a client request body.
fastcgi_request_buffering :: [Text] -> ConfStatement
fastcgi_request_buffering vs = ConfStatementExpression (Expression "fastcgi_request_buffering" vs)

-- | Safe version of 'fastcgi_request_buffering'
fastcgi_request_buffering_s :: [Text] -> Fastcgi_Request_Buffering
fastcgi_request_buffering_s vs = Fastcgi_Request_Buffering$ ConfStatementExpression (Expression "fastcgi_request_buffering" vs)
newtype Fastcgi_Request_Buffering = Fastcgi_Request_Buffering ConfStatement
instance ToConfStatement Fastcgi_Request_Buffering where
    toConfStatement (Fastcgi_Request_Buffering c) = c
instance HasContextHttp
 Fastcgi_Request_Buffering where
instance HasContextServer
 Fastcgi_Request_Buffering where
instance HasContextLocation
 Fastcgi_Request_Buffering where


-- | If the directive is set to a non-zero value, nginx will try to minimize the number of send operations on outgoing connections to a FastCGI server by using either NOTE_LOWAT flag of the method, or the SO_SNDLOWAT socket option, with the specified size.
fastcgi_send_lowat :: [Text] -> ConfStatement
fastcgi_send_lowat vs = ConfStatementExpression (Expression "fastcgi_send_lowat" vs)

-- | Safe version of 'fastcgi_send_lowat'
fastcgi_send_lowat_s :: [Text] -> Fastcgi_Send_Lowat
fastcgi_send_lowat_s vs = Fastcgi_Send_Lowat$ ConfStatementExpression (Expression "fastcgi_send_lowat" vs)
newtype Fastcgi_Send_Lowat = Fastcgi_Send_Lowat ConfStatement
instance ToConfStatement Fastcgi_Send_Lowat where
    toConfStatement (Fastcgi_Send_Lowat c) = c
instance HasContextHttp
 Fastcgi_Send_Lowat where
instance HasContextServer
 Fastcgi_Send_Lowat where
instance HasContextLocation
 Fastcgi_Send_Lowat where


-- | Sets a timeout for transmitting a request to the FastCGI server. The timeout is set only between two successive write operations, not for the transmission of the whole request. If the FastCGI server does not receive anything within this time, the connection is closed.
fastcgi_send_timeout :: [Text] -> ConfStatement
fastcgi_send_timeout vs = ConfStatementExpression (Expression "fastcgi_send_timeout" vs)

-- | Safe version of 'fastcgi_send_timeout'
fastcgi_send_timeout_s :: [Text] -> Fastcgi_Send_Timeout
fastcgi_send_timeout_s vs = Fastcgi_Send_Timeout$ ConfStatementExpression (Expression "fastcgi_send_timeout" vs)
newtype Fastcgi_Send_Timeout = Fastcgi_Send_Timeout ConfStatement
instance ToConfStatement Fastcgi_Send_Timeout where
    toConfStatement (Fastcgi_Send_Timeout c) = c
instance HasContextHttp
 Fastcgi_Send_Timeout where
instance HasContextServer
 Fastcgi_Send_Timeout where
instance HasContextLocation
 Fastcgi_Send_Timeout where


-- | Defines a regular expression that captures a value for the $fastcgi_path_info variable. The regular expression should have two captures: the first becomes a value of the $fastcgi_script_name variable, the second becomes a value of the $fastcgi_path_info variable. For example, with these settings location ~ ^(.+\.php)(.*)$ { fastcgi_split_path_info       ^(.+\.php)(.*)$; fastcgi_param SCRIPT_FILENAME /path/to/php$fastcgi_script_name; fastcgi_param PATH_INFO       $fastcgi_path_info; and the “/show.php/article/0001” request, the SCRIPT_FILENAME parameter will be equal to “/path/to/php/show.php”, and the PATH_INFO parameter will be equal to “/article/0001”.
fastcgi_split_path_info :: [Text] -> ConfStatement
fastcgi_split_path_info vs = ConfStatementExpression (Expression "fastcgi_split_path_info" vs)

-- | Safe version of 'fastcgi_split_path_info'
fastcgi_split_path_info_s :: [Text] -> Fastcgi_Split_Path_Info
fastcgi_split_path_info_s vs = Fastcgi_Split_Path_Info$ ConfStatementExpression (Expression "fastcgi_split_path_info" vs)
newtype Fastcgi_Split_Path_Info = Fastcgi_Split_Path_Info ConfStatement
instance ToConfStatement Fastcgi_Split_Path_Info where
    toConfStatement (Fastcgi_Split_Path_Info c) = c
instance HasContextLocation
 Fastcgi_Split_Path_Info where


-- | Enables saving of files to a disk. The on parameter saves files with paths corresponding to the directives or . The off parameter disables saving of files. In addition, the file name can be set explicitly using the string with variables: fastcgi_store /data/www$original_uri;
fastcgi_store :: [Text] -> ConfStatement
fastcgi_store vs = ConfStatementExpression (Expression "fastcgi_store" vs)

-- | Safe version of 'fastcgi_store'
fastcgi_store_s :: [Text] -> Fastcgi_Store
fastcgi_store_s vs = Fastcgi_Store$ ConfStatementExpression (Expression "fastcgi_store" vs)
newtype Fastcgi_Store = Fastcgi_Store ConfStatement
instance ToConfStatement Fastcgi_Store where
    toConfStatement (Fastcgi_Store c) = c
instance HasContextHttp
 Fastcgi_Store where
instance HasContextServer
 Fastcgi_Store where
instance HasContextLocation
 Fastcgi_Store where


-- | Sets access permissions for newly created files and directories, e.g.: fastcgi_store_access user:rw group:rw all:r;
fastcgi_store_access :: [Text] -> ConfStatement
fastcgi_store_access vs = ConfStatementExpression (Expression "fastcgi_store_access" vs)

-- | Safe version of 'fastcgi_store_access'
fastcgi_store_access_s :: [Text] -> Fastcgi_Store_Access
fastcgi_store_access_s vs = Fastcgi_Store_Access$ ConfStatementExpression (Expression "fastcgi_store_access" vs)
newtype Fastcgi_Store_Access = Fastcgi_Store_Access ConfStatement
instance ToConfStatement Fastcgi_Store_Access where
    toConfStatement (Fastcgi_Store_Access c) = c
instance HasContextHttp
 Fastcgi_Store_Access where
instance HasContextServer
 Fastcgi_Store_Access where
instance HasContextLocation
 Fastcgi_Store_Access where


-- | Limits the size of data written to a temporary file at a time, when buffering of responses from the FastCGI server to temporary files is enabled. By default, size is limited by two buffers set by the and  directives. The maximum size of a temporary file is set by the directive.
fastcgi_temp_file_write_size :: [Text] -> ConfStatement
fastcgi_temp_file_write_size vs = ConfStatementExpression (Expression "fastcgi_temp_file_write_size" vs)

-- | Safe version of 'fastcgi_temp_file_write_size'
fastcgi_temp_file_write_size_s :: [Text] -> Fastcgi_Temp_File_Write_Size
fastcgi_temp_file_write_size_s vs = Fastcgi_Temp_File_Write_Size$ ConfStatementExpression (Expression "fastcgi_temp_file_write_size" vs)
newtype Fastcgi_Temp_File_Write_Size = Fastcgi_Temp_File_Write_Size ConfStatement
instance ToConfStatement Fastcgi_Temp_File_Write_Size where
    toConfStatement (Fastcgi_Temp_File_Write_Size c) = c
instance HasContextHttp
 Fastcgi_Temp_File_Write_Size where
instance HasContextServer
 Fastcgi_Temp_File_Write_Size where
instance HasContextLocation
 Fastcgi_Temp_File_Write_Size where


-- | Defines a directory for storing temporary files with data received from FastCGI servers. Up to three-level subdirectory hierarchy can be used underneath the specified directory. For example, in the following configuration fastcgi_temp_path /spool/nginx/fastcgi_temp 1 2; a temporary file might look like this: /spool/nginx/fastcgi_temp/7/45/00000123457
fastcgi_temp_path :: [Text] -> ConfStatement
fastcgi_temp_path vs = ConfStatementExpression (Expression "fastcgi_temp_path" vs)

-- | Safe version of 'fastcgi_temp_path'
fastcgi_temp_path_s :: [Text] -> Fastcgi_Temp_Path
fastcgi_temp_path_s vs = Fastcgi_Temp_Path$ ConfStatementExpression (Expression "fastcgi_temp_path" vs)
newtype Fastcgi_Temp_Path = Fastcgi_Temp_Path ConfStatement
instance ToConfStatement Fastcgi_Temp_Path where
    toConfStatement (Fastcgi_Temp_Path c) = c
instance HasContextHttp
 Fastcgi_Temp_Path where
instance HasContextServer
 Fastcgi_Temp_Path where
instance HasContextLocation
 Fastcgi_Temp_Path where

