module Handler.Register where

import Import

postRegisterR :: Handler Html
postRegisterR = do
        defaultLayout $ do
        setTitle "Humanities Login Page"
        $(widgetFile "register")


getRegisterR :: Handler Html 
getRegisterR = error "Not yet implemented: postRegisterR"

