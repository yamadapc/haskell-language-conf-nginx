-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Gzip_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Enables or disables gzipping of responses.
gzip :: [Text] -> ConfStatement
gzip vs = ConfStatementExpression (Expression "gzip" vs)

-- | Safe version of 'gzip'
gzip_s :: [Text] -> Gzip
gzip_s vs = Gzip$ ConfStatementExpression (Expression "gzip" vs)
newtype Gzip = Gzip ConfStatement
instance ToConfStatement Gzip where
    toConfStatement (Gzip c) = c
instance HasContextHttp
 Gzip where
instance HasContextServer
 Gzip where
instance HasContextLocation
 Gzip where


-- | Sets the number and size of buffers used to compress a response. By default, the buffer size is equal to one memory page. This is either 4K or 8K, depending on a platform. Until version 0.7.28, four 4K or 8K buffers were used by default.
gzip_buffers :: [Text] -> ConfStatement
gzip_buffers vs = ConfStatementExpression (Expression "gzip_buffers" vs)

-- | Safe version of 'gzip_buffers'
gzip_buffers_s :: [Text] -> Gzip_Buffers
gzip_buffers_s vs = Gzip_Buffers$ ConfStatementExpression (Expression "gzip_buffers" vs)
newtype Gzip_Buffers = Gzip_Buffers ConfStatement
instance ToConfStatement Gzip_Buffers where
    toConfStatement (Gzip_Buffers c) = c
instance HasContextHttp
 Gzip_Buffers where
instance HasContextServer
 Gzip_Buffers where
instance HasContextLocation
 Gzip_Buffers where


-- | Sets a gzip compression level of a response. Acceptable values are in the range from 1 to 9.
gzip_comp_level :: [Text] -> ConfStatement
gzip_comp_level vs = ConfStatementExpression (Expression "gzip_comp_level" vs)

-- | Safe version of 'gzip_comp_level'
gzip_comp_level_s :: [Text] -> Gzip_Comp_Level
gzip_comp_level_s vs = Gzip_Comp_Level$ ConfStatementExpression (Expression "gzip_comp_level" vs)
newtype Gzip_Comp_Level = Gzip_Comp_Level ConfStatement
instance ToConfStatement Gzip_Comp_Level where
    toConfStatement (Gzip_Comp_Level c) = c
instance HasContextHttp
 Gzip_Comp_Level where
instance HasContextServer
 Gzip_Comp_Level where
instance HasContextLocation
 Gzip_Comp_Level where


-- | Disables gzipping of responses for requests with User-Agent header fields matching any of the specified regular expressions.
gzip_disable :: [Text] -> ConfStatement
gzip_disable vs = ConfStatementExpression (Expression "gzip_disable" vs)

-- | Safe version of 'gzip_disable'
gzip_disable_s :: [Text] -> Gzip_Disable
gzip_disable_s vs = Gzip_Disable$ ConfStatementExpression (Expression "gzip_disable" vs)
newtype Gzip_Disable = Gzip_Disable ConfStatement
instance ToConfStatement Gzip_Disable where
    toConfStatement (Gzip_Disable c) = c
instance HasContextHttp
 Gzip_Disable where
instance HasContextServer
 Gzip_Disable where
instance HasContextLocation
 Gzip_Disable where


-- | Sets the minimum length of a response that will be gzipped. The length is determined only from the Content-Length response header field.
gzip_min_length :: [Text] -> ConfStatement
gzip_min_length vs = ConfStatementExpression (Expression "gzip_min_length" vs)

-- | Safe version of 'gzip_min_length'
gzip_min_length_s :: [Text] -> Gzip_Min_Length
gzip_min_length_s vs = Gzip_Min_Length$ ConfStatementExpression (Expression "gzip_min_length" vs)
newtype Gzip_Min_Length = Gzip_Min_Length ConfStatement
instance ToConfStatement Gzip_Min_Length where
    toConfStatement (Gzip_Min_Length c) = c
instance HasContextHttp
 Gzip_Min_Length where
