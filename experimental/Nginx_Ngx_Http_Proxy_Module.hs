-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Proxy_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Makes outgoing connections to a proxied server originate from the specified local IP address with an optional port (1.11.2). Parameter value can contain variables (1.3.12). The special value off (1.3.12) cancels the effect of the proxy_bind directive inherited from the previous configuration level, which allows the system to auto-assign the local IP address and port.
proxy_bind :: [Text] -> ConfStatement
proxy_bind vs = ConfStatementExpression (Expression "proxy_bind" vs)

-- | Safe version of 'proxy_bind'
proxy_bind_s :: [Text] -> Proxy_Bind
proxy_bind_s vs = Proxy_Bind$ ConfStatementExpression (Expression "proxy_bind" vs)
newtype Proxy_Bind = Proxy_Bind ConfStatement
instance ToConfStatement Proxy_Bind where
    toConfStatement (Proxy_Bind c) = c
instance HasContextHttp
 Proxy_Bind where
instance HasContextServer
 Proxy_Bind where
instance HasContextLocation
 Proxy_Bind where


-- | Sets the size of the buffer used for reading the first part of the response received from the proxied server. This part usually contains a small response header. By default, the buffer size is equal to one memory page. This is either 4K or 8K, depending on a platform. It can be made smaller, however.
proxy_buffer_size :: [Text] -> ConfStatement
proxy_buffer_size vs = ConfStatementExpression (Expression "proxy_buffer_size" vs)

-- | Safe version of 'proxy_buffer_size'
proxy_buffer_size_s :: [Text] -> Proxy_Buffer_Size
proxy_buffer_size_s vs = Proxy_Buffer_Size$ ConfStatementExpression (Expression "proxy_buffer_size" vs)
newtype Proxy_Buffer_Size = Proxy_Buffer_Size ConfStatement
instance ToConfStatement Proxy_Buffer_Size where
    toConfStatement (Proxy_Buffer_Size c) = c
instance HasContextHttp
 Proxy_Buffer_Size where
instance HasContextServer
 Proxy_Buffer_Size where
instance HasContextLocation
 Proxy_Buffer_Size where


-- | Enables or disables buffering of responses from the proxied server.
proxy_buffering :: [Text] -> ConfStatement
proxy_buffering vs = ConfStatementExpression (Expression "proxy_buffering" vs)

-- | Safe version of 'proxy_buffering'
proxy_buffering_s :: [Text] -> Proxy_Buffering
proxy_buffering_s vs = Proxy_Buffering$ ConfStatementExpression (Expression "proxy_buffering" vs)
newtype Proxy_Buffering = Proxy_Buffering ConfStatement
instance ToConfStatement Proxy_Buffering where
    toConfStatement (Proxy_Buffering c) = c
instance HasContextHttp
 Proxy_Buffering where
instance HasContextServer
 Proxy_Buffering where
instance HasContextLocation
 Proxy_Buffering where


-- | Sets the number and size of the buffers used for reading a response from the proxied server, for a single connection. By default, the buffer size is equal to one memory page. This is either 4K or 8K, depending on a platform.
proxy_buffers :: [Text] -> ConfStatement
proxy_buffers vs = ConfStatementExpression (Expression "proxy_buffers" vs)

-- | Safe version of 'proxy_buffers'
proxy_buffers_s :: [Text] -> Proxy_Buffers
proxy_buffers_s vs = Proxy_Buffers$ ConfStatementExpression (Expression "proxy_buffers" vs)
newtype Proxy_Buffers = Proxy_Buffers ConfStatement
instance ToConfStatement Proxy_Buffers where
    toConfStatement (Proxy_Buffers c) = c
instance HasContextHttp
 Proxy_Buffers where
instance HasContextServer
 Proxy_Buffers where
instance HasContextLocation
 Proxy_Buffers where


-- | When buffering of responses from the proxied server is enabled, limits the total size of buffers that can be busy sending a response to the client while the response is not yet fully read. In the meantime, the rest of the buffers can be used for reading the response and, if needed, buffering part of the response to a temporary file. By default, size is limited by the size of two buffers set by the and  directives.
proxy_busy_buffers_size :: [Text] -> ConfStatement
proxy_busy_buffers_size vs = ConfStatementExpression (Expression "proxy_busy_buffers_size" vs)

-- | Safe version of 'proxy_busy_buffers_size'
proxy_busy_buffers_size_s :: [Text] -> Proxy_Busy_Buffers_Size
proxy_busy_buffers_size_s vs = Proxy_Busy_Buffers_Size$ ConfStatementExpression (Expression "proxy_busy_buffers_size" vs)
newtype Proxy_Busy_Buffers_Size = Proxy_Busy_Buffers_Size ConfStatement
instance ToConfStatement Proxy_Busy_Buffers_Size where
    toConfStatement (Proxy_Busy_Buffers_Size c) = c
instance HasContextHttp
 Proxy_Busy_Buffers_Size where
instance HasContextServer
 Proxy_Busy_Buffers_Size where
instance HasContextLocation
 Proxy_Busy_Buffers_Size where


-- | Defines a shared memory zone used for caching. The same zone can be used in several places. Parameter value can contain variables (1.7.9). The off parameter disables caching inherited from the previous configuration level.
proxy_cache :: [Text] -> ConfStatement
proxy_cache vs = ConfStatementExpression (Expression "proxy_cache" vs)

-- | Safe version of 'proxy_cache'
proxy_cache_s :: [Text] -> Proxy_Cache
proxy_cache_s vs = Proxy_Cache$ ConfStatementExpression (Expression "proxy_cache" vs)
newtype Proxy_Cache = Proxy_Cache ConfStatement
instance ToConfStatement Proxy_Cache where
    toConfStatement (Proxy_Cache c) = c
instance HasContextHttp
 Proxy_Cache where
instance HasContextServer
 Proxy_Cache where
instance HasContextLocation
 Proxy_Cache where


-- | Defines conditions under which the response will not be taken from a cache. If at least one value of the string parameters is not empty and is not equal to “0” then the response will not be taken from the cache: proxy_cache_bypass $cookie_nocache $arg_nocache$arg_comment; proxy_cache_bypass $http_pragma    $http_authorization; Can be used along with the  directive.
proxy_cache_bypass :: [Text] -> ConfStatement
proxy_cache_bypass vs = ConfStatementExpression (Expression "proxy_cache_bypass" vs)

-- | Safe version of 'proxy_cache_bypass'
proxy_cache_bypass_s :: [Text] -> Proxy_Cache_Bypass
proxy_cache_bypass_s vs = Proxy_Cache_Bypass$ ConfStatementExpression (Expression "proxy_cache_bypass" vs)
newtype Proxy_Cache_Bypass = Proxy_Cache_Bypass ConfStatement
instance ToConfStatement Proxy_Cache_Bypass where
    toConfStatement (Proxy_Cache_Bypass c) = c
instance HasContextHttp
 Proxy_Cache_Bypass where
instance HasContextServer
 Proxy_Cache_Bypass where
instance HasContextLocation
 Proxy_Cache_Bypass where


-- | Enables or disables the conversion of the “HEAD” method to “GET” for caching. When the conversion is disabled, the cache key should be configured to include the $request_method.
proxy_cache_convert_head :: [Text] -> ConfStatement
proxy_cache_convert_head vs = ConfStatementExpression (Expression "proxy_cache_convert_head" vs)

-- | Safe version of 'proxy_cache_convert_head'
proxy_cache_convert_head_s :: [Text] -> Proxy_Cache_Convert_Head
proxy_cache_convert_head_s vs = Proxy_Cache_Convert_Head$ ConfStatementExpression (Expression "proxy_cache_convert_head" vs)
newtype Proxy_Cache_Convert_Head = Proxy_Cache_Convert_Head ConfStatement
instance ToConfStatement Proxy_Cache_Convert_Head where
    toConfStatement (Proxy_Cache_Convert_Head c) = c
instance HasContextHttp
 Proxy_Cache_Convert_Head where
instance HasContextServer
 Proxy_Cache_Convert_Head where
instance HasContextLocation
 Proxy_Cache_Convert_Head where


-- | Defines a key for caching, for example proxy_cache_key "$host$request_uri $cookie_user"; By default, the directive’s value is close to the string proxy_cache_key $scheme$proxy_host$uri$is_args$args;
proxy_cache_key :: [Text] -> ConfStatement
proxy_cache_key vs = ConfStatementExpression (Expression "proxy_cache_key" vs)

