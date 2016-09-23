module Handler.Submit where

import Import

import Yesod.Auth.HashDB

getSubmitR :: Handler Html
getSubmitR = do
    defaultLayout $ do
        setTitle "Blog Post Submission"
        $(widgetFile "submit")

postSubmitR :: Handler ()
postSubmitR = do
    -- Needs work!
    -- redirect SubmitR
    -- let engPost = EnglishPost "This is my title" "This is my post."
    --tempUser <- runInputPost $ User 
    --                <$> ireq textField "title"
    --                <*> iopt textField "content"

    --let realUser = User (userIdent tempUser) Nothing
    --userP <- setPassword (fromMaybe "" (userPassword tempUser)) realUser
    --_ <- runDB $ insertBy userP

    --_ <- runDB $ insertEntity tempUser 

    redirect SubmitR
