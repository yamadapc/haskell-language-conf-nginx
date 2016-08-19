-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Stream_Proxy_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Makes outgoing connections to a proxied server originate from the specified local IP address. Parameter value can contain variables (1.11.2). The special value off cancels the effect of the proxy_bind directive inherited from the previous configuration level, which allows the system to auto-assign the local IP address.
proxy_bind :: [Text] -> ConfStatement
proxy_bind vs = ConfStatementExpression (Expression "proxy_bind" vs)

-- | Safe version of 'proxy_bind'
proxy_bind_s :: [Text] -> Proxy_Bind
proxy_bind_s vs = Proxy_Bind$ ConfStatementExpression (Expression "proxy_bind" vs)
newtype Proxy_Bind = Proxy_Bind ConfStatement
instance ToConfStatement Proxy_Bind where
    toConfStatement (Proxy_Bind c) = c
instance HasContextStream
 Proxy_Bind where
instance HasContextServer
 Proxy_Bind where


-- | Sets the size of the buffer used for reading data from the proxied server. Also sets the size of the buffer used for reading data from the client.
proxy_buffer_size :: [Text] -> ConfStatement
proxy_buffer_size vs = ConfStatementExpression (Expression "proxy_buffer_size" vs)

-- | Safe version of 'proxy_buffer_size'
proxy_buffer_size_s :: [Text] -> Proxy_Buffer_Size
proxy_buffer_size_s vs = Proxy_Buffer_Size$ ConfStatementExpression (Expression "proxy_buffer_size" vs)
newtype Proxy_Buffer_Size = Proxy_Buffer_Size ConfStatement
instance ToConfStatement Proxy_Buffer_Size where
    toConfStatement (Proxy_Buffer_Size c) = c
instance HasContextStream
 Proxy_Buffer_Size where
instance HasContextServer
 Proxy_Buffer_Size where


-- | Defines a timeout for establishing a connection with a proxied server.
proxy_connect_timeout :: [Text] -> ConfStatement
proxy_connect_timeout vs = ConfStatementExpression (Expression "proxy_connect_timeout" vs)

-- | Safe version of 'proxy_connect_timeout'
proxy_connect_timeout_s :: [Text] -> Proxy_Connect_Timeout
proxy_connect_timeout_s vs = Proxy_Connect_Timeout$ ConfStatementExpression (Expression "proxy_connect_timeout" vs)
newtype Proxy_Connect_Timeout = Proxy_Connect_Timeout ConfStatement
instance ToConfStatement Proxy_Connect_Timeout where
    toConfStatement (Proxy_Connect_Timeout c) = c
instance HasContextStream
 Proxy_Connect_Timeout where
instance HasContextServer
 Proxy_Connect_Timeout where


-- | Limits the speed of reading the data from the proxied server. The rate is specified in bytes per second. The zero value disables rate limiting. The limit is set per a connection, so if nginx simultaneously opens two connections to the proxied server, the overall rate will be twice as much as the specified limit.
proxy_download_rate :: [Text] -> ConfStatement
proxy_download_rate vs = ConfStatementExpression (Expression "proxy_download_rate" vs)

-- | Safe version of 'proxy_download_rate'
proxy_download_rate_s :: [Text] -> Proxy_Download_Rate
proxy_download_rate_s vs = Proxy_Download_Rate$ ConfStatementExpression (Expression "proxy_download_rate" vs)
newtype Proxy_Download_Rate = Proxy_Download_Rate ConfStatement
instance ToConfStatement Proxy_Download_Rate where
    toConfStatement (Proxy_Download_Rate c) = c
instance HasContextStream
 Proxy_Download_Rate where
instance HasContextServer
 Proxy_Download_Rate where


-- | When a connection to the proxied server cannot be established, determines whether a client connection will be passed to the next server.
proxy_next_upstream :: [Text] -> ConfStatement
proxy_next_upstream vs = ConfStatementExpression (Expression "proxy_next_upstream" vs)

-- | Safe version of 'proxy_next_upstream'
proxy_next_upstream_s :: [Text] -> Proxy_Next_Upstream
proxy_next_upstream_s vs = Proxy_Next_Upstream$ ConfStatementExpression (Expression "proxy_next_upstream" vs)
newtype Proxy_Next_Upstream = Proxy_Next_Upstream ConfStatement
instance ToConfStatement Proxy_Next_Upstream where
    toConfStatement (Proxy_Next_Upstream c) = c
instance HasContextStream
 Proxy_Next_Upstream where
instance HasContextServer
 Proxy_Next_Upstream where