-- | Safe version of 'proxy_cache_key'
proxy_cache_key_s :: [Text] -> Proxy_Cache_Key
proxy_cache_key_s vs = Proxy_Cache_Key$ ConfStatementExpression (Expression "proxy_cache_key" vs)
newtype Proxy_Cache_Key = Proxy_Cache_Key ConfStatement
instance ToConfStatement Proxy_Cache_Key where
    toConfStatement (Proxy_Cache_Key c) = c
instance HasContextHttp
 Proxy_Cache_Key where
instance HasContextServer
 Proxy_Cache_Key where
instance HasContextLocation
 Proxy_Cache_Key where


-- | When enabled, only one request at a time will be allowed to populate a new cache element identified according to the directive by passing a request to a proxied server. Other requests of the same cache element will either wait for a response to appear in the cache or the cache lock for this element to be released, up to the time set by the directive.
proxy_cache_lock :: [Text] -> ConfStatement
proxy_cache_lock vs = ConfStatementExpression (Expression "proxy_cache_lock" vs)

-- | Safe version of 'proxy_cache_lock'
proxy_cache_lock_s :: [Text] -> Proxy_Cache_Lock
proxy_cache_lock_s vs = Proxy_Cache_Lock$ ConfStatementExpression (Expression "proxy_cache_lock" vs)
newtype Proxy_Cache_Lock = Proxy_Cache_Lock ConfStatement
instance ToConfStatement Proxy_Cache_Lock where
    toConfStatement (Proxy_Cache_Lock c) = c
instance HasContextHttp
 Proxy_Cache_Lock where
instance HasContextServer
 Proxy_Cache_Lock where
instance HasContextLocation
 Proxy_Cache_Lock where


-- | If the last request passed to the proxied server for populating a new cache element has not completed for the specified time, one more request may be passed to the proxied server.
proxy_cache_lock_age :: [Text] -> ConfStatement
proxy_cache_lock_age vs = ConfStatementExpression (Expression "proxy_cache_lock_age" vs)

-- | Safe version of 'proxy_cache_lock_age'
proxy_cache_lock_age_s :: [Text] -> Proxy_Cache_Lock_Age
proxy_cache_lock_age_s vs = Proxy_Cache_Lock_Age$ ConfStatementExpression (Expression "proxy_cache_lock_age" vs)
newtype Proxy_Cache_Lock_Age = Proxy_Cache_Lock_Age ConfStatement
instance ToConfStatement Proxy_Cache_Lock_Age where
    toConfStatement (Proxy_Cache_Lock_Age c) = c
instance HasContextHttp
 Proxy_Cache_Lock_Age where
instance HasContextServer
 Proxy_Cache_Lock_Age where
instance HasContextLocation
 Proxy_Cache_Lock_Age where


-- | Sets a timeout for . When the time expires, the request will be passed to the proxied server, however, the response will not be cached. Before 1.7.8, the response could be cached.
proxy_cache_lock_timeout :: [Text] -> ConfStatement
proxy_cache_lock_timeout vs = ConfStatementExpression (Expression "proxy_cache_lock_timeout" vs)

-- | Safe version of 'proxy_cache_lock_timeout'
proxy_cache_lock_timeout_s :: [Text] -> Proxy_Cache_Lock_Timeout
proxy_cache_lock_timeout_s vs = Proxy_Cache_Lock_Timeout$ ConfStatementExpression (Expression "proxy_cache_lock_timeout" vs)
newtype Proxy_Cache_Lock_Timeout = Proxy_Cache_Lock_Timeout ConfStatement
instance ToConfStatement Proxy_Cache_Lock_Timeout where
    toConfStatement (Proxy_Cache_Lock_Timeout c) = c
instance HasContextHttp
 Proxy_Cache_Lock_Timeout where
instance HasContextServer
 Proxy_Cache_Lock_Timeout where
instance HasContextLocation
 Proxy_Cache_Lock_Timeout where


-- | If the client request method is listed in this directive then the response will be cached. “GET” and “HEAD” methods are always added to the list, though it is recommended to specify them explicitly. See also the  directive.
proxy_cache_methods :: [Text] -> ConfStatement
proxy_cache_methods vs = ConfStatementExpression (Expression "proxy_cache_methods" vs)

-- | Safe version of 'proxy_cache_methods'
proxy_cache_methods_s :: [Text] -> Proxy_Cache_Methods
proxy_cache_methods_s vs = Proxy_Cache_Methods$ ConfStatementExpression (Expression "proxy_cache_methods" vs)
newtype Proxy_Cache_Methods = Proxy_Cache_Methods ConfStatement
instance ToConfStatement Proxy_Cache_Methods where
    toConfStatement (Proxy_Cache_Methods c) = c
instance HasContextHttp
 Proxy_Cache_Methods where
instance HasContextServer
 Proxy_Cache_Methods where
instance HasContextLocation
 Proxy_Cache_Methods where


-- | Sets the number of requests after which the response will be cached.
proxy_cache_min_uses :: [Text] -> ConfStatement
proxy_cache_min_uses vs = ConfStatementExpression (Expression "proxy_cache_min_uses" vs)

-- | Safe version of 'proxy_cache_min_uses'
proxy_cache_min_uses_s :: [Text] -> Proxy_Cache_Min_Uses
proxy_cache_min_uses_s vs = Proxy_Cache_Min_Uses$ ConfStatementExpression (Expression "proxy_cache_min_uses" vs)
newtype Proxy_Cache_Min_Uses = Proxy_Cache_Min_Uses ConfStatement
instance ToConfStatement Proxy_Cache_Min_Uses where
    toConfStatement (Proxy_Cache_Min_Uses c) = c
instance HasContextHttp
 Proxy_Cache_Min_Uses where
instance HasContextServer
 Proxy_Cache_Min_Uses where
instance HasContextLocation
 Proxy_Cache_Min_Uses where


-- | Sets the path and other parameters of a cache. Cache data are stored in files. The file name in a cache is a result of applying the MD5 function to the cache key. The levels parameter defines hierarchy levels of a cache. For example, in the following configuration proxy_cache_path /data/nginx/cache levels=1:2 keys_zone=one:10m; file names in a cache will look like this: /data/nginx/cache/c/29/b7f54b2df7773722d382f4809d65029c
proxy_cache_path :: [Text] -> ConfStatement
proxy_cache_path vs = ConfStatementExpression (Expression "proxy_cache_path" vs)

-- | Safe version of 'proxy_cache_path'
proxy_cache_path_s :: [Text] -> Proxy_Cache_Path
proxy_cache_path_s vs = Proxy_Cache_Path$ ConfStatementExpression (Expression "proxy_cache_path" vs)
newtype Proxy_Cache_Path = Proxy_Cache_Path ConfStatement
instance ToConfStatement Proxy_Cache_Path where
    toConfStatement (Proxy_Cache_Path c) = c
instance HasContextHttp
 Proxy_Cache_Path where


-- | Defines conditions under which the request will be considered a cache purge request. If at least one value of the string parameters is not empty and is not equal to “0” then the cache entry with a corresponding cache key is removed. The result of successful operation is indicated by returning the  response.
proxy_cache_purge :: [Text] -> ConfStatement
proxy_cache_purge vs = ConfStatementExpression (Expression "proxy_cache_purge" vs)

-- | Safe version of 'proxy_cache_purge'
proxy_cache_purge_s :: [Text] -> Proxy_Cache_Purge
proxy_cache_purge_s vs = Proxy_Cache_Purge$ ConfStatementExpression (Expression "proxy_cache_purge" vs)
newtype Proxy_Cache_Purge = Proxy_Cache_Purge ConfStatement
instance ToConfStatement Proxy_Cache_Purge where
    toConfStatement (Proxy_Cache_Purge c) = c
instance HasContextHttp
 Proxy_Cache_Purge where
instance HasContextServer
 Proxy_Cache_Purge where
instance HasContextLocation
 Proxy_Cache_Purge where


-- | Enables revalidation of expired cache items using conditional requests with the If-Modified-Since and If-None-Match header fields.
proxy_cache_revalidate :: [Text] -> ConfStatement
proxy_cache_revalidate vs = ConfStatementExpression (Expression "proxy_cache_revalidate" vs)

