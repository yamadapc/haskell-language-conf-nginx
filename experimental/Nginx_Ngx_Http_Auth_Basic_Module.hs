-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Auth_Basic_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Enables validation of user name and password using the “HTTP Basic Authentication” protocol. The specified parameter is used as a realm. Parameter value can contain variables (1.3.10, 1.2.7). The special value off allows cancelling the effect of the auth_basic directive inherited from the previous configuration level.
auth_basic :: [Text] -> ConfStatement
auth_basic vs = ConfStatementExpression (Expression "auth_basic" vs)

-- | Safe version of 'auth_basic'
auth_basic_s :: [Text] -> Auth_Basic
auth_basic_s vs = Auth_Basic$ ConfStatementExpression (Expression "auth_basic" vs)
newtype Auth_Basic = Auth_Basic ConfStatement
instance ToConfStatement Auth_Basic where
    toConfStatement (Auth_Basic c) = c
instance HasContextHttp
 Auth_Basic where
instance HasContextServer
 Auth_Basic where
instance HasContextLocation
 Auth_Basic where
instance HasContextLimit_Except
 Auth_Basic where


-- | Specifies a file that keeps user names and passwords, in the following format: # comment name1:password1 name2:password2:comment name3:password3 The file name can contain variables.
auth_basic_user_file :: [Text] -> ConfStatement
auth_basic_user_file vs = ConfStatementExpression (Expression "auth_basic_user_file" vs)

-- | Safe version of 'auth_basic_user_file'
auth_basic_user_file_s :: [Text] -> Auth_Basic_User_File
auth_basic_user_file_s vs = Auth_Basic_User_File$ ConfStatementExpression (Expression "auth_basic_user_file" vs)
newtype Auth_Basic_User_File = Auth_Basic_User_File ConfStatement
instance ToConfStatement Auth_Basic_User_File where
    toConfStatement (Auth_Basic_User_File c) = c
instance HasContextHttp
 Auth_Basic_User_File where
instance HasContextServer
 Auth_Basic_User_File where
instance HasContextLocation
 Auth_Basic_User_File where
instance HasContextLimit_Except
 Auth_Basic_User_File where

