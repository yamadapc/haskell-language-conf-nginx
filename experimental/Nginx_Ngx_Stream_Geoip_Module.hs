-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Stream_Geoip_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Specifies a database used to determine the country depending on the client IP address. The following variables are available when using this database: $geoip_country_code two-letter country code, for example, “RU”, “US”. $geoip_country_code3 three-letter country code, for example, “RUS”, “USA”. $geoip_country_name country name, for example, “Russian Federation”, “United States”.
geoip_country :: [Text] -> ConfStatement
geoip_country vs = ConfStatementExpression (Expression "geoip_country" vs)

-- | Safe version of 'geoip_country'
geoip_country_s :: [Text] -> Geoip_Country
geoip_country_s vs = Geoip_Country$ ConfStatementExpression (Expression "geoip_country" vs)
newtype Geoip_Country = Geoip_Country ConfStatement
instance ToConfStatement Geoip_Country where
    toConfStatement (Geoip_Country c) = c
instance HasContextStream
 Geoip_Country where


-- | Specifies a database used to determine the country, region, and city depending on the client IP address. The following variables are available when using this database: $geoip_area_code telephone area code (US only). This variable may contain outdated information since the corresponding database field is deprecated. $geoip_city_continent_code two-letter continent code, for example, “EU”, “NA”. $geoip_city_country_code two-letter country code, for example, “RU”, “US”. $geoip_city_country_code3 three-letter country code, for example, “RUS”, “USA”. $geoip_city_country_name country name, for example, “Russian Federation”, “United States”. $geoip_dma_code DMA region code in US (also known as “metro code”), according to the geotargeting in Google AdWords API. $geoip_latitude latitude. $geoip_longitude longitude. $geoip_region two-symbol country region code (region, territory, state, province, federal land and the like), for example, “48”, “DC”. $geoip_region_name country region name (region, territory, state, province, federal land and the like), for example, “Moscow City”, “District of Columbia”. $geoip_city city name, for example, “Moscow”, “Washington”. $geoip_postal_code postal code.
geoip_city :: [Text] -> ConfStatement
geoip_city vs = ConfStatementExpression (Expression "geoip_city" vs)

-- | Safe version of 'geoip_city'
geoip_city_s :: [Text] -> Geoip_City
geoip_city_s vs = Geoip_City$ ConfStatementExpression (Expression "geoip_city" vs)
newtype Geoip_City = Geoip_City ConfStatement
instance ToConfStatement Geoip_City where
    toConfStatement (Geoip_City c) = c
instance HasContextStream
 Geoip_City where


-- | Specifies a database used to determine the organization depending on the client IP address. The following variable is available when using this database: $geoip_org organization name, for example, “The University of Melbourne”.
geoip_org :: [Text] -> ConfStatement
geoip_org vs = ConfStatementExpression (Expression "geoip_org" vs)

-- | Safe version of 'geoip_org'
geoip_org_s :: [Text] -> Geoip_Org
geoip_org_s vs = Geoip_Org$ ConfStatementExpression (Expression "geoip_org" vs)
newtype Geoip_Org = Geoip_Org ConfStatement
instance ToConfStatement Geoip_Org where
    toConfStatement (Geoip_Org c) = c
instance HasContextStream
 Geoip_Org where