-- | Safe version of 'proxy_cache_revalidate'
proxy_cache_revalidate_s :: [Text] -> Proxy_Cache_Revalidate
proxy_cache_revalidate_s vs = Proxy_Cache_Revalidate$ ConfStatementExpression (Expression "proxy_cache_revalidate" vs)
newtype Proxy_Cache_Revalidate = Proxy_Cache_Revalidate ConfStatement
instance ToConfStatement Proxy_Cache_Revalidate where
    toConfStatement (Proxy_Cache_Revalidate c) = c
instance HasContextHttp
 Proxy_Cache_Revalidate where
instance HasContextServer
 Proxy_Cache_Revalidate where
instance HasContextLocation
 Proxy_Cache_Revalidate where


-- | Determines in which cases a stale cached response can be used when an error occurs during communication with the proxied server. The directive’s parameters match the parameters of the directive.
proxy_cache_use_stale :: [Text] -> ConfStatement
proxy_cache_use_stale vs = ConfStatementExpression (Expression "proxy_cache_use_stale" vs)

-- | Safe version of 'proxy_cache_use_stale'
proxy_cache_use_stale_s :: [Text] -> Proxy_Cache_Use_Stale
proxy_cache_use_stale_s vs = Proxy_Cache_Use_Stale$ ConfStatementExpression (Expression "proxy_cache_use_stale" vs)
newtype Proxy_Cache_Use_Stale = Proxy_Cache_Use_Stale ConfStatement
instance ToConfStatement Proxy_Cache_Use_Stale where
    toConfStatement (Proxy_Cache_Use_Stale c) = c
instance HasContextHttp
 Proxy_Cache_Use_Stale where
instance HasContextServer
 Proxy_Cache_Use_Stale where
instance HasContextLocation
 Proxy_Cache_Use_Stale where


-- | Sets caching time for different response codes. For example, the following directives proxy_cache_valid 200 302 10m; proxy_cache_valid 404      1m; set 10 minutes of caching for responses with codes 200 and 302 and 1 minute for responses with code 404.
proxy_cache_valid :: [Text] -> ConfStatement
proxy_cache_valid vs = ConfStatementExpression (Expression "proxy_cache_valid" vs)

-- | Safe version of 'proxy_cache_valid'
proxy_cache_valid_s :: [Text] -> Proxy_Cache_Valid
proxy_cache_valid_s vs = Proxy_Cache_Valid$ ConfStatementExpression (Expression "proxy_cache_valid" vs)
newtype Proxy_Cache_Valid = Proxy_Cache_Valid ConfStatement
instance ToConfStatement Proxy_Cache_Valid where
    toConfStatement (Proxy_Cache_Valid c) = c
instance HasContextHttp
 Proxy_Cache_Valid where
instance HasContextServer
 Proxy_Cache_Valid where
instance HasContextLocation
 Proxy_Cache_Valid where


-- | Defines a timeout for establishing a connection with a proxied server. It should be noted that this timeout cannot usually exceed 75 seconds.
proxy_connect_timeout :: [Text] -> ConfStatement
proxy_connect_timeout vs = ConfStatementExpression (Expression "proxy_connect_timeout" vs)

-- | Safe version of 'proxy_connect_timeout'
proxy_connect_timeout_s :: [Text] -> Proxy_Connect_Timeout
proxy_connect_timeout_s vs = Proxy_Connect_Timeout$ ConfStatementExpression (Expression "proxy_connect_timeout" vs)
newtype Proxy_Connect_Timeout = Proxy_Connect_Timeout ConfStatement
instance ToConfStatement Proxy_Connect_Timeout where
    toConfStatement (Proxy_Connect_Timeout c) = c
instance HasContextHttp
 Proxy_Connect_Timeout where
instance HasContextServer
 Proxy_Connect_Timeout where
instance HasContextLocation
 Proxy_Connect_Timeout where


-- | Sets a text that should be changed in the domain attribute of the Set-Cookie header fields of a proxied server response. Suppose a proxied server returned the Set-Cookie header field with the attribute “domain=localhost”. The directive proxy_cookie_domain localhost example.org; will rewrite this attribute to “domain=example.org”.
proxy_cookie_domain :: [Text] -> ConfStatement
proxy_cookie_domain vs = ConfStatementExpression (Expression "proxy_cookie_domain" vs)

-- | Safe version of 'proxy_cookie_domain'
proxy_cookie_domain_s :: [Text] -> Proxy_Cookie_Domain
proxy_cookie_domain_s vs = Proxy_Cookie_Domain$ ConfStatementExpression (Expression "proxy_cookie_domain" vs)
newtype Proxy_Cookie_Domain = Proxy_Cookie_Domain ConfStatement
instance ToConfStatement Proxy_Cookie_Domain where
    toConfStatement (Proxy_Cookie_Domain c) = c
instance HasContextHttp
 Proxy_Cookie_Domain where
instance HasContextServer
 Proxy_Cookie_Domain where
instance HasContextLocation
 Proxy_Cookie_Domain where


-- | Sets a text that should be changed in the path attribute of the Set-Cookie header fields of a proxied server response. Suppose a proxied server returned the Set-Cookie header field with the attribute “path=/two/some/uri/”. The directive proxy_cookie_path /two/ /; will rewrite this attribute to “path=/some/uri/”.
proxy_cookie_path :: [Text] -> ConfStatement
proxy_cookie_path vs = ConfStatementExpression (Expression "proxy_cookie_path" vs)

-- | Safe version of 'proxy_cookie_path'
proxy_cookie_path_s :: [Text] -> Proxy_Cookie_Path
proxy_cookie_path_s vs = Proxy_Cookie_Path$ ConfStatementExpression (Expression "proxy_cookie_path" vs)
newtype Proxy_Cookie_Path = Proxy_Cookie_Path ConfStatement
instance ToConfStatement Proxy_Cookie_Path where
    toConfStatement (Proxy_Cookie_Path c) = c
instance HasContextHttp
 Proxy_Cookie_Path where
instance HasContextServer
 Proxy_Cookie_Path where
instance HasContextLocation
 Proxy_Cookie_Path where


-- | Enables byte-range support for both cached and uncached responses from the proxied server regardless of the Accept-Ranges field in these responses.
proxy_force_ranges :: [Text] -> ConfStatement
proxy_force_ranges vs = ConfStatementExpression (Expression "proxy_force_ranges" vs)

-- | Safe version of 'proxy_force_ranges'
proxy_force_ranges_s :: [Text] -> Proxy_Force_Ranges
proxy_force_ranges_s vs = Proxy_Force_Ranges$ ConfStatementExpression (Expression "proxy_force_ranges" vs)
newtype Proxy_Force_Ranges = Proxy_Force_Ranges ConfStatement
instance ToConfStatement Proxy_Force_Ranges where
    toConfStatement (Proxy_Force_Ranges c) = c
instance HasContextHttp
 Proxy_Force_Ranges where
instance HasContextServer
 Proxy_Force_Ranges where
instance HasContextLocation
 Proxy_Force_Ranges where


-- | Sets the bucket size for hash tables used by the  and directives. The details of setting up hash tables are provided in a separate document.
proxy_headers_hash_bucket_size :: [Text] -> ConfStatement
proxy_headers_hash_bucket_size vs = ConfStatementExpression (Expression "proxy_headers_hash_bucket_size" vs)

-- | Safe version of 'proxy_headers_hash_bucket_size'
proxy_headers_hash_bucket_size_s :: [Text] -> Proxy_Headers_Hash_Bucket_Size
proxy_headers_hash_bucket_size_s vs = Proxy_Headers_Hash_Bucket_Size$ ConfStatementExpression (Expression "proxy_headers_hash_bucket_size" vs)
newtype Proxy_Headers_Hash_Bucket_Size = Proxy_Headers_Hash_Bucket_Size ConfStatement
instance ToConfStatement Proxy_Headers_Hash_Bucket_Size where
    toConfStatement (Proxy_Headers_Hash_Bucket_Size c) = c
instance HasContextHttp
 Proxy_Headers_Hash_Bucket_Size where
instance HasContextServer
 Proxy_Headers_Hash_Bucket_Size where
instance HasContextLocation
 Proxy_Headers_Hash_Bucket_Size where


