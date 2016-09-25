module Handler.Register where

import Import
import Yesod.Auth.HashDB

getRegisterR :: Handler Html
getRegisterR = do
        defaultLayout $ do
        setTitle "New User Registration"
        $(widgetFile "register")

postRegisterR :: Handler Html
postRegisterR = do 
    email <- runInputPost $ ireq textField "email"
    password <- runInputPost $ ireq textField "password"
    let user = User email Nothing
    userP <- setPassword password user
    _ <- runDB $ insertBy $ userP
    setMessage "User created."
    redirect RegisterR
