module Handler.Blog where

import Import

getBlogR :: Handler Html
getBlogR = do
    posts <- runDB $ selectList [] []
    defaultLayout $ do
        setTitle "Main Blog"
        $(widgetFile "blog")