-- | Sets the maximum size of hash tables used by the  and directives. The details of setting up hash tables are provided in a separate document.
proxy_headers_hash_max_size :: [Text] -> ConfStatement
proxy_headers_hash_max_size vs = ConfStatementExpression (Expression "proxy_headers_hash_max_size" vs)

-- | Safe version of 'proxy_headers_hash_max_size'
proxy_headers_hash_max_size_s :: [Text] -> Proxy_Headers_Hash_Max_Size
proxy_headers_hash_max_size_s vs = Proxy_Headers_Hash_Max_Size$ ConfStatementExpression (Expression "proxy_headers_hash_max_size" vs)
newtype Proxy_Headers_Hash_Max_Size = Proxy_Headers_Hash_Max_Size ConfStatement
instance ToConfStatement Proxy_Headers_Hash_Max_Size where
    toConfStatement (Proxy_Headers_Hash_Max_Size c) = c
instance HasContextHttp
 Proxy_Headers_Hash_Max_Size where
instance HasContextServer
 Proxy_Headers_Hash_Max_Size where
instance HasContextLocation
 Proxy_Headers_Hash_Max_Size where


-- | By default, nginx does not pass the header fields Date, Server, X-Pad, and X-Accel-... from the response of a proxied server to a client. The proxy_hide_header directive sets additional fields that will not be passed. If, on the contrary, the passing of fields needs to be permitted, the  directive can be used.
proxy_hide_header :: [Text] -> ConfStatement
proxy_hide_header vs = ConfStatementExpression (Expression "proxy_hide_header" vs)

-- | Safe version of 'proxy_hide_header'
proxy_hide_header_s :: [Text] -> Proxy_Hide_Header
proxy_hide_header_s vs = Proxy_Hide_Header$ ConfStatementExpression (Expression "proxy_hide_header" vs)
newtype Proxy_Hide_Header = Proxy_Hide_Header ConfStatement
instance ToConfStatement Proxy_Hide_Header where
    toConfStatement (Proxy_Hide_Header c) = c
instance HasContextHttp
 Proxy_Hide_Header where
instance HasContextServer
 Proxy_Hide_Header where
instance HasContextLocation
 Proxy_Hide_Header where


-- | Sets the HTTP protocol version for proxying. By default, version 1.0 is used. Version 1.1 is recommended for use with connections and NTLM authentication.
proxy_http_version :: [Text] -> ConfStatement
proxy_http_version vs = ConfStatementExpression (Expression "proxy_http_version" vs)

-- | Safe version of 'proxy_http_version'
proxy_http_version_s :: [Text] -> Proxy_Http_Version
proxy_http_version_s vs = Proxy_Http_Version$ ConfStatementExpression (Expression "proxy_http_version" vs)
newtype Proxy_Http_Version = Proxy_Http_Version ConfStatement
instance ToConfStatement Proxy_Http_Version where
    toConfStatement (Proxy_Http_Version c) = c
instance HasContextHttp
 Proxy_Http_Version where
instance HasContextServer
 Proxy_Http_Version where
instance HasContextLocation
 Proxy_Http_Version where


-- | Determines whether the connection with a proxied server should be closed when a client closes the connection without waiting for a response.
proxy_ignore_client_abort :: [Text] -> ConfStatement
proxy_ignore_client_abort vs = ConfStatementExpression (Expression "proxy_ignore_client_abort" vs)

-- | Safe version of 'proxy_ignore_client_abort'
proxy_ignore_client_abort_s :: [Text] -> Proxy_Ignore_Client_Abort
proxy_ignore_client_abort_s vs = Proxy_Ignore_Client_Abort$ ConfStatementExpression (Expression "proxy_ignore_client_abort" vs)
newtype Proxy_Ignore_Client_Abort = Proxy_Ignore_Client_Abort ConfStatement
instance ToConfStatement Proxy_Ignore_Client_Abort where
    toConfStatement (Proxy_Ignore_Client_Abort c) = c
instance HasContextHttp
 Proxy_Ignore_Client_Abort where
instance HasContextServer
 Proxy_Ignore_Client_Abort where
instance HasContextLocation
 Proxy_Ignore_Client_Abort where


-- | Disables processing of certain response header fields from the proxied server. The following fields can be ignored: X-Accel-Redirect, X-Accel-Expires, X-Accel-Limit-Rate (1.1.6), X-Accel-Buffering (1.1.6), X-Accel-Charset (1.1.6), Expires, Cache-Control, Set-Cookie (0.8.44), and Vary (1.7.7).
proxy_ignore_headers :: [Text] -> ConfStatement
proxy_ignore_headers vs = ConfStatementExpression (Expression "proxy_ignore_headers" vs)

-- | Safe version of 'proxy_ignore_headers'
proxy_ignore_headers_s :: [Text] -> Proxy_Ignore_Headers
proxy_ignore_headers_s vs = Proxy_Ignore_Headers$ ConfStatementExpression (Expression "proxy_ignore_headers" vs)
newtype Proxy_Ignore_Headers = Proxy_Ignore_Headers ConfStatement
instance ToConfStatement Proxy_Ignore_Headers where
    toConfStatement (Proxy_Ignore_Headers c) = c
instance HasContextHttp
 Proxy_Ignore_Headers where
instance HasContextServer
 Proxy_Ignore_Headers where
instance HasContextLocation
 Proxy_Ignore_Headers where


-- | Determines whether proxied responses with codes greater than or equal to 300 should be passed to a client or be redirected to nginx for processing with the  directive.
proxy_intercept_errors :: [Text] -> ConfStatement
proxy_intercept_errors vs = ConfStatementExpression (Expression "proxy_intercept_errors" vs)

-- | Safe version of 'proxy_intercept_errors'
proxy_intercept_errors_s :: [Text] -> Proxy_Intercept_Errors
proxy_intercept_errors_s vs = Proxy_Intercept_Errors$ ConfStatementExpression (Expression "proxy_intercept_errors" vs)
newtype Proxy_Intercept_Errors = Proxy_Intercept_Errors ConfStatement
instance ToConfStatement Proxy_Intercept_Errors where
    toConfStatement (Proxy_Intercept_Errors c) = c
instance HasContextHttp
 Proxy_Intercept_Errors where
instance HasContextServer
 Proxy_Intercept_Errors where
instance HasContextLocation
 Proxy_Intercept_Errors where


-- | Limits the speed of reading the response from the proxied server. The rate is specified in bytes per second. The zero value disables rate limiting. The limit is set per a request, and so if nginx simultaneously opens two connections to the proxied server, the overall rate will be twice as much as the specified limit. The limitation works only if buffering of responses from the proxied server is enabled.
proxy_limit_rate :: [Text] -> ConfStatement
proxy_limit_rate vs = ConfStatementExpression (Expression "proxy_limit_rate" vs)

-- | Safe version of 'proxy_limit_rate'
proxy_limit_rate_s :: [Text] -> Proxy_Limit_Rate
proxy_limit_rate_s vs = Proxy_Limit_Rate$ ConfStatementExpression (Expression "proxy_limit_rate" vs)
newtype Proxy_Limit_Rate = Proxy_Limit_Rate ConfStatement
instance ToConfStatement Proxy_Limit_Rate where
    toConfStatement (Proxy_Limit_Rate c) = c
instance HasContextHttp
 Proxy_Limit_Rate where
instance HasContextServer
 Proxy_Limit_Rate where
instance HasContextLocation
 Proxy_Limit_Rate where


-- | When buffering of responses from the proxied server is enabled, and the whole response does not fit into the buffers set by the  and directives, a part of the response can be saved to a temporary file. This directive sets the maximum size of the temporary file. The size of data written to the temporary file at a time is set by the  directive.
proxy_max_temp_file_size :: [Text] -> ConfStatement
proxy_max_temp_file_size vs = ConfStatementExpression (Expression "proxy_max_temp_file_size" vs)

-- | Safe version of 'proxy_max_temp_file_size'
proxy_max_temp_file_size_s :: [Text] -> Proxy_Max_Temp_File_Size
proxy_max_temp_file_size_s vs = Proxy_Max_Temp_File_Size$ ConfStatementExpression (Expression "proxy_max_temp_file_size" vs)
newtype Proxy_Max_Temp_File_Size = Proxy_Max_Temp_File_Size ConfStatement
instance ToConfStatement Proxy_Max_Temp_File_Size where
    toConfStatement (Proxy_Max_Temp_File_Size c) = c
