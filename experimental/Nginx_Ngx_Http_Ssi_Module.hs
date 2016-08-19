-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Ssi_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Enables or disables processing of SSI commands in responses.
ssi :: [Text] -> ConfStatement
ssi vs = ConfStatementExpression (Expression "ssi" vs)

-- | Safe version of 'ssi'
ssi_s :: [Text] -> Ssi
ssi_s vs = Ssi$ ConfStatementExpression (Expression "ssi" vs)
newtype Ssi = Ssi ConfStatement
instance ToConfStatement Ssi where
    toConfStatement (Ssi c) = c
instance HasContextHttp
 Ssi where
instance HasContextServer
 Ssi where
instance HasContextLocation
 Ssi where


-- | Allows preserving the Last-Modified header field from the original response during SSI processing to facilitate response caching.
ssi_last_modified :: [Text] -> ConfStatement
ssi_last_modified vs = ConfStatementExpression (Expression "ssi_last_modified" vs)

-- | Safe version of 'ssi_last_modified'
ssi_last_modified_s :: [Text] -> Ssi_Last_Modified
ssi_last_modified_s vs = Ssi_Last_Modified$ ConfStatementExpression (Expression "ssi_last_modified" vs)
newtype Ssi_Last_Modified = Ssi_Last_Modified ConfStatement
instance ToConfStatement Ssi_Last_Modified where
    toConfStatement (Ssi_Last_Modified c) = c
instance HasContextHttp
 Ssi_Last_Modified where
instance HasContextServer
 Ssi_Last_Modified where
instance HasContextLocation
 Ssi_Last_Modified where


-- | Sets the minimum size for parts of a response stored on disk, starting from which it makes sense to send them using .
ssi_min_file_chunk :: [Text] -> ConfStatement
ssi_min_file_chunk vs = ConfStatementExpression (Expression "ssi_min_file_chunk" vs)

-- | Safe version of 'ssi_min_file_chunk'
ssi_min_file_chunk_s :: [Text] -> Ssi_Min_File_Chunk
ssi_min_file_chunk_s vs = Ssi_Min_File_Chunk$ ConfStatementExpression (Expression "ssi_min_file_chunk" vs)
newtype Ssi_Min_File_Chunk = Ssi_Min_File_Chunk ConfStatement
instance ToConfStatement Ssi_Min_File_Chunk where
    toConfStatement (Ssi_Min_File_Chunk c) = c
instance HasContextHttp
 Ssi_Min_File_Chunk where
instance HasContextServer
 Ssi_Min_File_Chunk where
instance HasContextLocation
 Ssi_Min_File_Chunk where


-- | If enabled, suppresses the output of the “[an error occurred while processing the directive]” string if an error occurred during SSI processing.
ssi_silent_errors :: [Text] -> ConfStatement
ssi_silent_errors vs = ConfStatementExpression (Expression "ssi_silent_errors" vs)

-- | Safe version of 'ssi_silent_errors'
ssi_silent_errors_s :: [Text] -> Ssi_Silent_Errors
ssi_silent_errors_s vs = Ssi_Silent_Errors$ ConfStatementExpression (Expression "ssi_silent_errors" vs)
newtype Ssi_Silent_Errors = Ssi_Silent_Errors ConfStatement
instance ToConfStatement Ssi_Silent_Errors where
    toConfStatement (Ssi_Silent_Errors c) = c
instance HasContextHttp
 Ssi_Silent_Errors where
instance HasContextServer
 Ssi_Silent_Errors where
instance HasContextLocation
 Ssi_Silent_Errors where


-- | Enables processing of SSI commands in responses with the specified MIME types in addition to “text/html”. The special value “*” matches any MIME type (0.8.29).
ssi_types :: [Text] -> ConfStatement
ssi_types vs = ConfStatementExpression (Expression "ssi_types" vs)

-- | Safe version of 'ssi_types'
ssi_types_s :: [Text] -> Ssi_Types
ssi_types_s vs = Ssi_Types$ ConfStatementExpression (Expression "ssi_types" vs)
newtype Ssi_Types = Ssi_Types ConfStatement
instance ToConfStatement Ssi_Types where
    toConfStatement (Ssi_Types c) = c
instance HasContextHttp
 Ssi_Types where
instance HasContextServer
 Ssi_Types where
instance HasContextLocation
 Ssi_Types where


-- | Sets the maximum length of parameter values in SSI commands.
ssi_value_length :: [Text] -> ConfStatement
ssi_value_length vs = ConfStatementExpression (Expression "ssi_value_length" vs)

-- | Safe version of 'ssi_value_length'
ssi_value_length_s :: [Text] -> Ssi_Value_Length
ssi_value_length_s vs = Ssi_Value_Length$ ConfStatementExpression (Expression "ssi_value_length" vs)
newtype Ssi_Value_Length = Ssi_Value_Length ConfStatement
instance ToConfStatement Ssi_Value_Length where
    toConfStatement (Ssi_Value_Length c) = c
instance HasContextHttp
 Ssi_Value_Length where
instance HasContextServer
 Ssi_Value_Length where
instance HasContextLocation
 Ssi_Value_Length where

