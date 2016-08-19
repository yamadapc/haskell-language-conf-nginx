# haskell-language-conf-nginx
Automatically generated, context-aware combinators for generation of `nginx`
files. Currently just an experiment. Given the `nginx.org` source-code, with the
use of an ugly script, we extract block and expression syntax definitions and
output them to modules.

Even though I don't feel good at all about this, it's pretty fun to see it
working. The `nginx` documentation currently is generating 11344LOC of
[**Haddock annotated**](http://www.yamadapc.com.br/haskell-language-conf-nginx/Nginx_Ngx_Http_Proxy_Module.html)
Haskell code.

Blocks and expressions are outputted as their respective generators. The `nginx`
documentation mentions `context` in which a directive may occur, so we can
assert at compile-time that directives are used on correct contexts.

For example, the following will currently compile:

```haskell
{-# LANGUAGE OverloadedStrings #-}
import Data.Conf
import Nginx
import Nginx_Ngx_Http_Core_Module

main = print $ pPrint $
    [ server_s [] [ listen_s [ "8080" ]
                  ]
    ]
```

Outputting the expected:
```
server {
  listen 8080;
}
```

While the following will fail to compile:
```haskell
{-# LANGUAGE OverloadedStrings #-}
import Data.Conf
import Nginx
import Nginx_Ngx_Http_Core_Module

main = print $ pPrint $
    [ server_s [] [ variables_hash_max_size_s []
                  ]
    ]
```

With:
```
No instance for (HasContextServer Variables_Hash_Max_Size)
  arising from a use of ‘server_s’
```
