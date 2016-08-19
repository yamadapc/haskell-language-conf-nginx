-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Mail_Ssl_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Enables the SSL/TLS protocol for the given server.
ssl :: [Text] -> ConfStatement
ssl vs = ConfStatementExpression (Expression "ssl" vs)

-- | Safe version of 'ssl'
ssl_s :: [Text] -> Ssl
ssl_s vs = Ssl$ ConfStatementExpression (Expression "ssl" vs)
newtype Ssl = Ssl ConfStatement
instance ToConfStatement Ssl where
    toConfStatement (Ssl c) = c
instance HasContextMail
 Ssl where
instance HasContextServer
 Ssl where


-- | Specifies a file with the certificate in the PEM format for the given server. If intermediate certificates should be specified in addition to a primary certificate, they should be specified in the same file in the following order: the primary certificate comes first, then the intermediate certificates. A secret key in the PEM format may be placed in the same file.
ssl_certificate :: [Text] -> ConfStatement
ssl_certificate vs = ConfStatementExpression (Expression "ssl_certificate" vs)

-- | Safe version of 'ssl_certificate'
ssl_certificate_s :: [Text] -> Ssl_Certificate
ssl_certificate_s vs = Ssl_Certificate$ ConfStatementExpression (Expression "ssl_certificate" vs)
newtype Ssl_Certificate = Ssl_Certificate ConfStatement
instance ToConfStatement Ssl_Certificate where
    toConfStatement (Ssl_Certificate c) = c
instance HasContextMail
 Ssl_Certificate where
instance HasContextServer
 Ssl_Certificate where


-- | Specifies a file with the secret key in the PEM format for the given server.
ssl_certificate_key :: [Text] -> ConfStatement
ssl_certificate_key vs = ConfStatementExpression (Expression "ssl_certificate_key" vs)

-- | Safe version of 'ssl_certificate_key'
ssl_certificate_key_s :: [Text] -> Ssl_Certificate_Key
ssl_certificate_key_s vs = Ssl_Certificate_Key$ ConfStatementExpression (Expression "ssl_certificate_key" vs)
newtype Ssl_Certificate_Key = Ssl_Certificate_Key ConfStatement
instance ToConfStatement Ssl_Certificate_Key where
    toConfStatement (Ssl_Certificate_Key c) = c
instance HasContextMail
 Ssl_Certificate_Key where
instance HasContextServer
 Ssl_Certificate_Key where


-- | Specifies the enabled ciphers. The ciphers are specified in the format understood by the OpenSSL library, for example: ssl_ciphers ALL:!aNULL:!EXPORT56:RC4+RSA:+HIGH:+MEDIUM:+LOW:+SSLv2:+EXP;
ssl_ciphers :: [Text] -> ConfStatement
ssl_ciphers vs = ConfStatementExpression (Expression "ssl_ciphers" vs)

-- | Safe version of 'ssl_ciphers'
ssl_ciphers_s :: [Text] -> Ssl_Ciphers
ssl_ciphers_s vs = Ssl_Ciphers$ ConfStatementExpression (Expression "ssl_ciphers" vs)
newtype Ssl_Ciphers = Ssl_Ciphers ConfStatement
instance ToConfStatement Ssl_Ciphers where
    toConfStatement (Ssl_Ciphers c) = c
instance HasContextMail
 Ssl_Ciphers where
instance HasContextServer
 Ssl_Ciphers where


-- | Specifies a file with trusted CA certificates in the PEM format used to verify client certificates.
ssl_client_certificate :: [Text] -> ConfStatement
ssl_client_certificate vs = ConfStatementExpression (Expression "ssl_client_certificate" vs)

-- | Safe version of 'ssl_client_certificate'
ssl_client_certificate_s :: [Text] -> Ssl_Client_Certificate
ssl_client_certificate_s vs = Ssl_Client_Certificate$ ConfStatementExpression (Expression "ssl_client_certificate" vs)
newtype Ssl_Client_Certificate = Ssl_Client_Certificate ConfStatement
instance ToConfStatement Ssl_Client_Certificate where
    toConfStatement (Ssl_Client_Certificate c) = c
instance HasContextMail
 Ssl_Client_Certificate where
instance HasContextServer
 Ssl_Client_Certificate where