-- | Limits the time allowed to pass a connection to the next server. The 0 value turns off this limitation.
proxy_next_upstream_timeout :: [Text] -> ConfStatement
proxy_next_upstream_timeout vs = ConfStatementExpression (Expression "proxy_next_upstream_timeout" vs)

-- | Safe version of 'proxy_next_upstream_timeout'
proxy_next_upstream_timeout_s :: [Text] -> Proxy_Next_Upstream_Timeout
proxy_next_upstream_timeout_s vs = Proxy_Next_Upstream_Timeout$ ConfStatementExpression (Expression "proxy_next_upstream_timeout" vs)
newtype Proxy_Next_Upstream_Timeout = Proxy_Next_Upstream_Timeout ConfStatement
instance ToConfStatement Proxy_Next_Upstream_Timeout where
    toConfStatement (Proxy_Next_Upstream_Timeout c) = c
instance HasContextStream
 Proxy_Next_Upstream_Timeout where
instance HasContextServer
 Proxy_Next_Upstream_Timeout where


-- | Limits the number of possible tries for passing a connection to the next server. The 0 value turns off this limitation.
proxy_next_upstream_tries :: [Text] -> ConfStatement
proxy_next_upstream_tries vs = ConfStatementExpression (Expression "proxy_next_upstream_tries" vs)

-- | Safe version of 'proxy_next_upstream_tries'
proxy_next_upstream_tries_s :: [Text] -> Proxy_Next_Upstream_Tries
proxy_next_upstream_tries_s vs = Proxy_Next_Upstream_Tries$ ConfStatementExpression (Expression "proxy_next_upstream_tries" vs)
newtype Proxy_Next_Upstream_Tries = Proxy_Next_Upstream_Tries ConfStatement
instance ToConfStatement Proxy_Next_Upstream_Tries where
    toConfStatement (Proxy_Next_Upstream_Tries c) = c
instance HasContextStream
 Proxy_Next_Upstream_Tries where
instance HasContextServer
 Proxy_Next_Upstream_Tries where


-- | Sets the address of a proxied server. The address can be specified as a domain name or IP address, and a port: proxy_pass localhost:12345; or as a UNIX-domain socket path: proxy_pass unix:/tmp/stream.socket;
proxy_pass :: [Text] -> ConfStatement
proxy_pass vs = ConfStatementExpression (Expression "proxy_pass" vs)

-- | Safe version of 'proxy_pass'
proxy_pass_s :: [Text] -> Proxy_Pass
proxy_pass_s vs = Proxy_Pass$ ConfStatementExpression (Expression "proxy_pass" vs)
newtype Proxy_Pass = Proxy_Pass ConfStatement
instance ToConfStatement Proxy_Pass where
    toConfStatement (Proxy_Pass c) = c
instance HasContextServer
 Proxy_Pass where


-- | Enables the PROXY protocol for connections to a proxied server.
proxy_protocol :: [Text] -> ConfStatement
proxy_protocol vs = ConfStatementExpression (Expression "proxy_protocol" vs)

-- | Safe version of 'proxy_protocol'
proxy_protocol_s :: [Text] -> Proxy_Protocol
proxy_protocol_s vs = Proxy_Protocol$ ConfStatementExpression (Expression "proxy_protocol" vs)
newtype Proxy_Protocol = Proxy_Protocol ConfStatement
instance ToConfStatement Proxy_Protocol where
    toConfStatement (Proxy_Protocol c) = c
instance HasContextStream
 Proxy_Protocol where
instance HasContextServer
 Proxy_Protocol where


-- | Sets the number of datagrams expected from the proxied server in response to the client request if the UDP protocol is used. By default, the number of datagrams is not limited: the response datagrams will be sent until the  value expires.
proxy_responses :: [Text] -> ConfStatement
proxy_responses vs = ConfStatementExpression (Expression "proxy_responses" vs)

-- | Safe version of 'proxy_responses'
proxy_responses_s :: [Text] -> Proxy_Responses
proxy_responses_s vs = Proxy_Responses$ ConfStatementExpression (Expression "proxy_responses" vs)
newtype Proxy_Responses = Proxy_Responses ConfStatement
instance ToConfStatement Proxy_Responses where
    toConfStatement (Proxy_Responses c) = c
instance HasContextStream
 Proxy_Responses where
instance HasContextServer
 Proxy_Responses where


-- | Enables the SSL/TLS protocol for connections to a proxied server.
proxy_ssl :: [Text] -> ConfStatement
proxy_ssl vs = ConfStatementExpression (Expression "proxy_ssl" vs)

