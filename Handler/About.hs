module Handler.About where

import Import

getAboutR :: Handler Html
getAboutR = do
    defaultLayout $ do
        setTitle "About STEM Humanities"
        $(widgetFile "about")
