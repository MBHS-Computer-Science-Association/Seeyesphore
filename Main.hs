{-# LANGUAGE TypeFamilies, QuasiQuotes, MultiParamTypeClasses, TemplateHaskell, OverloadedStrings #-}
import Yesod

data Seeyesphore = Seeyesphore

mkYesod "Seeyesphore" [parseRoutes|
    /      HomeR  GET
    /about AboutR GET
|]

instance Yesod Seeyesphore

getHomeR = defaultLayout [whamlet|
    <h1>
        MISD STEM-Humanities Program
    <p>
        There is no content here so far. Please see our
        <a href=@{AboutR}>about
        page
|]

getAboutR = defaultLayout [whamlet|
    <h1>
        About Page
    <p>
        There is no content here so far either.
|]

main :: IO()
main = warp 3000 Seeyesphore
