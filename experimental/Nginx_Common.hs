-- Generated at 2016-08-19 20:05:12.856044 UTC
module Nginx_Common where
import Data.Conf

class ToConfStatement f where
    toConfStatement :: f -> ConfStatement

-- | Top-level statements
class HasContextMain f where
-- Class for directives allowed under 'upstream_s'
class HasContextUpstream a where
-- Class for directives allowed under 'match_s'
class HasContextMatch a where
-- Class for directives allowed under 'split_clients_s'
class HasContextSplit_Clients a where
-- Class for directives allowed under 'if_s'
class HasContextIf a where
-- Class for directives allowed under 'map_s'
class HasContextMap a where
-- Class for directives allowed under 'geo_s'
class HasContextGeo a where
-- Class for directives allowed under 'http_s'
class HasContextHttp a where
-- Class for directives allowed under 'limit_except_s'
class HasContextLimit_Except a where
-- Class for directives allowed under 'location_s'
class HasContextLocation a where
-- Class for directives allowed under 'server_s'
class HasContextServer a where
-- Class for directives allowed under 'types_s'
class HasContextTypes a where
-- Class for directives allowed under 'charset_map_s'
class HasContextCharset_Map a where
-- Class for directives allowed under 'mail_s'
class HasContextMail a where
-- Class for directives allowed under 'events_s'
class HasContextEvents a where
-- Class for directives allowed under 'stream_s'
class HasContextStream a where
