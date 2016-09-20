module Handler.Blog where

import Import

getBlogR :: Handler Html
getBlogR = do
    defaultLayout $ do
        setTitle "Main Blog"
        $(widgetFile "blog")
