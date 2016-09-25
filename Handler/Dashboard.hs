module Handler.Dashboard where

import Import

getDashboardR :: Handler Html
getDashboardR = do 
    defaultLayout $ do
        setTitle "About STEM Humanities"
        $(widgetFile "dashboard")

