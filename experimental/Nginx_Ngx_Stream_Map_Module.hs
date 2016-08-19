-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Stream_Map_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common
-- | Creates a new variable whose value depends on values of one or more of the source variables specified in the first parameter.
map :: [Text] -> [ConfStatement] -> ConfStatement
map more ss = ConfStatementBlock (Block ("map":more) ss)
-- | Safe version of 'map'
map_s :: (HasContextMap f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
map_s more ss = ConfStatementBlock (Block ("map":more) (Prelude.map toConfStatement ss))

-- | Sets the bucket size for the  variables hash tables. Default value depends on the processor’s cache line size. The details of setting up hash tables are provided in a separate document.
map_hash_bucket_size :: [Text] -> ConfStatement
map_hash_bucket_size vs = ConfStatementExpression (Expression "map_hash_bucket_size" vs)

-- | Safe version of 'map_hash_bucket_size'
map_hash_bucket_size_s :: [Text] -> Map_Hash_Bucket_Size
map_hash_bucket_size_s vs = Map_Hash_Bucket_Size$ ConfStatementExpression (Expression "map_hash_bucket_size" vs)
newtype Map_Hash_Bucket_Size = Map_Hash_Bucket_Size ConfStatement
instance ToConfStatement Map_Hash_Bucket_Size where
    toConfStatement (Map_Hash_Bucket_Size c) = c
instance HasContextStream
 Map_Hash_Bucket_Size where


-- | Sets the maximum size of the  variables hash tables. The details of setting up hash tables are provided in a separate document.
map_hash_max_size :: [Text] -> ConfStatement
map_hash_max_size vs = ConfStatementExpression (Expression "map_hash_max_size" vs)

-- | Safe version of 'map_hash_max_size'
map_hash_max_size_s :: [Text] -> Map_Hash_Max_Size
map_hash_max_size_s vs = Map_Hash_Max_Size$ ConfStatementExpression (Expression "map_hash_max_size" vs)
newtype Map_Hash_Max_Size = Map_Hash_Max_Size ConfStatement
instance ToConfStatement Map_Hash_Max_Size where
    toConfStatement (Map_Hash_Max_Size c) = c
instance HasContextStream
 Map_Hash_Max_Size where