instance HasContextHttp
 Proxy_Max_Temp_File_Size where
instance HasContextServer
 Proxy_Max_Temp_File_Size where
instance HasContextLocation
 Proxy_Max_Temp_File_Size where


-- | Specifies the HTTP method to use in requests forwarded to the proxied server instead of the method from the client request.
proxy_method :: [Text] -> ConfStatement
proxy_method vs = ConfStatementExpression (Expression "proxy_method" vs)

-- | Safe version of 'proxy_method'
proxy_method_s :: [Text] -> Proxy_Method
proxy_method_s vs = Proxy_Method$ ConfStatementExpression (Expression "proxy_method" vs)
newtype Proxy_Method = Proxy_Method ConfStatement
instance ToConfStatement Proxy_Method where
    toConfStatement (Proxy_Method c) = c
instance HasContextHttp
 Proxy_Method where
instance HasContextServer
 Proxy_Method where
instance HasContextLocation
 Proxy_Method where


-- | Specifies in which cases a request should be passed to the next server: error an error occurred while establishing a connection with the server, passing a request to it, or reading the response header; timeout a timeout has occurred while establishing a connection with the server, passing a request to it, or reading the response header; invalid_header a server returned an empty or invalid response; http_500 a server returned a response with the code 500; http_502 a server returned a response with the code 502; http_503 a server returned a response with the code 503; http_504 a server returned a response with the code 504; http_403 a server returned a response with the code 403; http_404 a server returned a response with the code 404; non_idempotent normally, requests with a non-idempotent method (POST, LOCK, PATCH) are not passed to the next server if a request has been sent to an upstream server (1.9.13); enabling this option explicitly allows retrying such requests; off disables passing a request to the next server.
proxy_next_upstream :: [Text] -> ConfStatement
proxy_next_upstream vs = ConfStatementExpression (Expression "proxy_next_upstream" vs)

-- | Safe version of 'proxy_next_upstream'
proxy_next_upstream_s :: [Text] -> Proxy_Next_Upstream
proxy_next_upstream_s vs = Proxy_Next_Upstream$ ConfStatementExpression (Expression "proxy_next_upstream" vs)
newtype Proxy_Next_Upstream = Proxy_Next_Upstream ConfStatement
instance ToConfStatement Proxy_Next_Upstream where
    toConfStatement (Proxy_Next_Upstream c) = c
instance HasContextHttp
 Proxy_Next_Upstream where
instance HasContextServer
 Proxy_Next_Upstream where
instance HasContextLocation
 Proxy_Next_Upstream where


-- | Limits the time during which a request can be passed to the next server. The 0 value turns off this limitation.
proxy_next_upstream_timeout :: [Text] -> ConfStatement
proxy_next_upstream_timeout vs = ConfStatementExpression (Expression "proxy_next_upstream_timeout" vs)

-- | Safe version of 'proxy_next_upstream_timeout'
proxy_next_upstream_timeout_s :: [Text] -> Proxy_Next_Upstream_Timeout
proxy_next_upstream_timeout_s vs = Proxy_Next_Upstream_Timeout$ ConfStatementExpression (Expression "proxy_next_upstream_timeout" vs)
newtype Proxy_Next_Upstream_Timeout = Proxy_Next_Upstream_Timeout ConfStatement
instance ToConfStatement Proxy_Next_Upstream_Timeout where
    toConfStatement (Proxy_Next_Upstream_Timeout c) = c
instance HasContextHttp
 Proxy_Next_Upstream_Timeout where
instance HasContextServer
 Proxy_Next_Upstream_Timeout where
instance HasContextLocation
 Proxy_Next_Upstream_Timeout where


-- | Limits the number of possible tries for passing a request to the next server. The 0 value turns off this limitation.
proxy_next_upstream_tries :: [Text] -> ConfStatement
proxy_next_upstream_tries vs = ConfStatementExpression (Expression "proxy_next_upstream_tries" vs)

-- | Safe version of 'proxy_next_upstream_tries'
proxy_next_upstream_tries_s :: [Text] -> Proxy_Next_Upstream_Tries
proxy_next_upstream_tries_s vs = Proxy_Next_Upstream_Tries$ ConfStatementExpression (Expression "proxy_next_upstream_tries" vs)
newtype Proxy_Next_Upstream_Tries = Proxy_Next_Upstream_Tries ConfStatement
instance ToConfStatement Proxy_Next_Upstream_Tries where
    toConfStatement (Proxy_Next_Upstream_Tries c) = c
instance HasContextHttp
 Proxy_Next_Upstream_Tries where
instance HasContextServer
 Proxy_Next_Upstream_Tries where
instance HasContextLocation
 Proxy_Next_Upstream_Tries where


-- | Defines conditions under which the response will not be saved to a cache. If at least one value of the string parameters is not empty and is not equal to “0” then the response will not be saved: proxy_no_cache $cookie_nocache $arg_nocache$arg_comment; proxy_no_cache $http_pragma    $http_authorization; Can be used along with the  directive.
proxy_no_cache :: [Text] -> ConfStatement
proxy_no_cache vs = ConfStatementExpression (Expression "proxy_no_cache" vs)

-- | Safe version of 'proxy_no_cache'
proxy_no_cache_s :: [Text] -> Proxy_No_Cache
proxy_no_cache_s vs = Proxy_No_Cache$ ConfStatementExpression (Expression "proxy_no_cache" vs)
newtype Proxy_No_Cache = Proxy_No_Cache ConfStatement
instance ToConfStatement Proxy_No_Cache where
    toConfStatement (Proxy_No_Cache c) = c
instance HasContextHttp
 Proxy_No_Cache where
instance HasContextServer
 Proxy_No_Cache where
instance HasContextLocation
 Proxy_No_Cache where


-- | Sets the protocol and address of a proxied server and an optional URI to which a location should be mapped. As a protocol, “http” or “https” can be specified. The address can be specified as a domain name or IP address, and an optional port: proxy_pass http://localhost:8000/uri/; or as a UNIX-domain socket path specified after the word “unix” and enclosed in colons: proxy_pass http://unix:/tmp/backend.socket:/uri/;
proxy_pass :: [Text] -> ConfStatement
proxy_pass vs = ConfStatementExpression (Expression "proxy_pass" vs)

-- | Safe version of 'proxy_pass'
proxy_pass_s :: [Text] -> Proxy_Pass
proxy_pass_s vs = Proxy_Pass$ ConfStatementExpression (Expression "proxy_pass" vs)
newtype Proxy_Pass = Proxy_Pass ConfStatement
instance ToConfStatement Proxy_Pass where
    toConfStatement (Proxy_Pass c) = c
instance HasContextLocation
 Proxy_Pass where
instance HasContextLimit_Except
 Proxy_Pass where


-- | Permits passing otherwise disabled header fields from a proxied server to a client.
proxy_pass_header :: [Text] -> ConfStatement
proxy_pass_header vs = ConfStatementExpression (Expression "proxy_pass_header" vs)

-- | Safe version of 'proxy_pass_header'
proxy_pass_header_s :: [Text] -> Proxy_Pass_Header
proxy_pass_header_s vs = Proxy_Pass_Header$ ConfStatementExpression (Expression "proxy_pass_header" vs)
newtype Proxy_Pass_Header = Proxy_Pass_Header ConfStatement
instance ToConfStatement Proxy_Pass_Header where
    toConfStatement (Proxy_Pass_Header c) = c
instance HasContextHttp
 Proxy_Pass_Header where
instance HasContextServer
 Proxy_Pass_Header where
instance HasContextLocation
 Proxy_Pass_Header where


-- | Indicates whether the original request body is passed to the proxied server. location /x-accel-redirect-here/ { proxy_method GET; proxy_pass_request_body off; proxy_set_header Content-Length ""; proxy_pass ... } See also the  and directives.
proxy_pass_request_body :: [Text] -> ConfStatement
proxy_pass_request_body vs = ConfStatementExpression (Expression "proxy_pass_request_body" vs)

-- | Safe version of 'proxy_pass_request_body'
proxy_pass_request_body_s :: [Text] -> Proxy_Pass_Request_Body
proxy_pass_request_body_s vs = Proxy_Pass_Request_Body$ ConfStatementExpression (Expression "proxy_pass_request_body" vs)
newtype Proxy_Pass_Request_Body = Proxy_Pass_Request_Body ConfStatement
instance ToConfStatement Proxy_Pass_Request_Body where
    toConfStatement (Proxy_Pass_Request_Body c) = c