instance HasContextServer
 Gzip_Min_Length where
instance HasContextLocation
 Gzip_Min_Length where


-- | Sets the minimum HTTP version of a request required to compress a response.
gzip_http_version :: [Text] -> ConfStatement
gzip_http_version vs = ConfStatementExpression (Expression "gzip_http_version" vs)

-- | Safe version of 'gzip_http_version'
gzip_http_version_s :: [Text] -> Gzip_Http_Version
gzip_http_version_s vs = Gzip_Http_Version$ ConfStatementExpression (Expression "gzip_http_version" vs)
newtype Gzip_Http_Version = Gzip_Http_Version ConfStatement
instance ToConfStatement Gzip_Http_Version where
    toConfStatement (Gzip_Http_Version c) = c
instance HasContextHttp
 Gzip_Http_Version where
instance HasContextServer
 Gzip_Http_Version where
instance HasContextLocation
 Gzip_Http_Version where


-- | Enables or disables gzipping of responses for proxied requests depending on the request and response. The fact that the request is proxied is determined by the presence of the Via request header field. The directive accepts multiple parameters: off disables compression for all proxied requests, ignoring other parameters; expired enables compression if a response header includes the Expires field with a value that disables caching; no-cache enables compression if a response header includes the Cache-Control field with the “no-cache” parameter; no-store enables compression if a response header includes the Cache-Control field with the “no-store” parameter; private enables compression if a response header includes the Cache-Control field with the “private” parameter; no_last_modified enables compression if a response header does not include the Last-Modified field; no_etag enables compression if a response header does not include the ETag field; auth enables compression if a request header includes the Authorization field; any enables compression for all proxied requests.
gzip_proxied :: [Text] -> ConfStatement
gzip_proxied vs = ConfStatementExpression (Expression "gzip_proxied" vs)

-- | Safe version of 'gzip_proxied'
gzip_proxied_s :: [Text] -> Gzip_Proxied
gzip_proxied_s vs = Gzip_Proxied$ ConfStatementExpression (Expression "gzip_proxied" vs)
newtype Gzip_Proxied = Gzip_Proxied ConfStatement
instance ToConfStatement Gzip_Proxied where
    toConfStatement (Gzip_Proxied c) = c
instance HasContextHttp
 Gzip_Proxied where
instance HasContextServer
 Gzip_Proxied where
instance HasContextLocation
 Gzip_Proxied where


-- | Enables gzipping of responses for the specified MIME types in addition to “text/html”. The special value “*” matches any MIME type (0.8.29). Responses with the “text/html” type are always compressed.
gzip_types :: [Text] -> ConfStatement
gzip_types vs = ConfStatementExpression (Expression "gzip_types" vs)

-- | Safe version of 'gzip_types'
gzip_types_s :: [Text] -> Gzip_Types
gzip_types_s vs = Gzip_Types$ ConfStatementExpression (Expression "gzip_types" vs)
newtype Gzip_Types = Gzip_Types ConfStatement
instance ToConfStatement Gzip_Types where
    toConfStatement (Gzip_Types c) = c
instance HasContextHttp
 Gzip_Types where
instance HasContextServer
 Gzip_Types where
instance HasContextLocation
 Gzip_Types where


-- | Enables or disables inserting the Vary: Accept-Encoding response header field if the directives , , or are active.
gzip_vary :: [Text] -> ConfStatement
gzip_vary vs = ConfStatementExpression (Expression "gzip_vary" vs)

-- | Safe version of 'gzip_vary'
gzip_vary_s :: [Text] -> Gzip_Vary
gzip_vary_s vs = Gzip_Vary$ ConfStatementExpression (Expression "gzip_vary" vs)
newtype Gzip_Vary = Gzip_Vary ConfStatement
instance ToConfStatement Gzip_Vary where
    toConfStatement (Gzip_Vary c) = c
instance HasContextHttp
 Gzip_Vary where
instance HasContextServer
 Gzip_Vary where
instance HasContextLocation
 Gzip_Vary where

