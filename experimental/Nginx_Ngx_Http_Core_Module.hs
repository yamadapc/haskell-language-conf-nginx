-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Core_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Enables or disables the use of asynchronous file I/O (AIO) on FreeBSD and Linux: location /video/ { aio            on; output_buffers 1 64k; }
aio :: [Text] -> ConfStatement
aio vs = ConfStatementExpression (Expression "aio" vs)

-- | Safe version of 'aio'
aio_s :: [Text] -> Aio
aio_s vs = Aio$ ConfStatementExpression (Expression "aio" vs)
newtype Aio = Aio ConfStatement
instance ToConfStatement Aio where
    toConfStatement (Aio c) = c
instance HasContextHttp
 Aio where
instance HasContextServer
 Aio where
instance HasContextLocation
 Aio where


-- | If  is enabled, specifies whether it is used for writing files. Currently, this only works when using aio threads and is limited to writing temporary files with data received from proxied servers.
aio_write :: [Text] -> ConfStatement
aio_write vs = ConfStatementExpression (Expression "aio_write" vs)

-- | Safe version of 'aio_write'
aio_write_s :: [Text] -> Aio_Write
aio_write_s vs = Aio_Write$ ConfStatementExpression (Expression "aio_write" vs)
newtype Aio_Write = Aio_Write ConfStatement
instance ToConfStatement Aio_Write where
    toConfStatement (Aio_Write c) = c
instance HasContextHttp
 Aio_Write where
instance HasContextServer
 Aio_Write where
instance HasContextLocation
 Aio_Write where


-- | Defines a replacement for the specified location. For example, with the following configuration location /i/ { alias /data/w3/images/; } on request of “/i/top.gif”, the file /data/w3/images/top.gif will be sent.
alias :: [Text] -> ConfStatement
alias vs = ConfStatementExpression (Expression "alias" vs)

-- | Safe version of 'alias'
alias_s :: [Text] -> Alias
alias_s vs = Alias$ ConfStatementExpression (Expression "alias" vs)
newtype Alias = Alias ConfStatement
instance ToConfStatement Alias where
    toConfStatement (Alias c) = c
instance HasContextLocation
 Alias where


-- | Allows disabling chunked transfer encoding in HTTP/1.1. It may come in handy when using a software failing to support chunked encoding despite the standard’s requirement.
chunked_transfer_encoding :: [Text] -> ConfStatement
chunked_transfer_encoding vs = ConfStatementExpression (Expression "chunked_transfer_encoding" vs)

-- | Safe version of 'chunked_transfer_encoding'
chunked_transfer_encoding_s :: [Text] -> Chunked_Transfer_Encoding
chunked_transfer_encoding_s vs = Chunked_Transfer_Encoding$ ConfStatementExpression (Expression "chunked_transfer_encoding" vs)
newtype Chunked_Transfer_Encoding = Chunked_Transfer_Encoding ConfStatement
instance ToConfStatement Chunked_Transfer_Encoding where
    toConfStatement (Chunked_Transfer_Encoding c) = c
instance HasContextHttp
 Chunked_Transfer_Encoding where
instance HasContextServer
 Chunked_Transfer_Encoding where
instance HasContextLocation
 Chunked_Transfer_Encoding where


-- | Sets buffer size for reading client request body. In case the request body is larger than the buffer, the whole body or only its part is written to a temporary file. By default, buffer size is equal to two memory pages. This is 8K on x86, other 32-bit platforms, and x86-64. It is usually 16K on other 64-bit platforms.
client_body_buffer_size :: [Text] -> ConfStatement
client_body_buffer_size vs = ConfStatementExpression (Expression "client_body_buffer_size" vs)

-- | Safe version of 'client_body_buffer_size'
client_body_buffer_size_s :: [Text] -> Client_Body_Buffer_Size
client_body_buffer_size_s vs = Client_Body_Buffer_Size$ ConfStatementExpression (Expression "client_body_buffer_size" vs)
newtype Client_Body_Buffer_Size = Client_Body_Buffer_Size ConfStatement
instance ToConfStatement Client_Body_Buffer_Size where
    toConfStatement (Client_Body_Buffer_Size c) = c
instance HasContextHttp
 Client_Body_Buffer_Size where
instance HasContextServer
 Client_Body_Buffer_Size where
instance HasContextLocation
 Client_Body_Buffer_Size where


-- | Determines whether nginx should save the entire client request body into a file. This directive can be used during debugging, or when using the $request_body_file variable, or the $r->request_body_file method of the module ngx_http_perl_module.
client_body_in_file_only :: [Text] -> ConfStatement
client_body_in_file_only vs = ConfStatementExpression (Expression "client_body_in_file_only" vs)

-- | Safe version of 'client_body_in_file_only'
client_body_in_file_only_s :: [Text] -> Client_Body_In_File_Only
client_body_in_file_only_s vs = Client_Body_In_File_Only$ ConfStatementExpression (Expression "client_body_in_file_only" vs)
newtype Client_Body_In_File_Only = Client_Body_In_File_Only ConfStatement
instance ToConfStatement Client_Body_In_File_Only where
    toConfStatement (Client_Body_In_File_Only c) = c
instance HasContextHttp
 Client_Body_In_File_Only where
instance HasContextServer
 Client_Body_In_File_Only where
instance HasContextLocation
 Client_Body_In_File_Only where


-- | Determines whether nginx should save the entire client request body in a single buffer. The directive is recommended when using the $request_body variable, to save the number of copy operations involved.
client_body_in_single_buffer :: [Text] -> ConfStatement
client_body_in_single_buffer vs = ConfStatementExpression (Expression "client_body_in_single_buffer" vs)

-- | Safe version of 'client_body_in_single_buffer'
client_body_in_single_buffer_s :: [Text] -> Client_Body_In_Single_Buffer
client_body_in_single_buffer_s vs = Client_Body_In_Single_Buffer$ ConfStatementExpression (Expression "client_body_in_single_buffer" vs)
newtype Client_Body_In_Single_Buffer = Client_Body_In_Single_Buffer ConfStatement
instance ToConfStatement Client_Body_In_Single_Buffer where
    toConfStatement (Client_Body_In_Single_Buffer c) = c
instance HasContextHttp
 Client_Body_In_Single_Buffer where
instance HasContextServer
 Client_Body_In_Single_Buffer where
instance HasContextLocation
 Client_Body_In_Single_Buffer where


-- | Defines a directory for storing temporary files holding client request bodies. Up to three-level subdirectory hierarchy can be used under the specified directory. For example, in the following configuration client_body_temp_path /spool/nginx/client_temp 1 2; a path to a temporary file might look like this: /spool/nginx/client_temp/7/45/00000123457
client_body_temp_path :: [Text] -> ConfStatement
client_body_temp_path vs = ConfStatementExpression (Expression "client_body_temp_path" vs)

-- | Safe version of 'client_body_temp_path'
client_body_temp_path_s :: [Text] -> Client_Body_Temp_Path
client_body_temp_path_s vs = Client_Body_Temp_Path$ ConfStatementExpression (Expression "client_body_temp_path" vs)
newtype Client_Body_Temp_Path = Client_Body_Temp_Path ConfStatement
instance ToConfStatement Client_Body_Temp_Path where
    toConfStatement (Client_Body_Temp_Path c) = c
instance HasContextHttp
 Client_Body_Temp_Path where
instance HasContextServer
 Client_Body_Temp_Path where
instance HasContextLocation
 Client_Body_Temp_Path where


-- | Defines a timeout for reading client request body. The timeout is set only for a period between two successive read operations, not for the transmission of the whole request body. If a client does not transmit anything within this time, the error is returned to the client.
client_body_timeout :: [Text] -> ConfStatement
client_body_timeout vs = ConfStatementExpression (Expression "client_body_timeout" vs)

-- | Safe version of 'client_body_timeout'
client_body_timeout_s :: [Text] -> Client_Body_Timeout
client_body_timeout_s vs = Client_Body_Timeout$ ConfStatementExpression (Expression "client_body_timeout" vs)
newtype Client_Body_Timeout = Client_Body_Timeout ConfStatement
instance ToConfStatement Client_Body_Timeout where
    toConfStatement (Client_Body_Timeout c) = c
