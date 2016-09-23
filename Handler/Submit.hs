module Handler.Submit where

import Import

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
    -- engPost <- runInputPost $ EnglishPost
    --                <$> ireq textField "title"
    --                <*> ireq textField "content"
    -- _ <- runDB $ insertEntity engPost
    redirect SubmitR
