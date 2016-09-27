module Handler.Dashboard where

import Import

getDashboardR :: Handler Html
getDashboardR = do 
    posts <- runDB $ selectList [] []
    defaultLayout $ do
        setTitle "Dashboard"
        $(widgetFile "dashboard")