instance HasContextHttp
 Proxy_Pass_Request_Body where
instance HasContextServer
 Proxy_Pass_Request_Body where
instance HasContextLocation
 Proxy_Pass_Request_Body where


-- | Indicates whether the header fields of the original request are passed to the proxied server. location /x-accel-redirect-here/ { proxy_method GET; proxy_pass_request_headers off; proxy_pass_request_body off; proxy_pass ... } See also the  and directives.
proxy_pass_request_headers :: [Text] -> ConfStatement
proxy_pass_request_headers vs = ConfStatementExpression (Expression "proxy_pass_request_headers" vs)

-- | Safe version of 'proxy_pass_request_headers'
proxy_pass_request_headers_s :: [Text] -> Proxy_Pass_Request_Headers
proxy_pass_request_headers_s vs = Proxy_Pass_Request_Headers$ ConfStatementExpression (Expression "proxy_pass_request_headers" vs)
newtype Proxy_Pass_Request_Headers = Proxy_Pass_Request_Headers ConfStatement
instance ToConfStatement Proxy_Pass_Request_Headers where
    toConfStatement (Proxy_Pass_Request_Headers c) = c
instance HasContextHttp
 Proxy_Pass_Request_Headers where
instance HasContextServer
 Proxy_Pass_Request_Headers where
instance HasContextLocation
 Proxy_Pass_Request_Headers where


-- | Defines a timeout for reading a response from the proxied server. The timeout is set only between two successive read operations, not for the transmission of the whole response. If the proxied server does not transmit anything within this time, the connection is closed.
proxy_read_timeout :: [Text] -> ConfStatement
proxy_read_timeout vs = ConfStatementExpression (Expression "proxy_read_timeout" vs)

-- | Safe version of 'proxy_read_timeout'
proxy_read_timeout_s :: [Text] -> Proxy_Read_Timeout
proxy_read_timeout_s vs = Proxy_Read_Timeout$ ConfStatementExpression (Expression "proxy_read_timeout" vs)
newtype Proxy_Read_Timeout = Proxy_Read_Timeout ConfStatement
instance ToConfStatement Proxy_Read_Timeout where
    toConfStatement (Proxy_Read_Timeout c) = c
instance HasContextHttp
 Proxy_Read_Timeout where
instance HasContextServer
 Proxy_Read_Timeout where
instance HasContextLocation
 Proxy_Read_Timeout where


-- | Sets the text that should be changed in the Location and Refresh header fields of a proxied server response. Suppose a proxied server returned the header field “Location: http://localhost:8000/two/some/uri/”. The directive proxy_redirect http://localhost:8000/two/ http://frontend/one/; will rewrite this string to “Location: http://frontend/one/some/uri/”.
proxy_redirect :: [Text] -> ConfStatement
proxy_redirect vs = ConfStatementExpression (Expression "proxy_redirect" vs)

-- | Safe version of 'proxy_redirect'
proxy_redirect_s :: [Text] -> Proxy_Redirect
proxy_redirect_s vs = Proxy_Redirect$ ConfStatementExpression (Expression "proxy_redirect" vs)
newtype Proxy_Redirect = Proxy_Redirect ConfStatement
instance ToConfStatement Proxy_Redirect where
    toConfStatement (Proxy_Redirect c) = c
instance HasContextHttp
 Proxy_Redirect where
instance HasContextServer
 Proxy_Redirect where
instance HasContextLocation
 Proxy_Redirect where


-- | Enables or disables buffering of a client request body.
proxy_request_buffering :: [Text] -> ConfStatement
proxy_request_buffering vs = ConfStatementExpression (Expression "proxy_request_buffering" vs)

-- | Safe version of 'proxy_request_buffering'
proxy_request_buffering_s :: [Text] -> Proxy_Request_Buffering
proxy_request_buffering_s vs = Proxy_Request_Buffering$ ConfStatementExpression (Expression "proxy_request_buffering" vs)
newtype Proxy_Request_Buffering = Proxy_Request_Buffering ConfStatement
instance ToConfStatement Proxy_Request_Buffering where
    toConfStatement (Proxy_Request_Buffering c) = c
instance HasContextHttp
 Proxy_Request_Buffering where
instance HasContextServer
 Proxy_Request_Buffering where
instance HasContextLocation
 Proxy_Request_Buffering where


-- | If the directive is set to a non-zero value, nginx will try to minimize the number of send operations on outgoing connections to a proxied server by using either NOTE_LOWAT flag of the method, or the SO_SNDLOWAT socket option, with the specified size.
proxy_send_lowat :: [Text] -> ConfStatement
proxy_send_lowat vs = ConfStatementExpression (Expression "proxy_send_lowat" vs)

-- | Safe version of 'proxy_send_lowat'
proxy_send_lowat_s :: [Text] -> Proxy_Send_Lowat
proxy_send_lowat_s vs = Proxy_Send_Lowat$ ConfStatementExpression (Expression "proxy_send_lowat" vs)
newtype Proxy_Send_Lowat = Proxy_Send_Lowat ConfStatement
instance ToConfStatement Proxy_Send_Lowat where
    toConfStatement (Proxy_Send_Lowat c) = c
instance HasContextHttp
 Proxy_Send_Lowat where
instance HasContextServer
 Proxy_Send_Lowat where
instance HasContextLocation
 Proxy_Send_Lowat where


-- | Sets a timeout for transmitting a request to the proxied server. The timeout is set only between two successive write operations, not for the transmission of the whole request. If the proxied server does not receive anything within this time, the connection is closed.
proxy_send_timeout :: [Text] -> ConfStatement
proxy_send_timeout vs = ConfStatementExpression (Expression "proxy_send_timeout" vs)

-- | Safe version of 'proxy_send_timeout'
proxy_send_timeout_s :: [Text] -> Proxy_Send_Timeout
proxy_send_timeout_s vs = Proxy_Send_Timeout$ ConfStatementExpression (Expression "proxy_send_timeout" vs)
newtype Proxy_Send_Timeout = Proxy_Send_Timeout ConfStatement
instance ToConfStatement Proxy_Send_Timeout where
    toConfStatement (Proxy_Send_Timeout c) = c
instance HasContextHttp
 Proxy_Send_Timeout where
instance HasContextServer
 Proxy_Send_Timeout where
instance HasContextLocation
 Proxy_Send_Timeout where


-- | Allows redefining the request body passed to the proxied server. The value can contain text, variables, and their combination.
proxy_set_body :: [Text] -> ConfStatement
proxy_set_body vs = ConfStatementExpression (Expression "proxy_set_body" vs)

-- | Safe version of 'proxy_set_body'
proxy_set_body_s :: [Text] -> Proxy_Set_Body
proxy_set_body_s vs = Proxy_Set_Body$ ConfStatementExpression (Expression "proxy_set_body" vs)
newtype Proxy_Set_Body = Proxy_Set_Body ConfStatement
instance ToConfStatement Proxy_Set_Body where
    toConfStatement (Proxy_Set_Body c) = c
instance HasContextHttp
 Proxy_Set_Body where
instance HasContextServer
 Proxy_Set_Body where
instance HasContextLocation
 Proxy_Set_Body where


-- | Allows redefining or appending fields to the request header passed to the proxied server. The value can contain text, variables, and their combinations. These directives are inherited from the previous level if and only if there are no proxy_set_header directives defined on the current level. By default, only two fields are redefined: proxy_set_header Host       $proxy_host; proxy_set_header Connection close; If caching is enabled, the header fields If-Modified-Since, If-Unmodified-Since, If-None-Match, If-Match, Range, and If-Range from the original request are not passed to the proxied server.
proxy_set_header :: [Text] -> ConfStatement
proxy_set_header vs = ConfStatementExpression (Expression "proxy_set_header" vs)

-- | Safe version of 'proxy_set_header'
proxy_set_header_s :: [Text] -> Proxy_Set_Header
proxy_set_header_s vs = Proxy_Set_Header$ ConfStatementExpression (Expression "proxy_set_header" vs)
newtype Proxy_Set_Header = Proxy_Set_Header ConfStatement
instance ToConfStatement Proxy_Set_Header where
    toConfStatement (Proxy_Set_Header c) = c
