-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Xslt_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Specifies the DTD file that declares character entities. This file is compiled at the configuration stage. For technical reasons, the module is unable to use the external subset declared in the processed XML, so it is ignored and a specially defined file is used instead. This file should not describe the XML structure. It is enough to declare just the required character entities, for example: <!ENTITY nbsp "&#xa0;">
xml_entities :: [Text] -> ConfStatement
xml_entities vs = ConfStatementExpression (Expression "xml_entities" vs)

-- | Safe version of 'xml_entities'
xml_entities_s :: [Text] -> Xml_Entities
xml_entities_s vs = Xml_Entities$ ConfStatementExpression (Expression "xml_entities" vs)
newtype Xml_Entities = Xml_Entities ConfStatement
instance ToConfStatement Xml_Entities where
    toConfStatement (Xml_Entities c) = c
instance HasContextHttp
 Xml_Entities where
instance HasContextServer
 Xml_Entities where
instance HasContextLocation
 Xml_Entities where


-- | Allows preserving the Last-Modified header field from the original response during XSLT transformations to facilitate response caching.
xslt_last_modified :: [Text] -> ConfStatement
xslt_last_modified vs = ConfStatementExpression (Expression "xslt_last_modified" vs)

-- | Safe version of 'xslt_last_modified'
xslt_last_modified_s :: [Text] -> Xslt_Last_Modified
xslt_last_modified_s vs = Xslt_Last_Modified$ ConfStatementExpression (Expression "xslt_last_modified" vs)
newtype Xslt_Last_Modified = Xslt_Last_Modified ConfStatement
instance ToConfStatement Xslt_Last_Modified where
    toConfStatement (Xslt_Last_Modified c) = c
instance HasContextHttp
 Xslt_Last_Modified where
instance HasContextServer
 Xslt_Last_Modified where
instance HasContextLocation
 Xslt_Last_Modified where


-- | Defines the parameters for XSLT stylesheets. The value is treated as an XPath expression. The value can contain variables. To pass a string value to a stylesheet, the  directive can be used.
xslt_param :: [Text] -> ConfStatement
xslt_param vs = ConfStatementExpression (Expression "xslt_param" vs)

-- | Safe version of 'xslt_param'
xslt_param_s :: [Text] -> Xslt_Param
xslt_param_s vs = Xslt_Param$ ConfStatementExpression (Expression "xslt_param" vs)
newtype Xslt_Param = Xslt_Param ConfStatement
instance ToConfStatement Xslt_Param where
    toConfStatement (Xslt_Param c) = c
instance HasContextHttp
 Xslt_Param where
instance HasContextServer
 Xslt_Param where
instance HasContextLocation
 Xslt_Param where


-- | Defines the string parameters for XSLT stylesheets. XPath expressions in the value are not interpreted. The value can contain variables.
xslt_string_param :: [Text] -> ConfStatement
xslt_string_param vs = ConfStatementExpression (Expression "xslt_string_param" vs)

-- | Safe version of 'xslt_string_param'
xslt_string_param_s :: [Text] -> Xslt_String_Param
xslt_string_param_s vs = Xslt_String_Param$ ConfStatementExpression (Expression "xslt_string_param" vs)
newtype Xslt_String_Param = Xslt_String_Param ConfStatement
instance ToConfStatement Xslt_String_Param where
    toConfStatement (Xslt_String_Param c) = c
instance HasContextHttp
 Xslt_String_Param where
instance HasContextServer
 Xslt_String_Param where
instance HasContextLocation
 Xslt_String_Param where


-- | Defines the XSLT stylesheet and its optional parameters. A stylesheet is compiled at the configuration stage.
xslt_stylesheet :: [Text] -> ConfStatement
xslt_stylesheet vs = ConfStatementExpression (Expression "xslt_stylesheet" vs)

-- | Safe version of 'xslt_stylesheet'
xslt_stylesheet_s :: [Text] -> Xslt_Stylesheet
xslt_stylesheet_s vs = Xslt_Stylesheet$ ConfStatementExpression (Expression "xslt_stylesheet" vs)
newtype Xslt_Stylesheet = Xslt_Stylesheet ConfStatement
instance ToConfStatement Xslt_Stylesheet where
    toConfStatement (Xslt_Stylesheet c) = c
instance HasContextLocation
 Xslt_Stylesheet where


-- | Enables transformations in responses with the specified MIME types in addition to “text/xml”. The special value “*” matches any MIME type (0.8.29). If the transformation result is an HTML response, its MIME type is changed to “text/html”.
xslt_types :: [Text] -> ConfStatement
xslt_types vs = ConfStatementExpression (Expression "xslt_types" vs)

-- | Safe version of 'xslt_types'
xslt_types_s :: [Text] -> Xslt_Types
xslt_types_s vs = Xslt_Types$ ConfStatementExpression (Expression "xslt_types" vs)
newtype Xslt_Types = Xslt_Types ConfStatement
instance ToConfStatement Xslt_Types where
    toConfStatement (Xslt_Types c) = c
instance HasContextHttp
 Xslt_Types where
instance HasContextServer
 Xslt_Types where
instance HasContextLocation
 Xslt_Types where

