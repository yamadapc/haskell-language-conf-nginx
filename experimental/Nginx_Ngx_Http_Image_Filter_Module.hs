-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Ngx_Http_Image_Filter_Module where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | Sets the type of transformation to perform on images: off turns off module processing in a surrounding location. test ensures that responses are images in either JPEG, GIF, or PNG format. Otherwise, the error is returned. size outputs information about images in a JSON format, e.g.: { "img" : { "width": 100, "height": 100, "type": "gif" } } In case of an error, the output is as follows: {} rotate 90|180|270 rotates images counter-clockwise by the specified number of degrees. Parameter value can contain variables. This mode can be used either alone or along with the resize and crop transformations. resize width height proportionally reduces an image to the specified sizes. To reduce by only one dimension, another dimension can be specified as “-”. In case of an error, the server will return code . Parameter values can contain variables. When used along with the rotate parameter, the rotation happens after reduction. crop width height proportionally reduces an image to the larger side size and crops extraneous edges by another side. To reduce by only one dimension, another dimension can be specified as “-”. In case of an error, the server will return code . Parameter values can contain variables. When used along with the rotate parameter, the rotation happens before reduction.
image_filter :: [Text] -> ConfStatement
image_filter vs = ConfStatementExpression (Expression "image_filter" vs)

-- | Safe version of 'image_filter'
image_filter_s :: [Text] -> Image_Filter
image_filter_s vs = Image_Filter$ ConfStatementExpression (Expression "image_filter" vs)
newtype Image_Filter = Image_Filter ConfStatement
instance ToConfStatement Image_Filter where
    toConfStatement (Image_Filter c) = c
instance HasContextLocation
 Image_Filter where


-- | Sets the maximum size of the buffer used for reading images. When the size is exceeded the server returns error .
image_filter_buffer :: [Text] -> ConfStatement
image_filter_buffer vs = ConfStatementExpression (Expression "image_filter_buffer" vs)

-- | Safe version of 'image_filter_buffer'
image_filter_buffer_s :: [Text] -> Image_Filter_Buffer
image_filter_buffer_s vs = Image_Filter_Buffer$ ConfStatementExpression (Expression "image_filter_buffer" vs)
newtype Image_Filter_Buffer = Image_Filter_Buffer ConfStatement
instance ToConfStatement Image_Filter_Buffer where
    toConfStatement (Image_Filter_Buffer c) = c
instance HasContextHttp
 Image_Filter_Buffer where
instance HasContextServer
 Image_Filter_Buffer where
instance HasContextLocation
 Image_Filter_Buffer where


-- | If enabled, final images will be interlaced. For JPEG, final images will be in “progressive JPEG” format.
image_filter_interlace :: [Text] -> ConfStatement
image_filter_interlace vs = ConfStatementExpression (Expression "image_filter_interlace" vs)

-- | Safe version of 'image_filter_interlace'
image_filter_interlace_s :: [Text] -> Image_Filter_Interlace
image_filter_interlace_s vs = Image_Filter_Interlace$ ConfStatementExpression (Expression "image_filter_interlace" vs)
newtype Image_Filter_Interlace = Image_Filter_Interlace ConfStatement
instance ToConfStatement Image_Filter_Interlace where
    toConfStatement (Image_Filter_Interlace c) = c
instance HasContextHttp
 Image_Filter_Interlace where
instance HasContextServer
 Image_Filter_Interlace where
instance HasContextLocation
 Image_Filter_Interlace where


-- | Sets the desired quality of the transformed JPEG images. Acceptable values are in the range from 1 to 100. Lesser values usually imply both lower image quality and less data to transfer. The maximum recommended value is 95. Parameter value can contain variables.
image_filter_jpeg_quality :: [Text] -> ConfStatement
image_filter_jpeg_quality vs = ConfStatementExpression (Expression "image_filter_jpeg_quality" vs)

-- | Safe version of 'image_filter_jpeg_quality'
image_filter_jpeg_quality_s :: [Text] -> Image_Filter_Jpeg_Quality
image_filter_jpeg_quality_s vs = Image_Filter_Jpeg_Quality$ ConfStatementExpression (Expression "image_filter_jpeg_quality" vs)
newtype Image_Filter_Jpeg_Quality = Image_Filter_Jpeg_Quality ConfStatement
instance ToConfStatement Image_Filter_Jpeg_Quality where
    toConfStatement (Image_Filter_Jpeg_Quality c) = c
instance HasContextHttp
 Image_Filter_Jpeg_Quality where
instance HasContextServer
 Image_Filter_Jpeg_Quality where
instance HasContextLocation
 Image_Filter_Jpeg_Quality where


-- | Increases sharpness of the final image. The sharpness percentage can exceed 100. The zero value disables sharpening. Parameter value can contain variables.
image_filter_sharpen :: [Text] -> ConfStatement
image_filter_sharpen vs = ConfStatementExpression (Expression "image_filter_sharpen" vs)

-- | Safe version of 'image_filter_sharpen'
image_filter_sharpen_s :: [Text] -> Image_Filter_Sharpen
image_filter_sharpen_s vs = Image_Filter_Sharpen$ ConfStatementExpression (Expression "image_filter_sharpen" vs)
newtype Image_Filter_Sharpen = Image_Filter_Sharpen ConfStatement
instance ToConfStatement Image_Filter_Sharpen where
    toConfStatement (Image_Filter_Sharpen c) = c
instance HasContextHttp
 Image_Filter_Sharpen where
instance HasContextServer
 Image_Filter_Sharpen where
instance HasContextLocation
 Image_Filter_Sharpen where


-- | Defines whether transparency should be preserved when transforming GIF images or PNG images with colors specified by a palette. The loss of transparency results in images of a better quality. The alpha channel transparency in PNG is always preserved.
image_filter_transparency :: [Text] -> ConfStatement
image_filter_transparency vs = ConfStatementExpression (Expression "image_filter_transparency" vs)

-- | Safe version of 'image_filter_transparency'
image_filter_transparency_s :: [Text] -> Image_Filter_Transparency
image_filter_transparency_s vs = Image_Filter_Transparency$ ConfStatementExpression (Expression "image_filter_transparency" vs)
newtype Image_Filter_Transparency = Image_Filter_Transparency ConfStatement
instance ToConfStatement Image_Filter_Transparency where
    toConfStatement (Image_Filter_Transparency c) = c
instance HasContextHttp
 Image_Filter_Transparency where
instance HasContextServer
 Image_Filter_Transparency where
instance HasContextLocation
 Image_Filter_Transparency where