-- | Safe version of 'proxy_ssl'
proxy_ssl_s :: [Text] -> Proxy_Ssl
proxy_ssl_s vs = Proxy_Ssl$ ConfStatementExpression (Expression "proxy_ssl" vs)
newtype Proxy_Ssl = Proxy_Ssl ConfStatement
instance ToConfStatement Proxy_Ssl where
    toConfStatement (Proxy_Ssl c) = c
instance HasContextStream
 Proxy_Ssl where
instance HasContextServer
 Proxy_Ssl where


-- | Specifies a file with the certificate in the PEM format used for authentication to a proxied server.
proxy_ssl_certificate :: [Text] -> ConfStatement
proxy_ssl_certificate vs = ConfStatementExpression (Expression "proxy_ssl_certificate" vs)

-- | Safe version of 'proxy_ssl_certificate'
proxy_ssl_certificate_s :: [Text] -> Proxy_Ssl_Certificate
proxy_ssl_certificate_s vs = Proxy_Ssl_Certificate$ ConfStatementExpression (Expression "proxy_ssl_certificate" vs)
newtype Proxy_Ssl_Certificate = Proxy_Ssl_Certificate ConfStatement
instance ToConfStatement Proxy_Ssl_Certificate where
    toConfStatement (Proxy_Ssl_Certificate c) = c
instance HasContextStream
 Proxy_Ssl_Certificate where
instance HasContextServer
 Proxy_Ssl_Certificate where


-- | Specifies a file with the secret key in the PEM format used for authentication to a proxied server.
proxy_ssl_certificate_key :: [Text] -> ConfStatement
proxy_ssl_certificate_key vs = ConfStatementExpression (Expression "proxy_ssl_certificate_key" vs)

-- | Safe version of 'proxy_ssl_certificate_key'
proxy_ssl_certificate_key_s :: [Text] -> Proxy_Ssl_Certificate_Key
proxy_ssl_certificate_key_s vs = Proxy_Ssl_Certificate_Key$ ConfStatementExpression (Expression "proxy_ssl_certificate_key" vs)
newtype Proxy_Ssl_Certificate_Key = Proxy_Ssl_Certificate_Key ConfStatement
instance ToConfStatement Proxy_Ssl_Certificate_Key where
    toConfStatement (Proxy_Ssl_Certificate_Key c) = c
instance HasContextStream
 Proxy_Ssl_Certificate_Key where
instance HasContextServer
 Proxy_Ssl_Certificate_Key where


-- | Specifies the enabled ciphers for connections to a proxied server. The ciphers are specified in the format understood by the OpenSSL library.
proxy_ssl_ciphers :: [Text] -> ConfStatement
proxy_ssl_ciphers vs = ConfStatementExpression (Expression "proxy_ssl_ciphers" vs)

-- | Safe version of 'proxy_ssl_ciphers'
proxy_ssl_ciphers_s :: [Text] -> Proxy_Ssl_Ciphers
proxy_ssl_ciphers_s vs = Proxy_Ssl_Ciphers$ ConfStatementExpression (Expression "proxy_ssl_ciphers" vs)
newtype Proxy_Ssl_Ciphers = Proxy_Ssl_Ciphers ConfStatement
instance ToConfStatement Proxy_Ssl_Ciphers where
    toConfStatement (Proxy_Ssl_Ciphers c) = c
instance HasContextStream
 Proxy_Ssl_Ciphers where
instance HasContextServer
 Proxy_Ssl_Ciphers where


-- | Specifies a file with revoked certificates (CRL) in the PEM format used to verify the certificate of the proxied server.
proxy_ssl_crl :: [Text] -> ConfStatement
proxy_ssl_crl vs = ConfStatementExpression (Expression "proxy_ssl_crl" vs)

-- | Safe version of 'proxy_ssl_crl'
proxy_ssl_crl_s :: [Text] -> Proxy_Ssl_Crl
proxy_ssl_crl_s vs = Proxy_Ssl_Crl$ ConfStatementExpression (Expression "proxy_ssl_crl" vs)
newtype Proxy_Ssl_Crl = Proxy_Ssl_Crl ConfStatement
instance ToConfStatement Proxy_Ssl_Crl where
    toConfStatement (Proxy_Ssl_Crl c) = c
instance HasContextStream
 Proxy_Ssl_Crl where
instance HasContextServer
 Proxy_Ssl_Crl where


-- | Allows overriding the server name used to verify the certificate of the proxied server and to be passed through SNI when establishing a connection with the proxied server. The server name can also be specified using variables (1.11.3).
proxy_ssl_name :: [Text] -> ConfStatement
proxy_ssl_name vs = ConfStatementExpression (Expression "proxy_ssl_name" vs)

