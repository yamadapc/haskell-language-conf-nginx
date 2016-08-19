{-# LANGUAGE OverloadedStrings #-}
import Data.Conf
import Nginx
import Nginx_Ngx_Http_Core_Module

main = print $ pPrint $
    [ server_s [] [ listen_s ["8080"]
                  ]
    ]
