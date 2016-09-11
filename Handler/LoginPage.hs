module Handler.LoginPage where

import Import

getLoginPageR :: Handler Html
getLoginPageR = do
    defaultLayout $ do
        setTitle "Humanities Login Page"
        $(widgetFile "login")