instance HasContextHttp
 Client_Body_Timeout where
instance HasContextServer
 Client_Body_Timeout where
instance HasContextLocation
 Client_Body_Timeout where


-- | Sets buffer size for reading client request header. For most requests, a buffer of 1K bytes is enough. However, if a request includes long cookies, or comes from a WAP client, it may not fit into 1K. If a request line or a request header field does not fit into this buffer then larger buffers, configured by the directive, are allocated.
client_header_buffer_size :: [Text] -> ConfStatement
client_header_buffer_size vs = ConfStatementExpression (Expression "client_header_buffer_size" vs)

-- | Safe version of 'client_header_buffer_size'
client_header_buffer_size_s :: [Text] -> Client_Header_Buffer_Size
client_header_buffer_size_s vs = Client_Header_Buffer_Size$ ConfStatementExpression (Expression "client_header_buffer_size" vs)
newtype Client_Header_Buffer_Size = Client_Header_Buffer_Size ConfStatement
instance ToConfStatement Client_Header_Buffer_Size where
    toConfStatement (Client_Header_Buffer_Size c) = c
instance HasContextHttp
 Client_Header_Buffer_Size where
instance HasContextServer
 Client_Header_Buffer_Size where


-- | Defines a timeout for reading client request header. If a client does not transmit the entire header within this time, the error is returned to the client.
client_header_timeout :: [Text] -> ConfStatement
client_header_timeout vs = ConfStatementExpression (Expression "client_header_timeout" vs)

-- | Safe version of 'client_header_timeout'
client_header_timeout_s :: [Text] -> Client_Header_Timeout
client_header_timeout_s vs = Client_Header_Timeout$ ConfStatementExpression (Expression "client_header_timeout" vs)
newtype Client_Header_Timeout = Client_Header_Timeout ConfStatement
instance ToConfStatement Client_Header_Timeout where
    toConfStatement (Client_Header_Timeout c) = c
instance HasContextHttp
 Client_Header_Timeout where
instance HasContextServer
 Client_Header_Timeout where


-- | Sets the maximum allowed size of the client request body, specified in the Content-Length request header field. If the size in a request exceeds the configured value, the error is returned to the client. Please be aware that browsers cannot correctly display this error. Setting size to 0 disables checking of client request body size.
client_max_body_size :: [Text] -> ConfStatement
client_max_body_size vs = ConfStatementExpression (Expression "client_max_body_size" vs)

-- | Safe version of 'client_max_body_size'
client_max_body_size_s :: [Text] -> Client_Max_Body_Size
client_max_body_size_s vs = Client_Max_Body_Size$ ConfStatementExpression (Expression "client_max_body_size" vs)
newtype Client_Max_Body_Size = Client_Max_Body_Size ConfStatement
instance ToConfStatement Client_Max_Body_Size where
    toConfStatement (Client_Max_Body_Size c) = c
instance HasContextHttp
 Client_Max_Body_Size where
instance HasContextServer
 Client_Max_Body_Size where
instance HasContextLocation
 Client_Max_Body_Size where


-- | Allows accurate tuning of per-connection memory allocations. This directive has minimal impact on performance and should not generally be used. By default, the size is equal to 256 bytes on 32-bit platforms and 512 bytes on 64-bit platforms. Prior to version 1.9.8, the default value was 256 on all platforms.
connection_pool_size :: [Text] -> ConfStatement
connection_pool_size vs = ConfStatementExpression (Expression "connection_pool_size" vs)

-- | Safe version of 'connection_pool_size'
connection_pool_size_s :: [Text] -> Connection_Pool_Size
connection_pool_size_s vs = Connection_Pool_Size$ ConfStatementExpression (Expression "connection_pool_size" vs)
newtype Connection_Pool_Size = Connection_Pool_Size ConfStatement
instance ToConfStatement Connection_Pool_Size where
    toConfStatement (Connection_Pool_Size c) = c
instance HasContextHttp
 Connection_Pool_Size where
instance HasContextServer
 Connection_Pool_Size where


-- | Defines the default MIME type of a response. Mapping of file name extensions to MIME types can be set with the  directive.
default_type :: [Text] -> ConfStatement
default_type vs = ConfStatementExpression (Expression "default_type" vs)

-- | Safe version of 'default_type'
default_type_s :: [Text] -> Default_Type
default_type_s vs = Default_Type$ ConfStatementExpression (Expression "default_type" vs)
newtype Default_Type = Default_Type ConfStatement
instance ToConfStatement Default_Type where
    toConfStatement (Default_Type c) = c
instance HasContextHttp
 Default_Type where
instance HasContextServer
 Default_Type where
instance HasContextLocation
 Default_Type where


-- | Enables the use of the O_DIRECT flag (FreeBSD, Linux), the F_NOCACHE flag (Mac OS X), or the directio function (Solaris), when reading files that are larger than or equal to the specified size. The directive automatically disables (0.7.15) the use of for a given request. It can be useful for serving large files: directio 4m; or when using  on Linux.
directio :: [Text] -> ConfStatement
directio vs = ConfStatementExpression (Expression "directio" vs)

-- | Safe version of 'directio'
directio_s :: [Text] -> Directio
directio_s vs = Directio$ ConfStatementExpression (Expression "directio" vs)
newtype Directio = Directio ConfStatement
instance ToConfStatement Directio where
    toConfStatement (Directio c) = c
instance HasContextHttp
 Directio where
instance HasContextServer
 Directio where
instance HasContextLocation
 Directio where


-- | Sets the alignment for . In most cases, a 512-byte alignment is enough. However, when using XFS under Linux, it needs to be increased to 4K.
directio_alignment :: [Text] -> ConfStatement
directio_alignment vs = ConfStatementExpression (Expression "directio_alignment" vs)

-- | Safe version of 'directio_alignment'
directio_alignment_s :: [Text] -> Directio_Alignment
directio_alignment_s vs = Directio_Alignment$ ConfStatementExpression (Expression "directio_alignment" vs)
newtype Directio_Alignment = Directio_Alignment ConfStatement
instance ToConfStatement Directio_Alignment where
    toConfStatement (Directio_Alignment c) = c
instance HasContextHttp
 Directio_Alignment where
instance HasContextServer
 Directio_Alignment where
instance HasContextLocation
 Directio_Alignment where


-- | Determines how symbolic links should be treated when opening files: off Symbolic links in the pathname are allowed and not checked. This is the default behavior. on If any component of the pathname is a symbolic link, access to a file is denied. if_not_owner Access to a file is denied if any component of the pathname is a symbolic link, and the link and object that the link points to have different owners. from=part When checking symbolic links (parameters on and if_not_owner), all components of the pathname are normally checked. Checking of symbolic links in the initial part of the pathname may be avoided by specifying additionally the from=part parameter. In this case, symbolic links are checked only from the pathname component that follows the specified initial part. If the value is not an initial part of the pathname checked, the whole pathname is checked as if this parameter was not specified at all. If the value matches the whole file name, symbolic links are not checked. The parameter value can contain variables.
disable_symlinks :: [Text] -> ConfStatement
disable_symlinks vs = ConfStatementExpression (Expression "disable_symlinks" vs)

-- | Safe version of 'disable_symlinks'
disable_symlinks_s :: [Text] -> Disable_Symlinks
disable_symlinks_s vs = Disable_Symlinks$ ConfStatementExpression (Expression "disable_symlinks" vs)
newtype Disable_Symlinks = Disable_Symlinks ConfStatement
instance ToConfStatement Disable_Symlinks where
    toConfStatement (Disable_Symlinks c) = c
instance HasContextHttp
 Disable_Symlinks where
instance HasContextServer
 Disable_Symlinks where
instance HasContextLocation
 Disable_Symlinks where


-- | Defines the URI that will be shown for the specified errors. error_page directives are inherited from the previous level only if there are no error_page directives defined on the current level. A uri value can contain variables.
error_page :: [Text] -> ConfStatement
error_page vs = ConfStatementExpression (Expression "error_page" vs)

