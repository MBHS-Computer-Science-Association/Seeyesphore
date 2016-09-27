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
    date <- liftIO $ getCurrentTime
    muid <- maybeAuthId
    title <- runInputPost $ ireq textField "title"
    content <- runInputPost $ ireq textField "content"
    
    case muid of
        Nothing -> do
            setMessage "You are not logged in!"
            redirect SubmitR
        Just uid -> do
            runDB $ insertEntity $ BlogPost (utctDay date) uid title content
            redirect SubmitR
