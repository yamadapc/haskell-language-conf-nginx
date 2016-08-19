-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Stream_Return_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Specifies a value to send to the client. The value can contain text, variables, and their combination.
return :: [Text] -> ConfStatement
return vs = ConfStatementExpression (Expression "return" vs)

-- | Safe version of 'return'
return_s :: [Text] -> Return
return_s vs = Return$ ConfStatementExpression (Expression "return" vs)
newtype Return = Return ConfStatement
instance ToConfStatement Return where
    toConfStatement (Return c) = c
instance HasContextServer
 Return where

