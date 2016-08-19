-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Referer_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets the bucket size for the valid referers hash tables. The details of setting up hash tables are provided in a separate document.
referer_hash_bucket_size :: [Text] -> ConfStatement
referer_hash_bucket_size vs = ConfStatementExpression (Expression "referer_hash_bucket_size" vs)

-- | Safe version of 'referer_hash_bucket_size'
referer_hash_bucket_size_s :: [Text] -> Referer_Hash_Bucket_Size
referer_hash_bucket_size_s vs = Referer_Hash_Bucket_Size$ ConfStatementExpression (Expression "referer_hash_bucket_size" vs)
newtype Referer_Hash_Bucket_Size = Referer_Hash_Bucket_Size ConfStatement
instance ToConfStatement Referer_Hash_Bucket_Size where
    toConfStatement (Referer_Hash_Bucket_Size c) = c
instance HasContextServer
 Referer_Hash_Bucket_Size where
instance HasContextLocation
 Referer_Hash_Bucket_Size where


-- | Sets the maximum size of the valid referers hash tables. The details of setting up hash tables are provided in a separate document.
referer_hash_max_size :: [Text] -> ConfStatement
referer_hash_max_size vs = ConfStatementExpression (Expression "referer_hash_max_size" vs)

-- | Safe version of 'referer_hash_max_size'
referer_hash_max_size_s :: [Text] -> Referer_Hash_Max_Size
referer_hash_max_size_s vs = Referer_Hash_Max_Size$ ConfStatementExpression (Expression "referer_hash_max_size" vs)
newtype Referer_Hash_Max_Size = Referer_Hash_Max_Size ConfStatement
instance ToConfStatement Referer_Hash_Max_Size where
    toConfStatement (Referer_Hash_Max_Size c) = c
instance HasContextServer
 Referer_Hash_Max_Size where
instance HasContextLocation
 Referer_Hash_Max_Size where


-- | Specifies the Referer request header field values that will cause the embedded $invalid_referer variable to be set to an empty string. Otherwise, the variable will be set to “1”. Search for a match is case-insensitive.
valid_referers :: [Text] -> ConfStatement
valid_referers vs = ConfStatementExpression (Expression "valid_referers" vs)

-- | Safe version of 'valid_referers'
valid_referers_s :: [Text] -> Valid_Referers
valid_referers_s vs = Valid_Referers$ ConfStatementExpression (Expression "valid_referers" vs)
newtype Valid_Referers = Valid_Referers ConfStatement
instance ToConfStatement Valid_Referers where
    toConfStatement (Valid_Referers c) = c
instance HasContextServer
 Valid_Referers where
instance HasContextLocation
 Valid_Referers where

