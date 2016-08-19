-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Perl_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets a Perl handler for the given location.
perl :: [Text] -> ConfStatement
perl vs = ConfStatementExpression (Expression "perl" vs)

-- | Safe version of 'perl'
perl_s :: [Text] -> Perl
perl_s vs = Perl$ ConfStatementExpression (Expression "perl" vs)
newtype Perl = Perl ConfStatement
instance ToConfStatement Perl where
    toConfStatement (Perl c) = c
instance HasContextLocation
 Perl where
instance HasContextLimit_Except
 Perl where


-- | Sets an additional path for Perl modules.
perl_modules :: [Text] -> ConfStatement
perl_modules vs = ConfStatementExpression (Expression "perl_modules" vs)

-- | Safe version of 'perl_modules'
perl_modules_s :: [Text] -> Perl_Modules
perl_modules_s vs = Perl_Modules$ ConfStatementExpression (Expression "perl_modules" vs)
newtype Perl_Modules = Perl_Modules ConfStatement
instance ToConfStatement Perl_Modules where
    toConfStatement (Perl_Modules c) = c
instance HasContextHttp
 Perl_Modules where


-- | Defines the name of a module that will be loaded during each reconfiguration. Several perl_require directives can be present.
perl_require :: [Text] -> ConfStatement
perl_require vs = ConfStatementExpression (Expression "perl_require" vs)

-- | Safe version of 'perl_require'
perl_require_s :: [Text] -> Perl_Require
perl_require_s vs = Perl_Require$ ConfStatementExpression (Expression "perl_require" vs)
newtype Perl_Require = Perl_Require ConfStatement
instance ToConfStatement Perl_Require where
    toConfStatement (Perl_Require c) = c
instance HasContextHttp
 Perl_Require where


-- | Installs a Perl handler for the specified variable.
perl_set :: [Text] -> ConfStatement
perl_set vs = ConfStatementExpression (Expression "perl_set" vs)

-- | Safe version of 'perl_set'
perl_set_s :: [Text] -> Perl_Set
perl_set_s vs = Perl_Set$ ConfStatementExpression (Expression "perl_set" vs)
newtype Perl_Set = Perl_Set ConfStatement
instance ToConfStatement Perl_Set where
    toConfStatement (Perl_Set c) = c
instance HasContextHttp
 Perl_Set where

