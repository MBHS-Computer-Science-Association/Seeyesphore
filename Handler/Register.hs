module Handler.Register where

import Import

getRegisterR :: Handler Html
getRegisterR = do
        defaultLayout $ do
        setTitle "New User Registration"
        $(widgetFile "register")


postRegisterR :: Handler Html 
postRegisterR = error "Not yet implemented: postRegisterR"

