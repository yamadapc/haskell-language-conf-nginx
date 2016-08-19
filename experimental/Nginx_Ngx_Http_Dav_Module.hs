-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Dav_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets access permissions for newly created files and directories, e.g.: dav_access user:rw group:rw all:r;
dav_access :: [Text] -> ConfStatement
dav_access vs = ConfStatementExpression (Expression "dav_access" vs)

-- | Safe version of 'dav_access'
dav_access_s :: [Text] -> Dav_Access
dav_access_s vs = Dav_Access$ ConfStatementExpression (Expression "dav_access" vs)
newtype Dav_Access = Dav_Access ConfStatement
instance ToConfStatement Dav_Access where
    toConfStatement (Dav_Access c) = c
instance HasContextHttp
 Dav_Access where
instance HasContextServer
 Dav_Access where
instance HasContextLocation
 Dav_Access where


-- | Allows the specified HTTP and WebDAV methods. The parameter off denies all methods processed by this module. The following methods are supported: PUT, DELETE, MKCOL, COPY, and MOVE.
dav_methods :: [Text] -> ConfStatement
dav_methods vs = ConfStatementExpression (Expression "dav_methods" vs)

-- | Safe version of 'dav_methods'
dav_methods_s :: [Text] -> Dav_Methods
dav_methods_s vs = Dav_Methods$ ConfStatementExpression (Expression "dav_methods" vs)
newtype Dav_Methods = Dav_Methods ConfStatement
instance ToConfStatement Dav_Methods where
    toConfStatement (Dav_Methods c) = c
instance HasContextHttp
 Dav_Methods where
instance HasContextServer
 Dav_Methods where
instance HasContextLocation
 Dav_Methods where


-- | The WebDAV specification only allows creating files in already existing directories. This directive allows creating all needed intermediate directories.
create_full_put_path :: [Text] -> ConfStatement
create_full_put_path vs = ConfStatementExpression (Expression "create_full_put_path" vs)

-- | Safe version of 'create_full_put_path'
create_full_put_path_s :: [Text] -> Create_Full_Put_Path
create_full_put_path_s vs = Create_Full_Put_Path$ ConfStatementExpression (Expression "create_full_put_path" vs)
newtype Create_Full_Put_Path = Create_Full_Put_Path ConfStatement
instance ToConfStatement Create_Full_Put_Path where
    toConfStatement (Create_Full_Put_Path c) = c
instance HasContextHttp
 Create_Full_Put_Path where
instance HasContextServer
 Create_Full_Put_Path where
instance HasContextLocation
 Create_Full_Put_Path where


-- | Allows the DELETE method to remove files provided that the number of elements in a request path is not less than the specified number. For example, the directive min_delete_depth 4; allows removing files on requests /users/00/00/name /users/00/00/name/pic.jpg /users/00/00/page.html and denies the removal of /users/00/00
min_delete_depth :: [Text] -> ConfStatement
min_delete_depth vs = ConfStatementExpression (Expression "min_delete_depth" vs)

-- | Safe version of 'min_delete_depth'
min_delete_depth_s :: [Text] -> Min_Delete_Depth
min_delete_depth_s vs = Min_Delete_Depth$ ConfStatementExpression (Expression "min_delete_depth" vs)
newtype Min_Delete_Depth = Min_Delete_Depth ConfStatement
instance ToConfStatement Min_Delete_Depth where
    toConfStatement (Min_Delete_Depth c) = c
instance HasContextHttp
 Min_Delete_Depth where
instance HasContextServer
 Min_Delete_Depth where
instance HasContextLocation
 Min_Delete_Depth where

