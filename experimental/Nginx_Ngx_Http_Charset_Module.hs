-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Charset_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Adds the specified charset to the Content-Type response header field. If this charset is different from the charset specified in the  directive, a conversion is performed.
charset :: [Text] -> ConfStatement
charset vs = ConfStatementExpression (Expression "charset" vs)

-- | Safe version of 'charset'
charset_s :: [Text] -> Charset
charset_s vs = Charset$ ConfStatementExpression (Expression "charset" vs)
newtype Charset = Charset ConfStatement
instance ToConfStatement Charset where
    toConfStatement (Charset c) = c
instance HasContextHttp
 Charset where
instance HasContextServer
 Charset where
instance HasContextLocation
 Charset where

-- | Describes the conversion table from one charset to another. A reverse conversion table is built using the same data. Character codes are given in hexadecimal. Missing characters in the range 80-FF are replaced with “?”. When converting from UTF-8, characters missing in a one-byte charset are replaced with “&#XXXX;”.
charset_map :: [Text] -> [ConfStatement] -> ConfStatement
charset_map more ss = ConfStatementBlock (Block ("charset_map":more) ss)
-- | Safe version of 'charset_map'
charset_map_s :: (HasContextCharset_Map f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
charset_map_s more ss = ConfStatementBlock (Block ("charset_map":more) (Prelude.map toConfStatement ss))

-- | Enables module processing in responses with the specified MIME types in addition to “text/html”. The special value “*” matches any MIME type (0.8.29).
charset_types :: [Text] -> ConfStatement
charset_types vs = ConfStatementExpression (Expression "charset_types" vs)

-- | Safe version of 'charset_types'
charset_types_s :: [Text] -> Charset_Types
charset_types_s vs = Charset_Types$ ConfStatementExpression (Expression "charset_types" vs)
newtype Charset_Types = Charset_Types ConfStatement
instance ToConfStatement Charset_Types where
    toConfStatement (Charset_Types c) = c
instance HasContextHttp
 Charset_Types where
instance HasContextServer
 Charset_Types where
instance HasContextLocation
 Charset_Types where


-- | Determines whether a conversion should be performed for answers received from a proxied or a FastCGI/uwsgi/SCGI server when the answers already carry a charset in the Content-Type response header field. If conversion is enabled, a charset specified in the received response is used as a source charset. It should be noted that if a response is received in a subrequest then the conversion from the response charset to the main request charset is always performed, regardless of the override_charset directive setting.
override_charset :: [Text] -> ConfStatement
override_charset vs = ConfStatementExpression (Expression "override_charset" vs)

-- | Safe version of 'override_charset'
override_charset_s :: [Text] -> Override_Charset
override_charset_s vs = Override_Charset$ ConfStatementExpression (Expression "override_charset" vs)
newtype Override_Charset = Override_Charset ConfStatement
instance ToConfStatement Override_Charset where
    toConfStatement (Override_Charset c) = c
instance HasContextHttp
 Override_Charset where
instance HasContextServer
 Override_Charset where
instance HasContextLocation
 Override_Charset where


-- | Defines the source charset of a response. If this charset is different from the charset specified in the  directive, a conversion is performed.
source_charset :: [Text] -> ConfStatement
source_charset vs = ConfStatementExpression (Expression "source_charset" vs)

-- | Safe version of 'source_charset'
source_charset_s :: [Text] -> Source_Charset
source_charset_s vs = Source_Charset$ ConfStatementExpression (Expression "source_charset" vs)
newtype Source_Charset = Source_Charset ConfStatement
instance ToConfStatement Source_Charset where
    toConfStatement (Source_Charset c) = c
instance HasContextHttp
 Source_Charset where
instance HasContextServer
 Source_Charset where
instance HasContextLocation
 Source_Charset where

