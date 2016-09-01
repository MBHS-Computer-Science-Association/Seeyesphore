{-# LANGUAGE TypeFamilies, QuasiQuotes, MultiParamTypeClasses, TemplateHaskell, OverloadedStrings #-}
module Main where
import Yesod
import Dispatch ()
import Foundation

main :: IO()
main = warp 3000 Seeyesphore
