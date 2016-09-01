module Foundation where

import Yesod

data Seeyesphore = Seeyesphore 
instance Yesod Seeyesphore

mkYesodData "Seeyesphore" $(parseRoutesFile "config/routes")