-- | Safe version of 'error_page'
error_page_s :: [Text] -> Error_Page
error_page_s vs = Error_Page$ ConfStatementExpression (Expression "error_page" vs)
newtype Error_Page = Error_Page ConfStatement
instance ToConfStatement Error_Page where
    toConfStatement (Error_Page c) = c
instance HasContextHttp
 Error_Page where
instance HasContextServer
 Error_Page where
instance HasContextLocation
 Error_Page where


-- | Enables or disables automatic generation of the ETag response header field for static resources.
etag :: [Text] -> ConfStatement
etag vs = ConfStatementExpression (Expression "etag" vs)

-- | Safe version of 'etag'
etag_s :: [Text] -> Etag
etag_s vs = Etag$ ConfStatementExpression (Expression "etag" vs)
newtype Etag = Etag ConfStatement
instance ToConfStatement Etag where
    toConfStatement (Etag c) = c
instance HasContextHttp
 Etag where
instance HasContextServer
 Etag where
instance HasContextLocation
 Etag where

-- | Provides the configuration file context in which the HTTP server directives are specified.
http :: [Text] -> [ConfStatement] -> ConfStatement
http more ss = ConfStatementBlock (Block ("http":more) ss)
-- | Safe version of 'http'
http_s :: (HasContextHttp f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
http_s more ss = ConfStatementBlock (Block ("http":more) (Prelude.map toConfStatement ss))

-- | Specifies how to compare modification time of a response with the time in the If-Modified-Since request header field: off the If-Modified-Since request header field is ignored (0.7.34); exact exact match; before modification time of a response is less than or equal to the time in the If-Modified-Since request header field.
if_modified_since :: [Text] -> ConfStatement
if_modified_since vs = ConfStatementExpression (Expression "if_modified_since" vs)

-- | Safe version of 'if_modified_since'
if_modified_since_s :: [Text] -> If_Modified_Since
if_modified_since_s vs = If_Modified_Since$ ConfStatementExpression (Expression "if_modified_since" vs)
newtype If_Modified_Since = If_Modified_Since ConfStatement
instance ToConfStatement If_Modified_Since where
    toConfStatement (If_Modified_Since c) = c
instance HasContextHttp
 If_Modified_Since where
instance HasContextServer
 If_Modified_Since where
instance HasContextLocation
 If_Modified_Since where


-- | Controls whether header fields with invalid names should be ignored. Valid names are composed of English letters, digits, hyphens, and possibly underscores (as controlled by the directive).
ignore_invalid_headers :: [Text] -> ConfStatement
ignore_invalid_headers vs = ConfStatementExpression (Expression "ignore_invalid_headers" vs)

-- | Safe version of 'ignore_invalid_headers'
ignore_invalid_headers_s :: [Text] -> Ignore_Invalid_Headers
ignore_invalid_headers_s vs = Ignore_Invalid_Headers$ ConfStatementExpression (Expression "ignore_invalid_headers" vs)
newtype Ignore_Invalid_Headers = Ignore_Invalid_Headers ConfStatement
instance ToConfStatement Ignore_Invalid_Headers where
    toConfStatement (Ignore_Invalid_Headers c) = c
instance HasContextHttp
 Ignore_Invalid_Headers where
instance HasContextServer
 Ignore_Invalid_Headers where


-- | Specifies that a given location can only be used for internal requests. For external requests, the client error is returned. Internal requests are the following: requests redirected by the , , , and directives; requests redirected by the X-Accel-Redirect response header field from an upstream server; subrequests formed by the “include virtual” command of the ngx_http_ssi_module module and by the ngx_http_addition_module module directives; requests changed by the directive.
internal :: [Text] -> ConfStatement
internal vs = ConfStatementExpression (Expression "internal" vs)

-- | Safe version of 'internal'
internal_s :: [Text] -> Internal
internal_s vs = Internal$ ConfStatementExpression (Expression "internal" vs)
newtype Internal = Internal ConfStatement
instance ToConfStatement Internal where
    toConfStatement (Internal c) = c
instance HasContextLocation
 Internal where


-- | Disables keep-alive connections with misbehaving browsers. The browser parameters specify which browsers will be affected. The value msie6 disables keep-alive connections with old versions of MSIE, once a POST request is received. The value safari disables keep-alive connections with Safari and Safari-like browsers on Mac OS X and Mac OS X-like operating systems. The value none enables keep-alive connections with all browsers. Prior to version 1.1.18, the value safari matched all Safari and Safari-like browsers on all operating systems, and keep-alive connections with them were disabled by default.
keepalive_disable :: [Text] -> ConfStatement
keepalive_disable vs = ConfStatementExpression (Expression "keepalive_disable" vs)

-- | Safe version of 'keepalive_disable'
keepalive_disable_s :: [Text] -> Keepalive_Disable
keepalive_disable_s vs = Keepalive_Disable$ ConfStatementExpression (Expression "keepalive_disable" vs)
newtype Keepalive_Disable = Keepalive_Disable ConfStatement
instance ToConfStatement Keepalive_Disable where
    toConfStatement (Keepalive_Disable c) = c
instance HasContextHttp
 Keepalive_Disable where
instance HasContextServer
 Keepalive_Disable where
instance HasContextLocation
 Keepalive_Disable where


-- | Sets the maximum number of requests that can be served through one keep-alive connection. After the maximum number of requests are made, the connection is closed.
keepalive_requests :: [Text] -> ConfStatement
keepalive_requests vs = ConfStatementExpression (Expression "keepalive_requests" vs)

-- | Safe version of 'keepalive_requests'
keepalive_requests_s :: [Text] -> Keepalive_Requests
keepalive_requests_s vs = Keepalive_Requests$ ConfStatementExpression (Expression "keepalive_requests" vs)
newtype Keepalive_Requests = Keepalive_Requests ConfStatement
instance ToConfStatement Keepalive_Requests where
    toConfStatement (Keepalive_Requests c) = c
instance HasContextHttp
 Keepalive_Requests where
instance HasContextServer
 Keepalive_Requests where
instance HasContextLocation
 Keepalive_Requests where


-- | The first parameter sets a timeout during which a keep-alive client connection will stay open on the server side. The zero value disables keep-alive client connections. The optional second parameter sets a value in the Keep-Alive: timeout=time response header field. Two parameters may differ.
keepalive_timeout :: [Text] -> ConfStatement
keepalive_timeout vs = ConfStatementExpression (Expression "keepalive_timeout" vs)

-- | Safe version of 'keepalive_timeout'
keepalive_timeout_s :: [Text] -> Keepalive_Timeout
keepalive_timeout_s vs = Keepalive_Timeout$ ConfStatementExpression (Expression "keepalive_timeout" vs)
newtype Keepalive_Timeout = Keepalive_Timeout ConfStatement
instance ToConfStatement Keepalive_Timeout where
    toConfStatement (Keepalive_Timeout c) = c
instance HasContextHttp
 Keepalive_Timeout where
instance HasContextServer
 Keepalive_Timeout where
instance HasContextLocation
 Keepalive_Timeout where


-- | Sets the maximum number and size of buffers used for reading large client request header. A request line cannot exceed the size of one buffer, or the error is returned to the client. A request header field cannot exceed the size of one buffer as well, or the error is returned to the client. Buffers are allocated only on demand. By default, the buffer size is equal to 8K bytes. If after the end of request processing a connection is transitioned into the keep-alive state, these buffers are released.
large_client_header_buffers :: [Text] -> ConfStatement
large_client_header_buffers vs = ConfStatementExpression (Expression "large_client_header_buffers" vs)

-- | Safe version of 'large_client_header_buffers'
large_client_header_buffers_s :: [Text] -> Large_Client_Header_Buffers
large_client_header_buffers_s vs = Large_Client_Header_Buffers$ ConfStatementExpression (Expression "large_client_header_buffers" vs)
newtype Large_Client_Header_Buffers = Large_Client_Header_Buffers ConfStatement
instance ToConfStatement Large_Client_Header_Buffers where
    toConfStatement (Large_Client_Header_Buffers c) = c
instance HasContextHttp
 Large_Client_Header_Buffers where
instance HasContextServer
 Large_Client_Header_Buffers where

-- | Limits allowed HTTP methods inside a location. The method parameter can be one of the following: GET, HEAD, POST, PUT, DELETE, MKCOL, COPY, MOVE, OPTIONS, PROPFIND, PROPPATCH, LOCK, UNLOCK, or PATCH. Allowing the GET method makes the HEAD method also allowed. Access to other methods can be limited using the ngx_http_access_module and ngx_http_auth_basic_module modules directives: limit_except GET { allow 192.168.1.0/32; deny  all; } Please note that this will limit access to all methods except GET and HEAD.
limit_except :: [Text] -> [ConfStatement] -> ConfStatement
limit_except more ss = ConfStatementBlock (Block ("limit_except":more) ss)
-- | Safe version of 'limit_except'
limit_except_s :: (HasContextLimit_Except f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
limit_except_s more ss = ConfStatementBlock (Block ("limit_except":more) (Prelude.map toConfStatement ss))

-- | Limits the rate of response transmission to a client. The rate is specified in bytes per second. The zero value disables rate limiting. The limit is set per a request, and so if a client simultaneously opens two connections, the overall rate will be twice as much as the specified limit.
limit_rate :: [Text] -> ConfStatement
limit_rate vs = ConfStatementExpression (Expression "limit_rate" vs)

-- | Safe version of 'limit_rate'
limit_rate_s :: [Text] -> Limit_Rate
limit_rate_s vs = Limit_Rate$ ConfStatementExpression (Expression "limit_rate" vs)
newtype Limit_Rate = Limit_Rate ConfStatement
instance ToConfStatement Limit_Rate where
    toConfStatement (Limit_Rate c) = c
instance HasContextHttp
 Limit_Rate where
instance HasContextServer
 Limit_Rate where
instance HasContextLocation
 Limit_Rate where


-- | Sets the initial amount after which the further transmission of a response to a client will be rate limited.
limit_rate_after :: [Text] -> ConfStatement
limit_rate_after vs = ConfStatementExpression (Expression "limit_rate_after" vs)

-- | Safe version of 'limit_rate_after'
limit_rate_after_s :: [Text] -> Limit_Rate_After
limit_rate_after_s vs = Limit_Rate_After$ ConfStatementExpression (Expression "limit_rate_after" vs)
newtype Limit_Rate_After = Limit_Rate_After ConfStatement
instance ToConfStatement Limit_Rate_After where
    toConfStatement (Limit_Rate_After c) = c
instance HasContextHttp
 Limit_Rate_After where
instance HasContextServer
 Limit_Rate_After where
instance HasContextLocation
 Limit_Rate_After where


-- | Controls how nginx closes client connections.
lingering_close :: [Text] -> ConfStatement
lingering_close vs = ConfStatementExpression (Expression "lingering_close" vs)

-- | Safe version of 'lingering_close'
lingering_close_s :: [Text] -> Lingering_Close
lingering_close_s vs = Lingering_Close$ ConfStatementExpression (Expression "lingering_close" vs)
newtype Lingering_Close = Lingering_Close ConfStatement
instance ToConfStatement Lingering_Close where
    toConfStatement (Lingering_Close c) = c
instance HasContextHttp
 Lingering_Close where
instance HasContextServer
 Lingering_Close where
instance HasContextLocation
 Lingering_Close where


-- | When  is in effect, this directive specifies the maximum time during which nginx will process (read and ignore) additional data coming from a client. After that, the connection will be closed, even if there will be more data.
lingering_time :: [Text] -> ConfStatement
lingering_time vs = ConfStatementExpression (Expression "lingering_time" vs)

-- | Safe version of 'lingering_time'
lingering_time_s :: [Text] -> Lingering_Time
lingering_time_s vs = Lingering_Time$ ConfStatementExpression (Expression "lingering_time" vs)
newtype Lingering_Time = Lingering_Time ConfStatement
instance ToConfStatement Lingering_Time where
    toConfStatement (Lingering_Time c) = c
instance HasContextHttp
 Lingering_Time where
instance HasContextServer
 Lingering_Time where
instance HasContextLocation
 Lingering_Time where


-- | When  is in effect, this directive specifies the maximum waiting time for more client data to arrive. If data are not received during this time, the connection is closed. Otherwise, the data are read and ignored, and nginx starts waiting for more data again. The “wait-read-ignore” cycle is repeated, but no longer than specified by the directive.
lingering_timeout :: [Text] -> ConfStatement
lingering_timeout vs = ConfStatementExpression (Expression "lingering_timeout" vs)

-- | Safe version of 'lingering_timeout'
lingering_timeout_s :: [Text] -> Lingering_Timeout
lingering_timeout_s vs = Lingering_Timeout$ ConfStatementExpression (Expression "lingering_timeout" vs)
newtype Lingering_Timeout = Lingering_Timeout ConfStatement
instance ToConfStatement Lingering_Timeout where
    toConfStatement (Lingering_Timeout c) = c
instance HasContextHttp
 Lingering_Timeout where
instance HasContextServer
 Lingering_Timeout where
instance HasContextLocation
 Lingering_Timeout where


-- | Sets the address and port for IP, or the path for a UNIX-domain socket on which the server will accept requests. Both address and port, or only address or only port can be specified. An address may also be a hostname, for example: listen 127.0.0.1:8000; listen 127.0.0.1; listen 8000; listen *:8000; listen localhost:8000; IPv6 addresses (0.7.36) are specified in square brackets: listen [::]:8000; listen [::1]; UNIX-domain sockets (0.8.21) are specified with the “unix:” prefix: listen unix:/var/run/nginx.sock;
listen :: [Text] -> ConfStatement
listen vs = ConfStatementExpression (Expression "listen" vs)

-- | Safe version of 'listen'
listen_s :: [Text] -> Listen
listen_s vs = Listen$ ConfStatementExpression (Expression "listen" vs)
newtype Listen = Listen ConfStatement
instance ToConfStatement Listen where
    toConfStatement (Listen c) = c
instance HasContextServer
 Listen where

-- | Sets configuration depending on a request URI.
location :: [Text] -> [ConfStatement] -> ConfStatement
location more ss = ConfStatementBlock (Block ("location":more) ss)
-- | Safe version of 'location'
location_s :: (HasContextLocation f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
location_s more ss = ConfStatementBlock (Block ("location":more) (Prelude.map toConfStatement ss))

-- | Enables or disables logging of errors about not found files into .
log_not_found :: [Text] -> ConfStatement
log_not_found vs = ConfStatementExpression (Expression "log_not_found" vs)

-- | Safe version of 'log_not_found'
log_not_found_s :: [Text] -> Log_Not_Found
log_not_found_s vs = Log_Not_Found$ ConfStatementExpression (Expression "log_not_found" vs)
newtype Log_Not_Found = Log_Not_Found ConfStatement
instance ToConfStatement Log_Not_Found where
    toConfStatement (Log_Not_Found c) = c
instance HasContextHttp
 Log_Not_Found where
instance HasContextServer
 Log_Not_Found where
instance HasContextLocation
 Log_Not_Found where


-- | Enables or disables logging of subrequests into .
log_subrequest :: [Text] -> ConfStatement
log_subrequest vs = ConfStatementExpression (Expression "log_subrequest" vs)

-- | Safe version of 'log_subrequest'
log_subrequest_s :: [Text] -> Log_Subrequest
log_subrequest_s vs = Log_Subrequest$ ConfStatementExpression (Expression "log_subrequest" vs)
newtype Log_Subrequest = Log_Subrequest ConfStatement
instance ToConfStatement Log_Subrequest where
    toConfStatement (Log_Subrequest c) = c
instance HasContextHttp
 Log_Subrequest where
instance HasContextServer
 Log_Subrequest where
instance HasContextLocation
 Log_Subrequest where


-- | Limits the maximum allowed number of ranges in byte-range requests. Requests that exceed the limit are processed as if there were no byte ranges specified. By default, the number of ranges is not limited. The zero value disables the byte-range support completely.
max_ranges :: [Text] -> ConfStatement
max_ranges vs = ConfStatementExpression (Expression "max_ranges" vs)

-- | Safe version of 'max_ranges'
max_ranges_s :: [Text] -> Max_Ranges
max_ranges_s vs = Max_Ranges$ ConfStatementExpression (Expression "max_ranges" vs)
newtype Max_Ranges = Max_Ranges ConfStatement
instance ToConfStatement Max_Ranges where
    toConfStatement (Max_Ranges c) = c
instance HasContextHttp
 Max_Ranges where
instance HasContextServer
 Max_Ranges where
instance HasContextLocation
 Max_Ranges where


-- | Enables or disables compression of two or more adjacent slashes in a URI into a single slash.
merge_slashes :: [Text] -> ConfStatement
merge_slashes vs = ConfStatementExpression (Expression "merge_slashes" vs)

-- | Safe version of 'merge_slashes'
merge_slashes_s :: [Text] -> Merge_Slashes
merge_slashes_s vs = Merge_Slashes$ ConfStatementExpression (Expression "merge_slashes" vs)
newtype Merge_Slashes = Merge_Slashes ConfStatement
instance ToConfStatement Merge_Slashes where
    toConfStatement (Merge_Slashes c) = c
instance HasContextHttp
 Merge_Slashes where
instance HasContextServer
 Merge_Slashes where


-- | Enables or disables adding comments to responses for MSIE clients with status greater than 400 to increase the response size to 512 bytes.
msie_padding :: [Text] -> ConfStatement
msie_padding vs = ConfStatementExpression (Expression "msie_padding" vs)

-- | Safe version of 'msie_padding'
msie_padding_s :: [Text] -> Msie_Padding
msie_padding_s vs = Msie_Padding$ ConfStatementExpression (Expression "msie_padding" vs)
newtype Msie_Padding = Msie_Padding ConfStatement
instance ToConfStatement Msie_Padding where
    toConfStatement (Msie_Padding c) = c
instance HasContextHttp
 Msie_Padding where
instance HasContextServer
 Msie_Padding where
instance HasContextLocation
 Msie_Padding where


-- | Enables or disables issuing refreshes instead of redirects for MSIE clients.
msie_refresh :: [Text] -> ConfStatement
msie_refresh vs = ConfStatementExpression (Expression "msie_refresh" vs)

-- | Safe version of 'msie_refresh'
msie_refresh_s :: [Text] -> Msie_Refresh
msie_refresh_s vs = Msie_Refresh$ ConfStatementExpression (Expression "msie_refresh" vs)
newtype Msie_Refresh = Msie_Refresh ConfStatement
instance ToConfStatement Msie_Refresh where
    toConfStatement (Msie_Refresh c) = c
instance HasContextHttp
 Msie_Refresh where
instance HasContextServer
 Msie_Refresh where
instance HasContextLocation
 Msie_Refresh where


-- | Configures a cache that can store: open file descriptors, their sizes and modification times; information on existence of directories; file lookup errors, such as “file not found”, “no read permission”, and so on. Caching of errors should be enabled separately by the directive.
open_file_cache :: [Text] -> ConfStatement
open_file_cache vs = ConfStatementExpression (Expression "open_file_cache" vs)

-- | Safe version of 'open_file_cache'
open_file_cache_s :: [Text] -> Open_File_Cache
open_file_cache_s vs = Open_File_Cache$ ConfStatementExpression (Expression "open_file_cache" vs)
newtype Open_File_Cache = Open_File_Cache ConfStatement
instance ToConfStatement Open_File_Cache where
    toConfStatement (Open_File_Cache c) = c
instance HasContextHttp
 Open_File_Cache where
instance HasContextServer
 Open_File_Cache where
instance HasContextLocation
 Open_File_Cache where


-- | Enables or disables caching of file lookup errors by .
open_file_cache_errors :: [Text] -> ConfStatement
open_file_cache_errors vs = ConfStatementExpression (Expression "open_file_cache_errors" vs)

-- | Safe version of 'open_file_cache_errors'
open_file_cache_errors_s :: [Text] -> Open_File_Cache_Errors
open_file_cache_errors_s vs = Open_File_Cache_Errors$ ConfStatementExpression (Expression "open_file_cache_errors" vs)
newtype Open_File_Cache_Errors = Open_File_Cache_Errors ConfStatement
instance ToConfStatement Open_File_Cache_Errors where
    toConfStatement (Open_File_Cache_Errors c) = c
instance HasContextHttp
 Open_File_Cache_Errors where
instance HasContextServer
 Open_File_Cache_Errors where
instance HasContextLocation
 Open_File_Cache_Errors where


-- | Sets the minimum number of file accesses during the period configured by the inactive parameter of the  directive, required for a file descriptor to remain open in the cache.
open_file_cache_min_uses :: [Text] -> ConfStatement
open_file_cache_min_uses vs = ConfStatementExpression (Expression "open_file_cache_min_uses" vs)

-- | Safe version of 'open_file_cache_min_uses'
open_file_cache_min_uses_s :: [Text] -> Open_File_Cache_Min_Uses
open_file_cache_min_uses_s vs = Open_File_Cache_Min_Uses$ ConfStatementExpression (Expression "open_file_cache_min_uses" vs)
newtype Open_File_Cache_Min_Uses = Open_File_Cache_Min_Uses ConfStatement
instance ToConfStatement Open_File_Cache_Min_Uses where
    toConfStatement (Open_File_Cache_Min_Uses c) = c
instance HasContextHttp
 Open_File_Cache_Min_Uses where
instance HasContextServer
 Open_File_Cache_Min_Uses where
instance HasContextLocation
 Open_File_Cache_Min_Uses where


-- | Sets a time after which elements should be validated.
open_file_cache_valid :: [Text] -> ConfStatement
open_file_cache_valid vs = ConfStatementExpression (Expression "open_file_cache_valid" vs)

-- | Safe version of 'open_file_cache_valid'
open_file_cache_valid_s :: [Text] -> Open_File_Cache_Valid
open_file_cache_valid_s vs = Open_File_Cache_Valid$ ConfStatementExpression (Expression "open_file_cache_valid" vs)
newtype Open_File_Cache_Valid = Open_File_Cache_Valid ConfStatement
instance ToConfStatement Open_File_Cache_Valid where
    toConfStatement (Open_File_Cache_Valid c) = c
instance HasContextHttp
 Open_File_Cache_Valid where
instance HasContextServer
 Open_File_Cache_Valid where
instance HasContextLocation
 Open_File_Cache_Valid where


-- | Sets the number and size of the buffers used for reading a response from a disk. Prior to version 1.9.5, the default value was 1 32k.
output_buffers :: [Text] -> ConfStatement
output_buffers vs = ConfStatementExpression (Expression "output_buffers" vs)

-- | Safe version of 'output_buffers'
output_buffers_s :: [Text] -> Output_Buffers
output_buffers_s vs = Output_Buffers$ ConfStatementExpression (Expression "output_buffers" vs)
newtype Output_Buffers = Output_Buffers ConfStatement
instance ToConfStatement Output_Buffers where
    toConfStatement (Output_Buffers c) = c
instance HasContextHttp
 Output_Buffers where
instance HasContextServer
 Output_Buffers where
instance HasContextLocation
 Output_Buffers where


-- | Enables or disables specifying the port in redirects issued by nginx.
port_in_redirect :: [Text] -> ConfStatement
port_in_redirect vs = ConfStatementExpression (Expression "port_in_redirect" vs)

-- | Safe version of 'port_in_redirect'
port_in_redirect_s :: [Text] -> Port_In_Redirect
port_in_redirect_s vs = Port_In_Redirect$ ConfStatementExpression (Expression "port_in_redirect" vs)
newtype Port_In_Redirect = Port_In_Redirect ConfStatement
instance ToConfStatement Port_In_Redirect where
    toConfStatement (Port_In_Redirect c) = c
instance HasContextHttp
 Port_In_Redirect where
instance HasContextServer
 Port_In_Redirect where
instance HasContextLocation
 Port_In_Redirect where


-- | If possible, the transmission of client data will be postponed until nginx has at least size bytes of data to send. The zero value disables postponing data transmission.
postpone_output :: [Text] -> ConfStatement
postpone_output vs = ConfStatementExpression (Expression "postpone_output" vs)

-- | Safe version of 'postpone_output'
postpone_output_s :: [Text] -> Postpone_Output
postpone_output_s vs = Postpone_Output$ ConfStatementExpression (Expression "postpone_output" vs)
newtype Postpone_Output = Postpone_Output ConfStatement
instance ToConfStatement Postpone_Output where
    toConfStatement (Postpone_Output c) = c
instance HasContextHttp
 Postpone_Output where
instance HasContextServer
 Postpone_Output where
instance HasContextLocation
 Postpone_Output where


-- | Sets the amount of pre-reading for the kernel when working with file.
read_ahead :: [Text] -> ConfStatement
read_ahead vs = ConfStatementExpression (Expression "read_ahead" vs)

-- | Safe version of 'read_ahead'
read_ahead_s :: [Text] -> Read_Ahead
read_ahead_s vs = Read_Ahead$ ConfStatementExpression (Expression "read_ahead" vs)
newtype Read_Ahead = Read_Ahead ConfStatement
instance ToConfStatement Read_Ahead where
    toConfStatement (Read_Ahead c) = c
instance HasContextHttp
 Read_Ahead where
instance HasContextServer
 Read_Ahead where
instance HasContextLocation
 Read_Ahead where


-- | Enables or disables doing several redirects using the directive. The number of such redirects is limited.
recursive_error_pages :: [Text] -> ConfStatement
recursive_error_pages vs = ConfStatementExpression (Expression "recursive_error_pages" vs)

-- | Safe version of 'recursive_error_pages'
recursive_error_pages_s :: [Text] -> Recursive_Error_Pages
recursive_error_pages_s vs = Recursive_Error_Pages$ ConfStatementExpression (Expression "recursive_error_pages" vs)
newtype Recursive_Error_Pages = Recursive_Error_Pages ConfStatement
instance ToConfStatement Recursive_Error_Pages where
    toConfStatement (Recursive_Error_Pages c) = c
instance HasContextHttp
 Recursive_Error_Pages where
instance HasContextServer
 Recursive_Error_Pages where
instance HasContextLocation
 Recursive_Error_Pages where


-- | Allows accurate tuning of per-request memory allocations. This directive has minimal impact on performance and should not generally be used.
request_pool_size :: [Text] -> ConfStatement
request_pool_size vs = ConfStatementExpression (Expression "request_pool_size" vs)

-- | Safe version of 'request_pool_size'
request_pool_size_s :: [Text] -> Request_Pool_Size
request_pool_size_s vs = Request_Pool_Size$ ConfStatementExpression (Expression "request_pool_size" vs)
newtype Request_Pool_Size = Request_Pool_Size ConfStatement
instance ToConfStatement Request_Pool_Size where
    toConfStatement (Request_Pool_Size c) = c
instance HasContextHttp
 Request_Pool_Size where
instance HasContextServer
 Request_Pool_Size where


-- | Enables or disables resetting timed out connections. The reset is performed as follows. Before closing a socket, the SO_LINGER option is set on it with a timeout value of 0. When the socket is closed, TCP RST is sent to the client, and all memory occupied by this socket is released. This helps avoid keeping an already closed socket with filled buffers in a FIN_WAIT1 state for a long time.
reset_timedout_connection :: [Text] -> ConfStatement
reset_timedout_connection vs = ConfStatementExpression (Expression "reset_timedout_connection" vs)

-- | Safe version of 'reset_timedout_connection'
reset_timedout_connection_s :: [Text] -> Reset_Timedout_Connection
reset_timedout_connection_s vs = Reset_Timedout_Connection$ ConfStatementExpression (Expression "reset_timedout_connection" vs)
newtype Reset_Timedout_Connection = Reset_Timedout_Connection ConfStatement
instance ToConfStatement Reset_Timedout_Connection where
    toConfStatement (Reset_Timedout_Connection c) = c
instance HasContextHttp
 Reset_Timedout_Connection where
instance HasContextServer
 Reset_Timedout_Connection where
instance HasContextLocation
 Reset_Timedout_Connection where


-- | Configures name servers used to resolve names of upstream servers into addresses, for example: resolver 127.0.0.1 [::1]:5353; An address can be specified as a domain name or IP address, and an optional port (1.3.1, 1.2.2). If port is not specified, the port 53 is used. Name servers are queried in a round-robin fashion. Before version 1.1.7, only a single name server could be configured. Specifying name servers using IPv6 addresses is supported starting from versions 1.3.1 and 1.2.2. By default, nginx will look up both IPv4 and IPv6 addresses while resolving. If looking up of IPv6 addresses is not desired, the ipv6=off parameter can be specified. Resolving of names into IPv6 addresses is supported starting from version 1.5.8. By default, nginx caches answers using the TTL value of a response. An optional valid parameter allows overriding it: resolver 127.0.0.1 [::1]:5353 valid=30s; Before version 1.1.9, tuning of caching time was not possible, and nginx always cached answers for the duration of 5 minutes.
resolver :: [Text] -> ConfStatement
resolver vs = ConfStatementExpression (Expression "resolver" vs)

-- | Safe version of 'resolver'
resolver_s :: [Text] -> Resolver
resolver_s vs = Resolver$ ConfStatementExpression (Expression "resolver" vs)
newtype Resolver = Resolver ConfStatement
instance ToConfStatement Resolver where
    toConfStatement (Resolver c) = c
instance HasContextHttp
 Resolver where
instance HasContextServer
 Resolver where
instance HasContextLocation
 Resolver where


-- | Sets a timeout for name resolution, for example: resolver_timeout 5s;
resolver_timeout :: [Text] -> ConfStatement
resolver_timeout vs = ConfStatementExpression (Expression "resolver_timeout" vs)

-- | Safe version of 'resolver_timeout'
resolver_timeout_s :: [Text] -> Resolver_Timeout
resolver_timeout_s vs = Resolver_Timeout$ ConfStatementExpression (Expression "resolver_timeout" vs)
newtype Resolver_Timeout = Resolver_Timeout ConfStatement
instance ToConfStatement Resolver_Timeout where
    toConfStatement (Resolver_Timeout c) = c
instance HasContextHttp
 Resolver_Timeout where
instance HasContextServer
 Resolver_Timeout where
instance HasContextLocation
 Resolver_Timeout where


-- | Sets the root directory for requests. For example, with the following configuration location /i/ { root /data/w3; } The /data/w3/i/top.gif file will be sent in response to the “/i/top.gif” request.
root :: [Text] -> ConfStatement
root vs = ConfStatementExpression (Expression "root" vs)

-- | Safe version of 'root'
root_s :: [Text] -> Root
root_s vs = Root$ ConfStatementExpression (Expression "root" vs)
newtype Root = Root ConfStatement
instance ToConfStatement Root where
    toConfStatement (Root c) = c
instance HasContextHttp
 Root where
instance HasContextServer
 Root where
instance HasContextLocation
 Root where


-- | Allows access if all (all) or at least one (any) of the ngx_http_access_module, ngx_http_auth_basic_module or ngx_http_auth_request_module modules allow access.
satisfy :: [Text] -> ConfStatement
satisfy vs = ConfStatementExpression (Expression "satisfy" vs)

-- | Safe version of 'satisfy'
satisfy_s :: [Text] -> Satisfy
satisfy_s vs = Satisfy$ ConfStatementExpression (Expression "satisfy" vs)
newtype Satisfy = Satisfy ConfStatement
instance ToConfStatement Satisfy where
    toConfStatement (Satisfy c) = c
instance HasContextHttp
 Satisfy where
instance HasContextServer
 Satisfy where
instance HasContextLocation
 Satisfy where


-- | If the directive is set to a non-zero value, nginx will try to minimize the number of send operations on client sockets by using either NOTE_LOWAT flag of the method or the SO_SNDLOWAT socket option. In both cases the specified size is used.
send_lowat :: [Text] -> ConfStatement
send_lowat vs = ConfStatementExpression (Expression "send_lowat" vs)

-- | Safe version of 'send_lowat'
send_lowat_s :: [Text] -> Send_Lowat
send_lowat_s vs = Send_Lowat$ ConfStatementExpression (Expression "send_lowat" vs)
newtype Send_Lowat = Send_Lowat ConfStatement
instance ToConfStatement Send_Lowat where
    toConfStatement (Send_Lowat c) = c
instance HasContextHttp
 Send_Lowat where
instance HasContextServer
 Send_Lowat where
instance HasContextLocation
 Send_Lowat where


-- | Sets a timeout for transmitting a response to the client. The timeout is set only between two successive write operations, not for the transmission of the whole response. If the client does not receive anything within this time, the connection is closed.
send_timeout :: [Text] -> ConfStatement
send_timeout vs = ConfStatementExpression (Expression "send_timeout" vs)

-- | Safe version of 'send_timeout'
send_timeout_s :: [Text] -> Send_Timeout
send_timeout_s vs = Send_Timeout$ ConfStatementExpression (Expression "send_timeout" vs)
newtype Send_Timeout = Send_Timeout ConfStatement
instance ToConfStatement Send_Timeout where
    toConfStatement (Send_Timeout c) = c
instance HasContextHttp
 Send_Timeout where
instance HasContextServer
 Send_Timeout where
instance HasContextLocation
 Send_Timeout where


-- | Enables or disables the use of sendfile.
sendfile :: [Text] -> ConfStatement
sendfile vs = ConfStatementExpression (Expression "sendfile" vs)

-- | Safe version of 'sendfile'
sendfile_s :: [Text] -> Sendfile
sendfile_s vs = Sendfile$ ConfStatementExpression (Expression "sendfile" vs)
newtype Sendfile = Sendfile ConfStatement
instance ToConfStatement Sendfile where
    toConfStatement (Sendfile c) = c
instance HasContextHttp
 Sendfile where
instance HasContextServer
 Sendfile where
instance HasContextLocation
 Sendfile where


-- | When set to a non-zero value, limits the amount of data that can be transferred in a single sendfile call. Without the limit, one fast connection may seize the worker process entirely.
sendfile_max_chunk :: [Text] -> ConfStatement
sendfile_max_chunk vs = ConfStatementExpression (Expression "sendfile_max_chunk" vs)

-- | Safe version of 'sendfile_max_chunk'
sendfile_max_chunk_s :: [Text] -> Sendfile_Max_Chunk
sendfile_max_chunk_s vs = Sendfile_Max_Chunk$ ConfStatementExpression (Expression "sendfile_max_chunk" vs)
newtype Sendfile_Max_Chunk = Sendfile_Max_Chunk ConfStatement
instance ToConfStatement Sendfile_Max_Chunk where
    toConfStatement (Sendfile_Max_Chunk c) = c
instance HasContextHttp
 Sendfile_Max_Chunk where
instance HasContextServer
 Sendfile_Max_Chunk where
instance HasContextLocation
 Sendfile_Max_Chunk where

-- | Sets configuration for a virtual server. There is no clear separation between IP-based (based on the IP address) and name-based (based on the Host request header field) virtual servers. Instead, the  directives describe all addresses and ports that should accept connections for the server, and the directive lists all server names. Example configurations are provided in the “” document.
server :: [Text] -> [ConfStatement] -> ConfStatement
server more ss = ConfStatementBlock (Block ("server":more) ss)
-- | Safe version of 'server'
server_s :: (HasContextServer f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
server_s more ss = ConfStatementBlock (Block ("server":more) (Prelude.map toConfStatement ss))

-- | Sets names of a virtual server, for example: server { server_name example.com www.example.com; }
server_name :: [Text] -> ConfStatement
server_name vs = ConfStatementExpression (Expression "server_name" vs)

-- | Safe version of 'server_name'
server_name_s :: [Text] -> Server_Name
server_name_s vs = Server_Name$ ConfStatementExpression (Expression "server_name" vs)
newtype Server_Name = Server_Name ConfStatement
instance ToConfStatement Server_Name where
    toConfStatement (Server_Name c) = c
instance HasContextServer
 Server_Name where


-- | Enables or disables the use of the primary server name, specified by the directive, in redirects issued by nginx. When the use of the primary server name is disabled, the name from the Host request header field is used. If this field is not present, the IP address of the server is used.
server_name_in_redirect :: [Text] -> ConfStatement
server_name_in_redirect vs = ConfStatementExpression (Expression "server_name_in_redirect" vs)

-- | Safe version of 'server_name_in_redirect'
server_name_in_redirect_s :: [Text] -> Server_Name_In_Redirect
server_name_in_redirect_s vs = Server_Name_In_Redirect$ ConfStatementExpression (Expression "server_name_in_redirect" vs)
newtype Server_Name_In_Redirect = Server_Name_In_Redirect ConfStatement
instance ToConfStatement Server_Name_In_Redirect where
    toConfStatement (Server_Name_In_Redirect c) = c
instance HasContextHttp
 Server_Name_In_Redirect where
instance HasContextServer
 Server_Name_In_Redirect where
instance HasContextLocation
 Server_Name_In_Redirect where


-- | Sets the bucket size for the server names hash tables. The default value depends on the size of the processor’s cache line. The details of setting up hash tables are provided in a separate document.
server_names_hash_bucket_size :: [Text] -> ConfStatement
server_names_hash_bucket_size vs = ConfStatementExpression (Expression "server_names_hash_bucket_size" vs)

-- | Safe version of 'server_names_hash_bucket_size'
server_names_hash_bucket_size_s :: [Text] -> Server_Names_Hash_Bucket_Size
server_names_hash_bucket_size_s vs = Server_Names_Hash_Bucket_Size$ ConfStatementExpression (Expression "server_names_hash_bucket_size" vs)
newtype Server_Names_Hash_Bucket_Size = Server_Names_Hash_Bucket_Size ConfStatement
instance ToConfStatement Server_Names_Hash_Bucket_Size where
    toConfStatement (Server_Names_Hash_Bucket_Size c) = c
instance HasContextHttp
 Server_Names_Hash_Bucket_Size where


-- | Sets the maximum size of the server names hash tables. The details of setting up hash tables are provided in a separate document.
server_names_hash_max_size :: [Text] -> ConfStatement
server_names_hash_max_size vs = ConfStatementExpression (Expression "server_names_hash_max_size" vs)

-- | Safe version of 'server_names_hash_max_size'
server_names_hash_max_size_s :: [Text] -> Server_Names_Hash_Max_Size
server_names_hash_max_size_s vs = Server_Names_Hash_Max_Size$ ConfStatementExpression (Expression "server_names_hash_max_size" vs)
newtype Server_Names_Hash_Max_Size = Server_Names_Hash_Max_Size ConfStatement
instance ToConfStatement Server_Names_Hash_Max_Size where
    toConfStatement (Server_Names_Hash_Max_Size c) = c
instance HasContextHttp
 Server_Names_Hash_Max_Size where


-- | Enables or disables emitting nginx version in error messages and in the Server response header field.
server_tokens :: [Text] -> ConfStatement
server_tokens vs = ConfStatementExpression (Expression "server_tokens" vs)

-- | Safe version of 'server_tokens'
server_tokens_s :: [Text] -> Server_Tokens
server_tokens_s vs = Server_Tokens$ ConfStatementExpression (Expression "server_tokens" vs)
newtype Server_Tokens = Server_Tokens ConfStatement
instance ToConfStatement Server_Tokens where
    toConfStatement (Server_Tokens c) = c
instance HasContextHttp
 Server_Tokens where
instance HasContextServer
 Server_Tokens where
instance HasContextLocation
 Server_Tokens where


-- | Enables or disables the use of the TCP_NODELAY option. The option is enabled only when a connection is transitioned into the keep-alive state.
tcp_nodelay :: [Text] -> ConfStatement
tcp_nodelay vs = ConfStatementExpression (Expression "tcp_nodelay" vs)

-- | Safe version of 'tcp_nodelay'
tcp_nodelay_s :: [Text] -> Tcp_Nodelay
tcp_nodelay_s vs = Tcp_Nodelay$ ConfStatementExpression (Expression "tcp_nodelay" vs)
newtype Tcp_Nodelay = Tcp_Nodelay ConfStatement
instance ToConfStatement Tcp_Nodelay where
    toConfStatement (Tcp_Nodelay c) = c
instance HasContextHttp
 Tcp_Nodelay where
instance HasContextServer
 Tcp_Nodelay where
instance HasContextLocation
 Tcp_Nodelay where


-- | Enables or disables the use of the TCP_NOPUSH socket option on FreeBSD or the TCP_CORK socket option on Linux. The options are enabled only when  is used. Enabling the option allows sending the response header and the beginning of a file in one packet, on Linux and FreeBSD 4.*; sending a file in full packets.
tcp_nopush :: [Text] -> ConfStatement
tcp_nopush vs = ConfStatementExpression (Expression "tcp_nopush" vs)

-- | Safe version of 'tcp_nopush'
tcp_nopush_s :: [Text] -> Tcp_Nopush
tcp_nopush_s vs = Tcp_Nopush$ ConfStatementExpression (Expression "tcp_nopush" vs)
newtype Tcp_Nopush = Tcp_Nopush ConfStatement
instance ToConfStatement Tcp_Nopush where
    toConfStatement (Tcp_Nopush c) = c
instance HasContextHttp
 Tcp_Nopush where
instance HasContextServer
 Tcp_Nopush where
instance HasContextLocation
 Tcp_Nopush where


-- | Checks the existence of files in the specified order and uses the first found file for request processing; the processing is performed in the current context. The path to a file is constructed from the file parameter according to the and  directives. It is possible to check directory’s existence by specifying a slash at the end of a name, e.g. “$uri/”. If none of the files were found, an internal redirect to the uri specified in the last parameter is made. For example: location /images/ { try_files $uri /images/default.gif; } location = /images/default.gif { expires 30s; } The last parameter can also point to a named location, as shown in examples below. Starting from version 0.7.51, the last parameter can also be a code: location / { try_files $uri $uri/index.html $uri.html =404; }
try_files :: [Text] -> ConfStatement
try_files vs = ConfStatementExpression (Expression "try_files" vs)

-- | Safe version of 'try_files'
try_files_s :: [Text] -> Try_Files
try_files_s vs = Try_Files$ ConfStatementExpression (Expression "try_files" vs)
newtype Try_Files = Try_Files ConfStatement
instance ToConfStatement Try_Files where
    toConfStatement (Try_Files c) = c
instance HasContextServer
 Try_Files where
instance HasContextLocation
 Try_Files where

-- | Maps file name extensions to MIME types of responses. Extensions are case-insensitive. Several extensions can be mapped to one type, for example: types { application/octet-stream bin exe dll; application/octet-stream deb; application/octet-stream dmg; }
types :: [Text] -> [ConfStatement] -> ConfStatement
types more ss = ConfStatementBlock (Block ("types":more) ss)
-- | Safe version of 'types'
types_s :: (HasContextTypes f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
types_s more ss = ConfStatementBlock (Block ("types":more) (Prelude.map toConfStatement ss))

-- | Sets the bucket size for the types hash tables. The details of setting up hash tables are provided in a separate document. Prior to version 1.5.13, the default value depended on the size of the processor’s cache line.
types_hash_bucket_size :: [Text] -> ConfStatement
types_hash_bucket_size vs = ConfStatementExpression (Expression "types_hash_bucket_size" vs)

-- | Safe version of 'types_hash_bucket_size'
types_hash_bucket_size_s :: [Text] -> Types_Hash_Bucket_Size
types_hash_bucket_size_s vs = Types_Hash_Bucket_Size$ ConfStatementExpression (Expression "types_hash_bucket_size" vs)
newtype Types_Hash_Bucket_Size = Types_Hash_Bucket_Size ConfStatement
instance ToConfStatement Types_Hash_Bucket_Size where
    toConfStatement (Types_Hash_Bucket_Size c) = c
instance HasContextHttp
 Types_Hash_Bucket_Size where
instance HasContextServer
 Types_Hash_Bucket_Size where
instance HasContextLocation
 Types_Hash_Bucket_Size where


-- | Sets the maximum size of the types hash tables. The details of setting up hash tables are provided in a separate document.
types_hash_max_size :: [Text] -> ConfStatement
types_hash_max_size vs = ConfStatementExpression (Expression "types_hash_max_size" vs)

-- | Safe version of 'types_hash_max_size'
types_hash_max_size_s :: [Text] -> Types_Hash_Max_Size
types_hash_max_size_s vs = Types_Hash_Max_Size$ ConfStatementExpression (Expression "types_hash_max_size" vs)
newtype Types_Hash_Max_Size = Types_Hash_Max_Size ConfStatement
instance ToConfStatement Types_Hash_Max_Size where
    toConfStatement (Types_Hash_Max_Size c) = c
instance HasContextHttp
 Types_Hash_Max_Size where
instance HasContextServer
 Types_Hash_Max_Size where
instance HasContextLocation
 Types_Hash_Max_Size where


-- | Enables or disables the use of underscores in client request header fields. When the use of underscores is disabled, request header fields whose names contain underscores are marked as invalid and become subject to the directive.
underscores_in_headers :: [Text] -> ConfStatement
underscores_in_headers vs = ConfStatementExpression (Expression "underscores_in_headers" vs)

-- | Safe version of 'underscores_in_headers'
underscores_in_headers_s :: [Text] -> Underscores_In_Headers
underscores_in_headers_s vs = Underscores_In_Headers$ ConfStatementExpression (Expression "underscores_in_headers" vs)
newtype Underscores_In_Headers = Underscores_In_Headers ConfStatement
instance ToConfStatement Underscores_In_Headers where
    toConfStatement (Underscores_In_Headers c) = c
instance HasContextHttp
 Underscores_In_Headers where
instance HasContextServer
 Underscores_In_Headers where


-- | Sets the bucket size for the variables hash table. The details of setting up hash tables are provided in a separate document.
variables_hash_bucket_size :: [Text] -> ConfStatement
variables_hash_bucket_size vs = ConfStatementExpression (Expression "variables_hash_bucket_size" vs)

-- | Safe version of 'variables_hash_bucket_size'
variables_hash_bucket_size_s :: [Text] -> Variables_Hash_Bucket_Size
variables_hash_bucket_size_s vs = Variables_Hash_Bucket_Size$ ConfStatementExpression (Expression "variables_hash_bucket_size" vs)
newtype Variables_Hash_Bucket_Size = Variables_Hash_Bucket_Size ConfStatement
instance ToConfStatement Variables_Hash_Bucket_Size where
    toConfStatement (Variables_Hash_Bucket_Size c) = c
instance HasContextHttp
 Variables_Hash_Bucket_Size where


-- | Sets the maximum size of the variables hash table. The details of setting up hash tables are provided in a separate document. Prior to version 1.5.13, the default value was 512.
variables_hash_max_size :: [Text] -> ConfStatement
variables_hash_max_size vs = ConfStatementExpression (Expression "variables_hash_max_size" vs)

-- | Safe version of 'variables_hash_max_size'
variables_hash_max_size_s :: [Text] -> Variables_Hash_Max_Size
variables_hash_max_size_s vs = Variables_Hash_Max_Size$ ConfStatementExpression (Expression "variables_hash_max_size" vs)
newtype Variables_Hash_Max_Size = Variables_Hash_Max_Size ConfStatement
instance ToConfStatement Variables_Hash_Max_Size where
    toConfStatement (Variables_Hash_Max_Size c) = c
instance HasContextHttp
 Variables_Hash_Max_Size where