-- | Specifies a file with revoked certificates (CRL) in the PEM format used to verify client certificates.
ssl_crl :: [Text] -> ConfStatement
ssl_crl vs = ConfStatementExpression (Expression "ssl_crl" vs)

-- | Safe version of 'ssl_crl'
ssl_crl_s :: [Text] -> Ssl_Crl
ssl_crl_s vs = Ssl_Crl$ ConfStatementExpression (Expression "ssl_crl" vs)
newtype Ssl_Crl = Ssl_Crl ConfStatement
instance ToConfStatement Ssl_Crl where
    toConfStatement (Ssl_Crl c) = c
instance HasContextMail
 Ssl_Crl where
instance HasContextServer
 Ssl_Crl where


-- | Specifies a file with DH parameters for DHE ciphers.
ssl_dhparam :: [Text] -> ConfStatement
ssl_dhparam vs = ConfStatementExpression (Expression "ssl_dhparam" vs)

-- | Safe version of 'ssl_dhparam'
ssl_dhparam_s :: [Text] -> Ssl_Dhparam
ssl_dhparam_s vs = Ssl_Dhparam$ ConfStatementExpression (Expression "ssl_dhparam" vs)
newtype Ssl_Dhparam = Ssl_Dhparam ConfStatement
instance ToConfStatement Ssl_Dhparam where
    toConfStatement (Ssl_Dhparam c) = c
instance HasContextMail
 Ssl_Dhparam where
instance HasContextServer
 Ssl_Dhparam where


-- | Specifies a curve for ECDHE ciphers.
ssl_ecdh_curve :: [Text] -> ConfStatement
ssl_ecdh_curve vs = ConfStatementExpression (Expression "ssl_ecdh_curve" vs)

-- | Safe version of 'ssl_ecdh_curve'
ssl_ecdh_curve_s :: [Text] -> Ssl_Ecdh_Curve
ssl_ecdh_curve_s vs = Ssl_Ecdh_Curve$ ConfStatementExpression (Expression "ssl_ecdh_curve" vs)
newtype Ssl_Ecdh_Curve = Ssl_Ecdh_Curve ConfStatement
instance ToConfStatement Ssl_Ecdh_Curve where
    toConfStatement (Ssl_Ecdh_Curve c) = c
instance HasContextMail
 Ssl_Ecdh_Curve where
instance HasContextServer
 Ssl_Ecdh_Curve where


-- | Specifies a file with passphrases for secret keys where each passphrase is specified on a separate line. Passphrases are tried in turn when loading the key.
ssl_password_file :: [Text] -> ConfStatement
ssl_password_file vs = ConfStatementExpression (Expression "ssl_password_file" vs)

-- | Safe version of 'ssl_password_file'
ssl_password_file_s :: [Text] -> Ssl_Password_File
ssl_password_file_s vs = Ssl_Password_File$ ConfStatementExpression (Expression "ssl_password_file" vs)
newtype Ssl_Password_File = Ssl_Password_File ConfStatement
instance ToConfStatement Ssl_Password_File where
    toConfStatement (Ssl_Password_File c) = c
instance HasContextMail
 Ssl_Password_File where
instance HasContextServer
 Ssl_Password_File where


-- | Specifies that server ciphers should be preferred over client ciphers when the SSLv3 and TLS protocols are used.
ssl_prefer_server_ciphers :: [Text] -> ConfStatement
ssl_prefer_server_ciphers vs = ConfStatementExpression (Expression "ssl_prefer_server_ciphers" vs)

-- | Safe version of 'ssl_prefer_server_ciphers'
ssl_prefer_server_ciphers_s :: [Text] -> Ssl_Prefer_Server_Ciphers
ssl_prefer_server_ciphers_s vs = Ssl_Prefer_Server_Ciphers$ ConfStatementExpression (Expression "ssl_prefer_server_ciphers" vs)
newtype Ssl_Prefer_Server_Ciphers = Ssl_Prefer_Server_Ciphers ConfStatement
instance ToConfStatement Ssl_Prefer_Server_Ciphers where
    toConfStatement (Ssl_Prefer_Server_Ciphers c) = c
instance HasContextMail
 Ssl_Prefer_Server_Ciphers where
