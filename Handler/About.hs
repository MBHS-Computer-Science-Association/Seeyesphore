{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}

module Handler.About where

import Data.Default
import Yesod
import Yesod.Default.Util

import Foundation

getAboutR :: Handler Html
getAboutR = do
    defaultLayout $ do
        setTitle "About Page"
        $(widgetFileNoReload def "about")