instance HasContextHttp
 Proxy_Set_Header where
instance HasContextServer
 Proxy_Set_Header where
instance HasContextLocation
 Proxy_Set_Header where


-- | Specifies a file with the certificate in the PEM format used for authentication to a proxied HTTPS server.
proxy_ssl_certificate :: [Text] -> ConfStatement
proxy_ssl_certificate vs = ConfStatementExpression (Expression "proxy_ssl_certificate" vs)

-- | Safe version of 'proxy_ssl_certificate'
proxy_ssl_certificate_s :: [Text] -> Proxy_Ssl_Certificate
proxy_ssl_certificate_s vs = Proxy_Ssl_Certificate$ ConfStatementExpression (Expression "proxy_ssl_certificate" vs)
newtype Proxy_Ssl_Certificate = Proxy_Ssl_Certificate ConfStatement
instance ToConfStatement Proxy_Ssl_Certificate where
    toConfStatement (Proxy_Ssl_Certificate c) = c
instance HasContextHttp
 Proxy_Ssl_Certificate where
instance HasContextServer
 Proxy_Ssl_Certificate where
instance HasContextLocation
 Proxy_Ssl_Certificate where


-- | Specifies a file with the secret key in the PEM format used for authentication to a proxied HTTPS server.
proxy_ssl_certificate_key :: [Text] -> ConfStatement
proxy_ssl_certificate_key vs = ConfStatementExpression (Expression "proxy_ssl_certificate_key" vs)

-- | Safe version of 'proxy_ssl_certificate_key'
proxy_ssl_certificate_key_s :: [Text] -> Proxy_Ssl_Certificate_Key
proxy_ssl_certificate_key_s vs = Proxy_Ssl_Certificate_Key$ ConfStatementExpression (Expression "proxy_ssl_certificate_key" vs)
newtype Proxy_Ssl_Certificate_Key = Proxy_Ssl_Certificate_Key ConfStatement
instance ToConfStatement Proxy_Ssl_Certificate_Key where
    toConfStatement (Proxy_Ssl_Certificate_Key c) = c
instance HasContextHttp
 Proxy_Ssl_Certificate_Key where
instance HasContextServer
 Proxy_Ssl_Certificate_Key where
instance HasContextLocation
 Proxy_Ssl_Certificate_Key where


-- | Specifies the enabled ciphers for requests to a proxied HTTPS server. The ciphers are specified in the format understood by the OpenSSL library.
proxy_ssl_ciphers :: [Text] -> ConfStatement
proxy_ssl_ciphers vs = ConfStatementExpression (Expression "proxy_ssl_ciphers" vs)

-- | Safe version of 'proxy_ssl_ciphers'
proxy_ssl_ciphers_s :: [Text] -> Proxy_Ssl_Ciphers
proxy_ssl_ciphers_s vs = Proxy_Ssl_Ciphers$ ConfStatementExpression (Expression "proxy_ssl_ciphers" vs)
newtype Proxy_Ssl_Ciphers = Proxy_Ssl_Ciphers ConfStatement
instance ToConfStatement Proxy_Ssl_Ciphers where
    toConfStatement (Proxy_Ssl_Ciphers c) = c
instance HasContextHttp
 Proxy_Ssl_Ciphers where
instance HasContextServer
 Proxy_Ssl_Ciphers where
instance HasContextLocation
 Proxy_Ssl_Ciphers where


-- | Specifies a file with revoked certificates (CRL) in the PEM format used to verify the certificate of the proxied HTTPS server.
proxy_ssl_crl :: [Text] -> ConfStatement
proxy_ssl_crl vs = ConfStatementExpression (Expression "proxy_ssl_crl" vs)

-- | Safe version of 'proxy_ssl_crl'
proxy_ssl_crl_s :: [Text] -> Proxy_Ssl_Crl
proxy_ssl_crl_s vs = Proxy_Ssl_Crl$ ConfStatementExpression (Expression "proxy_ssl_crl" vs)
newtype Proxy_Ssl_Crl = Proxy_Ssl_Crl ConfStatement
instance ToConfStatement Proxy_Ssl_Crl where
    toConfStatement (Proxy_Ssl_Crl c) = c
instance HasContextHttp
 Proxy_Ssl_Crl where
instance HasContextServer
 Proxy_Ssl_Crl where
instance HasContextLocation
 Proxy_Ssl_Crl where


-- | Allows overriding the server name used to verify the certificate of the proxied HTTPS server and to be passed through SNI when establishing a connection with the proxied HTTPS server.
proxy_ssl_name :: [Text] -> ConfStatement
proxy_ssl_name vs = ConfStatementExpression (Expression "proxy_ssl_name" vs)

-- | Safe version of 'proxy_ssl_name'
proxy_ssl_name_s :: [Text] -> Proxy_Ssl_Name
proxy_ssl_name_s vs = Proxy_Ssl_Name$ ConfStatementExpression (Expression "proxy_ssl_name" vs)
newtype Proxy_Ssl_Name = Proxy_Ssl_Name ConfStatement
instance ToConfStatement Proxy_Ssl_Name where
    toConfStatement (Proxy_Ssl_Name c) = c
instance HasContextHttp
 Proxy_Ssl_Name where
instance HasContextServer
 Proxy_Ssl_Name where
instance HasContextLocation
 Proxy_Ssl_Name where


-- | Specifies a file with passphrases for secret keys where each passphrase is specified on a separate line. Passphrases are tried in turn when loading the key.
proxy_ssl_password_file :: [Text] -> ConfStatement
proxy_ssl_password_file vs = ConfStatementExpression (Expression "proxy_ssl_password_file" vs)

-- | Safe version of 'proxy_ssl_password_file'
proxy_ssl_password_file_s :: [Text] -> Proxy_Ssl_Password_File
proxy_ssl_password_file_s vs = Proxy_Ssl_Password_File$ ConfStatementExpression (Expression "proxy_ssl_password_file" vs)
newtype Proxy_Ssl_Password_File = Proxy_Ssl_Password_File ConfStatement
instance ToConfStatement Proxy_Ssl_Password_File where
    toConfStatement (Proxy_Ssl_Password_File c) = c
instance HasContextHttp
 Proxy_Ssl_Password_File where
instance HasContextServer
 Proxy_Ssl_Password_File where
instance HasContextLocation
 Proxy_Ssl_Password_File where


-- | Enables or disables passing of the server name through TLS Server Name Indication extension (SNI, RFC 6066) when establishing a connection with the proxied HTTPS server.
proxy_ssl_server_name :: [Text] -> ConfStatement
proxy_ssl_server_name vs = ConfStatementExpression (Expression "proxy_ssl_server_name" vs)

-- | Safe version of 'proxy_ssl_server_name'
proxy_ssl_server_name_s :: [Text] -> Proxy_Ssl_Server_Name
proxy_ssl_server_name_s vs = Proxy_Ssl_Server_Name$ ConfStatementExpression (Expression "proxy_ssl_server_name" vs)
newtype Proxy_Ssl_Server_Name = Proxy_Ssl_Server_Name ConfStatement
instance ToConfStatement Proxy_Ssl_Server_Name where
    toConfStatement (Proxy_Ssl_Server_Name c) = c
instance HasContextHttp
 Proxy_Ssl_Server_Name where
instance HasContextServer
 Proxy_Ssl_Server_Name where
instance HasContextLocation
 Proxy_Ssl_Server_Name where


-- | Determines whether SSL sessions can be reused when working with the proxied server. If the errors “SSL3_GET_FINISHED:digest check failed” appear in the logs, try disabling session reuse.
proxy_ssl_session_reuse :: [Text] -> ConfStatement
proxy_ssl_session_reuse vs = ConfStatementExpression (Expression "proxy_ssl_session_reuse" vs)

-- | Safe version of 'proxy_ssl_session_reuse'
proxy_ssl_session_reuse_s :: [Text] -> Proxy_Ssl_Session_Reuse
proxy_ssl_session_reuse_s vs = Proxy_Ssl_Session_Reuse$ ConfStatementExpression (Expression "proxy_ssl_session_reuse" vs)
newtype Proxy_Ssl_Session_Reuse = Proxy_Ssl_Session_Reuse ConfStatement
instance ToConfStatement Proxy_Ssl_Session_Reuse where
    toConfStatement (Proxy_Ssl_Session_Reuse c) = c
