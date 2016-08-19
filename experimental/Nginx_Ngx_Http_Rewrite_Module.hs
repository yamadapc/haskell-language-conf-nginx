-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Rewrite_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Stops processing the current set of ngx_http_rewrite_module directives.
break :: [Text] -> ConfStatement
break vs = ConfStatementExpression (Expression "break" vs)

-- | Safe version of 'break'
break_s :: [Text] -> Break
break_s vs = Break$ ConfStatementExpression (Expression "break" vs)
newtype Break = Break ConfStatement
instance ToConfStatement Break where
    toConfStatement (Break c) = c
instance HasContextServer
 Break where
instance HasContextLocation
 Break where
instance HasContextIf
 Break where

-- | The specified condition is evaluated. If true, this module directives specified inside the braces are executed, and the request is assigned the configuration inside the if directive. Configurations inside the if directives are inherited from the previous configuration level.
if_ :: [Text] -> [ConfStatement] -> ConfStatement
if_ more ss = ConfStatementBlock (Block ("if":more) ss)
-- | Safe version of 'if'
if_s :: (HasContextIf f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
if_s more ss = ConfStatementBlock (Block ("if":more) (Prelude.map toConfStatement ss))

-- | Stops processing and returns the specified code to a client. The non-standard code 444 closes a connection without sending a response header.
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
instance HasContextLocation
 Return where
instance HasContextIf
 Return where


-- | If the specified regular expression matches a request URI, URI is changed as specified in the replacement string. The rewrite directives are executed sequentially in order of their appearance in the configuration file. It is possible to terminate further processing of the directives using flags. If a replacement string starts with “http://” or “https://”, the processing stops and the redirect is returned to a client.
rewrite :: [Text] -> ConfStatement
rewrite vs = ConfStatementExpression (Expression "rewrite" vs)

-- | Safe version of 'rewrite'
rewrite_s :: [Text] -> Rewrite
rewrite_s vs = Rewrite$ ConfStatementExpression (Expression "rewrite" vs)
newtype Rewrite = Rewrite ConfStatement
instance ToConfStatement Rewrite where
    toConfStatement (Rewrite c) = c
instance HasContextServer
 Rewrite where
instance HasContextLocation
 Rewrite where
instance HasContextIf
 Rewrite where


-- | Enables or disables logging of ngx_http_rewrite_module module directives processing results into the  at the notice level.
rewrite_log :: [Text] -> ConfStatement
rewrite_log vs = ConfStatementExpression (Expression "rewrite_log" vs)

-- | Safe version of 'rewrite_log'
rewrite_log_s :: [Text] -> Rewrite_Log
rewrite_log_s vs = Rewrite_Log$ ConfStatementExpression (Expression "rewrite_log" vs)
newtype Rewrite_Log = Rewrite_Log ConfStatement
instance ToConfStatement Rewrite_Log where
    toConfStatement (Rewrite_Log c) = c
instance HasContextHttp
 Rewrite_Log where
instance HasContextServer
 Rewrite_Log where
instance HasContextLocation
 Rewrite_Log where
instance HasContextIf
 Rewrite_Log where


-- | Sets a value for the specified variable. The value can contain text, variables, and their combination.
set :: [Text] -> ConfStatement
set vs = ConfStatementExpression (Expression "set" vs)

-- | Safe version of 'set'
set_s :: [Text] -> Set
set_s vs = Set$ ConfStatementExpression (Expression "set" vs)
newtype Set = Set ConfStatement
instance ToConfStatement Set where
    toConfStatement (Set c) = c
instance HasContextServer
 Set where
instance HasContextLocation
 Set where
instance HasContextIf
 Set where


-- | Controls whether warnings about uninitialized variables are logged.
uninitialized_variable_warn :: [Text] -> ConfStatement
uninitialized_variable_warn vs = ConfStatementExpression (Expression "uninitialized_variable_warn" vs)

-- | Safe version of 'uninitialized_variable_warn'
uninitialized_variable_warn_s :: [Text] -> Uninitialized_Variable_Warn
uninitialized_variable_warn_s vs = Uninitialized_Variable_Warn$ ConfStatementExpression (Expression "uninitialized_variable_warn" vs)
newtype Uninitialized_Variable_Warn = Uninitialized_Variable_Warn ConfStatement
instance ToConfStatement Uninitialized_Variable_Warn where
    toConfStatement (Uninitialized_Variable_Warn c) = c
instance HasContextHttp
 Uninitialized_Variable_Warn where
instance HasContextServer
 Uninitialized_Variable_Warn where
instance HasContextLocation
 Uninitialized_Variable_Warn where
instance HasContextIf
 Uninitialized_Variable_Warn where

