{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-} 
{-# LANGUAGE TypeFamilies #-}

module Handler.Home where

import Data.Default
import Yesod
import Yesod.Default.Util

import Foundation

getHomeR :: Handler Html
getHomeR = do
    defaultLayout $ do
        setTitle "STEM-Humanities Program"
        $(widgetFileNoReload def "home")
