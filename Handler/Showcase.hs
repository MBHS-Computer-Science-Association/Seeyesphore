module Handler.Showcase where

import Import

getShowcaseR :: Handler Html
getShowcaseR = do
    defaultLayout $ do
        setTitle "STEM-Humanities Showcase"
        $(widgetFile "showcase")
