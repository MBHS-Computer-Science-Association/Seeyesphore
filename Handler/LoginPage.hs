module Handler.LoginPage where

import Import

getLoginPageR :: Handler Html
getLoginPageR = do
    defaultLayout $ do
        setTitle "Humanities Login Page"
        $(widgetFile "login")

postLoginPageR :: Handler ()
postLoginPageR = error "not yet implemented!"
    -- Needs work!
    -- redirect SubmitR
    -- let engPost = EnglishPost "This is my title" "This is my post."
--     myUser <- runInputPost $ User
--             <$> ireq textField "username"
--             <*> ireq textField "password"
--     maybeUser <- getBy myUser
--     case maybeUser of
--	Nothing -> error "hgei"
--	Just (Entity myUserId user) -> error "hei"