instance HasContextHttp
 Proxy_Ssl_Session_Reuse where
instance HasContextServer
 Proxy_Ssl_Session_Reuse where
instance HasContextLocation
 Proxy_Ssl_Session_Reuse where


-- | Enables the specified protocols for requests to a proxied HTTPS server.
proxy_ssl_protocols :: [Text] -> ConfStatement
proxy_ssl_protocols vs = ConfStatementExpression (Expression "proxy_ssl_protocols" vs)

-- | Safe version of 'proxy_ssl_protocols'
proxy_ssl_protocols_s :: [Text] -> Proxy_Ssl_Protocols
proxy_ssl_protocols_s vs = Proxy_Ssl_Protocols$ ConfStatementExpression (Expression "proxy_ssl_protocols" vs)
newtype Proxy_Ssl_Protocols = Proxy_Ssl_Protocols ConfStatement
instance ToConfStatement Proxy_Ssl_Protocols where
    toConfStatement (Proxy_Ssl_Protocols c) = c
instance HasContextHttp
 Proxy_Ssl_Protocols where
instance HasContextServer
 Proxy_Ssl_Protocols where
instance HasContextLocation
 Proxy_Ssl_Protocols where


-- | Specifies a file with trusted CA certificates in the PEM format used to verify the certificate of the proxied HTTPS server.
proxy_ssl_trusted_certificate :: [Text] -> ConfStatement
proxy_ssl_trusted_certificate vs = ConfStatementExpression (Expression "proxy_ssl_trusted_certificate" vs)

-- | Safe version of 'proxy_ssl_trusted_certificate'
proxy_ssl_trusted_certificate_s :: [Text] -> Proxy_Ssl_Trusted_Certificate
proxy_ssl_trusted_certificate_s vs = Proxy_Ssl_Trusted_Certificate$ ConfStatementExpression (Expression "proxy_ssl_trusted_certificate" vs)
newtype Proxy_Ssl_Trusted_Certificate = Proxy_Ssl_Trusted_Certificate ConfStatement
instance ToConfStatement Proxy_Ssl_Trusted_Certificate where
    toConfStatement (Proxy_Ssl_Trusted_Certificate c) = c
instance HasContextHttp
 Proxy_Ssl_Trusted_Certificate where
instance HasContextServer
 Proxy_Ssl_Trusted_Certificate where
instance HasContextLocation
 Proxy_Ssl_Trusted_Certificate where


-- | Enables or disables verification of the proxied HTTPS server certificate.
proxy_ssl_verify :: [Text] -> ConfStatement
proxy_ssl_verify vs = ConfStatementExpression (Expression "proxy_ssl_verify" vs)

-- | Safe version of 'proxy_ssl_verify'
proxy_ssl_verify_s :: [Text] -> Proxy_Ssl_Verify
proxy_ssl_verify_s vs = Proxy_Ssl_Verify$ ConfStatementExpression (Expression "proxy_ssl_verify" vs)
newtype Proxy_Ssl_Verify = Proxy_Ssl_Verify ConfStatement
instance ToConfStatement Proxy_Ssl_Verify where
    toConfStatement (Proxy_Ssl_Verify c) = c
instance HasContextHttp
 Proxy_Ssl_Verify where
instance HasContextServer
 Proxy_Ssl_Verify where
instance HasContextLocation
 Proxy_Ssl_Verify where


-- | Sets the verification depth in the proxied HTTPS server certificates chain.
proxy_ssl_verify_depth :: [Text] -> ConfStatement
proxy_ssl_verify_depth vs = ConfStatementExpression (Expression "proxy_ssl_verify_depth" vs)

-- | Safe version of 'proxy_ssl_verify_depth'
proxy_ssl_verify_depth_s :: [Text] -> Proxy_Ssl_Verify_Depth
proxy_ssl_verify_depth_s vs = Proxy_Ssl_Verify_Depth$ ConfStatementExpression (Expression "proxy_ssl_verify_depth" vs)
newtype Proxy_Ssl_Verify_Depth = Proxy_Ssl_Verify_Depth ConfStatement
instance ToConfStatement Proxy_Ssl_Verify_Depth where
    toConfStatement (Proxy_Ssl_Verify_Depth c) = c
instance HasContextHttp
 Proxy_Ssl_Verify_Depth where
instance HasContextServer
 Proxy_Ssl_Verify_Depth where
instance HasContextLocation
 Proxy_Ssl_Verify_Depth where


-- | Enables saving of files to a disk. The on parameter saves files with paths corresponding to the directives or . The off parameter disables saving of files. In addition, the file name can be set explicitly using the string with variables: proxy_store /data/www$original_uri;
proxy_store :: [Text] -> ConfStatement
proxy_store vs = ConfStatementExpression (Expression "proxy_store" vs)

-- | Safe version of 'proxy_store'
proxy_store_s :: [Text] -> Proxy_Store
proxy_store_s vs = Proxy_Store$ ConfStatementExpression (Expression "proxy_store" vs)
newtype Proxy_Store = Proxy_Store ConfStatement
instance ToConfStatement Proxy_Store where
    toConfStatement (Proxy_Store c) = c
instance HasContextHttp
 Proxy_Store where
instance HasContextServer
 Proxy_Store where
instance HasContextLocation
 Proxy_Store where


-- | Sets access permissions for newly created files and directories, e.g.: proxy_store_access user:rw group:rw all:r;
proxy_store_access :: [Text] -> ConfStatement
proxy_store_access vs = ConfStatementExpression (Expression "proxy_store_access" vs)

-- | Safe version of 'proxy_store_access'
proxy_store_access_s :: [Text] -> Proxy_Store_Access
proxy_store_access_s vs = Proxy_Store_Access$ ConfStatementExpression (Expression "proxy_store_access" vs)
newtype Proxy_Store_Access = Proxy_Store_Access ConfStatement
instance ToConfStatement Proxy_Store_Access where
    toConfStatement (Proxy_Store_Access c) = c
instance HasContextHttp
 Proxy_Store_Access where
instance HasContextServer
 Proxy_Store_Access where
instance HasContextLocation
 Proxy_Store_Access where


-- | Limits the size of data written to a temporary file at a time, when buffering of responses from the proxied server to temporary files is enabled. By default, size is limited by two buffers set by the and  directives. The maximum size of a temporary file is set by the directive.
proxy_temp_file_write_size :: [Text] -> ConfStatement
proxy_temp_file_write_size vs = ConfStatementExpression (Expression "proxy_temp_file_write_size" vs)

-- | Safe version of 'proxy_temp_file_write_size'
proxy_temp_file_write_size_s :: [Text] -> Proxy_Temp_File_Write_Size
proxy_temp_file_write_size_s vs = Proxy_Temp_File_Write_Size$ ConfStatementExpression (Expression "proxy_temp_file_write_size" vs)
newtype Proxy_Temp_File_Write_Size = Proxy_Temp_File_Write_Size ConfStatement
instance ToConfStatement Proxy_Temp_File_Write_Size where
    toConfStatement (Proxy_Temp_File_Write_Size c) = c
instance HasContextHttp
 Proxy_Temp_File_Write_Size where
instance HasContextServer
 Proxy_Temp_File_Write_Size where
instance HasContextLocation
 Proxy_Temp_File_Write_Size where


-- | Defines a directory for storing temporary files with data received from proxied servers. Up to three-level subdirectory hierarchy can be used underneath the specified directory. For example, in the following configuration proxy_temp_path /spool/nginx/proxy_temp 1 2; a temporary file might look like this: /spool/nginx/proxy_temp/7/45/00000123457
proxy_temp_path :: [Text] -> ConfStatement
proxy_temp_path vs = ConfStatementExpression (Expression "proxy_temp_path" vs)

-- | Safe version of 'proxy_temp_path'
proxy_temp_path_s :: [Text] -> Proxy_Temp_Path
proxy_temp_path_s vs = Proxy_Temp_Path$ ConfStatementExpression (Expression "proxy_temp_path" vs)
newtype Proxy_Temp_Path = Proxy_Temp_Path ConfStatement
instance ToConfStatement Proxy_Temp_Path where
    toConfStatement (Proxy_Temp_Path c) = c
instance HasContextHttp
 Proxy_Temp_Path where
instance HasContextServer
 Proxy_Temp_Path where
instance HasContextLocation
 Proxy_Temp_Path where