instance HasContextServer
 Ssl_Prefer_Server_Ciphers where


-- | Enables the specified protocols. The TLSv1.1 and TLSv1.2 parameters work only when the OpenSSL library of version 1.0.1 or higher is used. The TLSv1.1 and TLSv1.2 parameters are supported starting from versions 1.1.13 and 1.0.12 so when the OpenSSL version 1.0.1 or higher is used on older nginx versions, these protocols work, but cannot be disabled.
ssl_protocols :: [Text] -> ConfStatement
ssl_protocols vs = ConfStatementExpression (Expression "ssl_protocols" vs)

-- | Safe version of 'ssl_protocols'
ssl_protocols_s :: [Text] -> Ssl_Protocols
ssl_protocols_s vs = Ssl_Protocols$ ConfStatementExpression (Expression "ssl_protocols" vs)
newtype Ssl_Protocols = Ssl_Protocols ConfStatement
instance ToConfStatement Ssl_Protocols where
    toConfStatement (Ssl_Protocols c) = c
instance HasContextMail
 Ssl_Protocols where
instance HasContextServer
 Ssl_Protocols where


-- | Sets the types and sizes of caches that store session parameters. A cache can be of any of the following types: off the use of a session cache is strictly prohibited: nginx explicitly tells a client that sessions may not be reused. none the use of a session cache is gently disallowed: nginx tells a client that sessions may be reused, but does not actually store session parameters in the cache. builtin a cache built in OpenSSL; used by one worker process only. The cache size is specified in sessions. If size is not given, it is equal to 20480 sessions. Use of the built-in cache can cause memory fragmentation. shared a cache shared between all worker processes. The cache size is specified in bytes; one megabyte can store about 4000 sessions. Each shared cache should have an arbitrary name. A cache with the same name can be used in several servers.
ssl_session_cache :: [Text] -> ConfStatement
ssl_session_cache vs = ConfStatementExpression (Expression "ssl_session_cache" vs)

-- | Safe version of 'ssl_session_cache'
ssl_session_cache_s :: [Text] -> Ssl_Session_Cache
ssl_session_cache_s vs = Ssl_Session_Cache$ ConfStatementExpression (Expression "ssl_session_cache" vs)
newtype Ssl_Session_Cache = Ssl_Session_Cache ConfStatement
instance ToConfStatement Ssl_Session_Cache where
    toConfStatement (Ssl_Session_Cache c) = c
instance HasContextMail
 Ssl_Session_Cache where
instance HasContextServer
 Ssl_Session_Cache where


-- | Sets a file with the secret key used to encrypt and decrypt TLS session tickets. The directive is necessary if the same key has to be shared between multiple servers. By default, a randomly generated key is used.
ssl_session_ticket_key :: [Text] -> ConfStatement
ssl_session_ticket_key vs = ConfStatementExpression (Expression "ssl_session_ticket_key" vs)

-- | Safe version of 'ssl_session_ticket_key'
ssl_session_ticket_key_s :: [Text] -> Ssl_Session_Ticket_Key
ssl_session_ticket_key_s vs = Ssl_Session_Ticket_Key$ ConfStatementExpression (Expression "ssl_session_ticket_key" vs)
newtype Ssl_Session_Ticket_Key = Ssl_Session_Ticket_Key ConfStatement
instance ToConfStatement Ssl_Session_Ticket_Key where
    toConfStatement (Ssl_Session_Ticket_Key c) = c
instance HasContextMail
 Ssl_Session_Ticket_Key where
instance HasContextServer
 Ssl_Session_Ticket_Key where


-- | Enables or disables session resumption through TLS session tickets.
ssl_session_tickets :: [Text] -> ConfStatement
ssl_session_tickets vs = ConfStatementExpression (Expression "ssl_session_tickets" vs)

-- | Safe version of 'ssl_session_tickets'
ssl_session_tickets_s :: [Text] -> Ssl_Session_Tickets
ssl_session_tickets_s vs = Ssl_Session_Tickets$ ConfStatementExpression (Expression "ssl_session_tickets" vs)
newtype Ssl_Session_Tickets = Ssl_Session_Tickets ConfStatement
instance ToConfStatement Ssl_Session_Tickets where
    toConfStatement (Ssl_Session_Tickets c) = c