-- | Safe version of 'proxy_ssl_name'
proxy_ssl_name_s :: [Text] -> Proxy_Ssl_Name
proxy_ssl_name_s vs = Proxy_Ssl_Name$ ConfStatementExpression (Expression "proxy_ssl_name" vs)
newtype Proxy_Ssl_Name = Proxy_Ssl_Name ConfStatement
instance ToConfStatement Proxy_Ssl_Name where
    toConfStatement (Proxy_Ssl_Name c) = c
instance HasContextStream
 Proxy_Ssl_Name where
instance HasContextServer
 Proxy_Ssl_Name where


-- | Specifies a file with passphrases for secret keys where each passphrase is specified on a separate line. Passphrases are tried in turn when loading the key.
proxy_ssl_password_file :: [Text] -> ConfStatement
proxy_ssl_password_file vs = ConfStatementExpression (Expression "proxy_ssl_password_file" vs)

-- | Safe version of 'proxy_ssl_password_file'
proxy_ssl_password_file_s :: [Text] -> Proxy_Ssl_Password_File
proxy_ssl_password_file_s vs = Proxy_Ssl_Password_File$ ConfStatementExpression (Expression "proxy_ssl_password_file" vs)
newtype Proxy_Ssl_Password_File = Proxy_Ssl_Password_File ConfStatement
instance ToConfStatement Proxy_Ssl_Password_File where
    toConfStatement (Proxy_Ssl_Password_File c) = c
instance HasContextStream
 Proxy_Ssl_Password_File where
instance HasContextServer
 Proxy_Ssl_Password_File where


-- | Enables or disables passing of the server name through TLS Server Name Indication extension (SNI, RFC 6066) when establishing a connection with the proxied server.
proxy_ssl_server_name :: [Text] -> ConfStatement
proxy_ssl_server_name vs = ConfStatementExpression (Expression "proxy_ssl_server_name" vs)

-- | Safe version of 'proxy_ssl_server_name'
proxy_ssl_server_name_s :: [Text] -> Proxy_Ssl_Server_Name
proxy_ssl_server_name_s vs = Proxy_Ssl_Server_Name$ ConfStatementExpression (Expression "proxy_ssl_server_name" vs)
newtype Proxy_Ssl_Server_Name = Proxy_Ssl_Server_Name ConfStatement
instance ToConfStatement Proxy_Ssl_Server_Name where
    toConfStatement (Proxy_Ssl_Server_Name c) = c
instance HasContextStream
 Proxy_Ssl_Server_Name where
instance HasContextServer
 Proxy_Ssl_Server_Name where


-- | Determines whether SSL sessions can be reused when working with the proxied server. If the errors “SSL3_GET_FINISHED:digest check failed” appear in the logs, try disabling session reuse.
proxy_ssl_session_reuse :: [Text] -> ConfStatement
proxy_ssl_session_reuse vs = ConfStatementExpression (Expression "proxy_ssl_session_reuse" vs)

-- | Safe version of 'proxy_ssl_session_reuse'
proxy_ssl_session_reuse_s :: [Text] -> Proxy_Ssl_Session_Reuse
proxy_ssl_session_reuse_s vs = Proxy_Ssl_Session_Reuse$ ConfStatementExpression (Expression "proxy_ssl_session_reuse" vs)
newtype Proxy_Ssl_Session_Reuse = Proxy_Ssl_Session_Reuse ConfStatement
instance ToConfStatement Proxy_Ssl_Session_Reuse where
    toConfStatement (Proxy_Ssl_Session_Reuse c) = c
instance HasContextStream
 Proxy_Ssl_Session_Reuse where
instance HasContextServer
 Proxy_Ssl_Session_Reuse where


-- | Enables the specified protocols for connections to a proxied server.
proxy_ssl_protocols :: [Text] -> ConfStatement
proxy_ssl_protocols vs = ConfStatementExpression (Expression "proxy_ssl_protocols" vs)

-- | Safe version of 'proxy_ssl_protocols'
proxy_ssl_protocols_s :: [Text] -> Proxy_Ssl_Protocols
proxy_ssl_protocols_s vs = Proxy_Ssl_Protocols$ ConfStatementExpression (Expression "proxy_ssl_protocols" vs)
newtype Proxy_Ssl_Protocols = Proxy_Ssl_Protocols ConfStatement
instance ToConfStatement Proxy_Ssl_Protocols where
    toConfStatement (Proxy_Ssl_Protocols c) = c
instance HasContextStream
 Proxy_Ssl_Protocols where
instance HasContextServer
 Proxy_Ssl_Protocols where


