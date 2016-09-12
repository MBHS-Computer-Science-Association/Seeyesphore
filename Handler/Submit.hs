module Handler.Submit where

import Import

getSubmitR :: Handler Html
getSubmitR = do
    defaultLayout $ do
        setTitle "Blog Post Submission"
        $(widgetFile "submit")