instance HasContextMail
 Ssl_Session_Tickets where
instance HasContextServer
 Ssl_Session_Tickets where


-- | Specifies a time during which a client may reuse the session parameters stored in a cache.
ssl_session_timeout :: [Text] -> ConfStatement
ssl_session_timeout vs = ConfStatementExpression (Expression "ssl_session_timeout" vs)

-- | Safe version of 'ssl_session_timeout'
ssl_session_timeout_s :: [Text] -> Ssl_Session_Timeout
ssl_session_timeout_s vs = Ssl_Session_Timeout$ ConfStatementExpression (Expression "ssl_session_timeout" vs)
newtype Ssl_Session_Timeout = Ssl_Session_Timeout ConfStatement
instance ToConfStatement Ssl_Session_Timeout where
    toConfStatement (Ssl_Session_Timeout c) = c
instance HasContextMail
 Ssl_Session_Timeout where
instance HasContextServer
 Ssl_Session_Timeout where


-- | Specifies a file with trusted CA certificates in the PEM format used to verify client certificates.
ssl_trusted_certificate :: [Text] -> ConfStatement
ssl_trusted_certificate vs = ConfStatementExpression (Expression "ssl_trusted_certificate" vs)

-- | Safe version of 'ssl_trusted_certificate'
ssl_trusted_certificate_s :: [Text] -> Ssl_Trusted_Certificate
ssl_trusted_certificate_s vs = Ssl_Trusted_Certificate$ ConfStatementExpression (Expression "ssl_trusted_certificate" vs)
newtype Ssl_Trusted_Certificate = Ssl_Trusted_Certificate ConfStatement
instance ToConfStatement Ssl_Trusted_Certificate where
    toConfStatement (Ssl_Trusted_Certificate c) = c
instance HasContextMail
 Ssl_Trusted_Certificate where
instance HasContextServer
 Ssl_Trusted_Certificate where


-- | Enables verification of client certificates. The verification result is passed in the Auth-SSL-Verify header of the authentication request.
ssl_verify_client :: [Text] -> ConfStatement
ssl_verify_client vs = ConfStatementExpression (Expression "ssl_verify_client" vs)

-- | Safe version of 'ssl_verify_client'
ssl_verify_client_s :: [Text] -> Ssl_Verify_Client
ssl_verify_client_s vs = Ssl_Verify_Client$ ConfStatementExpression (Expression "ssl_verify_client" vs)
newtype Ssl_Verify_Client = Ssl_Verify_Client ConfStatement
instance ToConfStatement Ssl_Verify_Client where
    toConfStatement (Ssl_Verify_Client c) = c
instance HasContextMail
 Ssl_Verify_Client where
instance HasContextServer
 Ssl_Verify_Client where


-- | Sets the verification depth in the client certificates chain.
ssl_verify_depth :: [Text] -> ConfStatement
ssl_verify_depth vs = ConfStatementExpression (Expression "ssl_verify_depth" vs)

-- | Safe version of 'ssl_verify_depth'
ssl_verify_depth_s :: [Text] -> Ssl_Verify_Depth
ssl_verify_depth_s vs = Ssl_Verify_Depth$ ConfStatementExpression (Expression "ssl_verify_depth" vs)
newtype Ssl_Verify_Depth = Ssl_Verify_Depth ConfStatement
instance ToConfStatement Ssl_Verify_Depth where
    toConfStatement (Ssl_Verify_Depth c) = c
instance HasContextMail
 Ssl_Verify_Depth where
instance HasContextServer
 Ssl_Verify_Depth where


-- | on allow usage of the STLS command for the POP3 and the STARTTLS command for the IMAP; off deny usage of the STLS and STARTTLS commands; only require preliminary TLS transition.
starttls :: [Text] -> ConfStatement
starttls vs = ConfStatementExpression (Expression "starttls" vs)

-- | Safe version of 'starttls'
starttls_s :: [Text] -> Starttls
starttls_s vs = Starttls$ ConfStatementExpression (Expression "starttls" vs)
newtype Starttls = Starttls ConfStatement
instance ToConfStatement Starttls where
    toConfStatement (Starttls c) = c
instance HasContextMail
 Starttls where
instance HasContextServer
 Starttls where