-- | Specifies a file with trusted CA certificates in the PEM format used to verify the certificate of the proxied server.
proxy_ssl_trusted_certificate :: [Text] -> ConfStatement
proxy_ssl_trusted_certificate vs = ConfStatementExpression (Expression "proxy_ssl_trusted_certificate" vs)

-- | Safe version of 'proxy_ssl_trusted_certificate'
proxy_ssl_trusted_certificate_s :: [Text] -> Proxy_Ssl_Trusted_Certificate
proxy_ssl_trusted_certificate_s vs = Proxy_Ssl_Trusted_Certificate$ ConfStatementExpression (Expression "proxy_ssl_trusted_certificate" vs)
newtype Proxy_Ssl_Trusted_Certificate = Proxy_Ssl_Trusted_Certificate ConfStatement
instance ToConfStatement Proxy_Ssl_Trusted_Certificate where
    toConfStatement (Proxy_Ssl_Trusted_Certificate c) = c
instance HasContextStream
 Proxy_Ssl_Trusted_Certificate where
instance HasContextServer
 Proxy_Ssl_Trusted_Certificate where


-- | Enables or disables verification of the proxied server certificate.
proxy_ssl_verify :: [Text] -> ConfStatement
proxy_ssl_verify vs = ConfStatementExpression (Expression "proxy_ssl_verify" vs)

-- | Safe version of 'proxy_ssl_verify'
proxy_ssl_verify_s :: [Text] -> Proxy_Ssl_Verify
proxy_ssl_verify_s vs = Proxy_Ssl_Verify$ ConfStatementExpression (Expression "proxy_ssl_verify" vs)
newtype Proxy_Ssl_Verify = Proxy_Ssl_Verify ConfStatement
instance ToConfStatement Proxy_Ssl_Verify where
    toConfStatement (Proxy_Ssl_Verify c) = c
instance HasContextStream
 Proxy_Ssl_Verify where
instance HasContextServer
 Proxy_Ssl_Verify where


-- | Sets the verification depth in the proxied server certificates chain.
proxy_ssl_verify_depth :: [Text] -> ConfStatement
proxy_ssl_verify_depth vs = ConfStatementExpression (Expression "proxy_ssl_verify_depth" vs)

-- | Safe version of 'proxy_ssl_verify_depth'
proxy_ssl_verify_depth_s :: [Text] -> Proxy_Ssl_Verify_Depth
proxy_ssl_verify_depth_s vs = Proxy_Ssl_Verify_Depth$ ConfStatementExpression (Expression "proxy_ssl_verify_depth" vs)
newtype Proxy_Ssl_Verify_Depth = Proxy_Ssl_Verify_Depth ConfStatement
instance ToConfStatement Proxy_Ssl_Verify_Depth where
    toConfStatement (Proxy_Ssl_Verify_Depth c) = c
instance HasContextStream
 Proxy_Ssl_Verify_Depth where
instance HasContextServer
 Proxy_Ssl_Verify_Depth where


-- | Sets the timeout between two successive read or write operations on client or proxied server connections. If no data is transmitted within this time, the connection is closed.
proxy_timeout :: [Text] -> ConfStatement
proxy_timeout vs = ConfStatementExpression (Expression "proxy_timeout" vs)

-- | Safe version of 'proxy_timeout'
proxy_timeout_s :: [Text] -> Proxy_Timeout
proxy_timeout_s vs = Proxy_Timeout$ ConfStatementExpression (Expression "proxy_timeout" vs)
newtype Proxy_Timeout = Proxy_Timeout ConfStatement
instance ToConfStatement Proxy_Timeout where
    toConfStatement (Proxy_Timeout c) = c
instance HasContextStream
 Proxy_Timeout where
instance HasContextServer
 Proxy_Timeout where


-- | Limits the speed of reading the data from the client. The rate is specified in bytes per second. The zero value disables rate limiting. The limit is set per a connection, so if the client simultaneously opens two connections, the overall rate will be twice as much as the specified limit.
proxy_upload_rate :: [Text] -> ConfStatement
proxy_upload_rate vs = ConfStatementExpression (Expression "proxy_upload_rate" vs)

-- | Safe version of 'proxy_upload_rate'
proxy_upload_rate_s :: [Text] -> Proxy_Upload_Rate
proxy_upload_rate_s vs = Proxy_Upload_Rate$ ConfStatementExpression (Expression "proxy_upload_rate" vs)
newtype Proxy_Upload_Rate = Proxy_Upload_Rate ConfStatement
instance ToConfStatement Proxy_Upload_Rate where
    toConfStatement (Proxy_Upload_Rate c) = c
instance HasContextStream
 Proxy_Upload_Rate where
instance HasContextServer
 Proxy_Upload_Rate where

