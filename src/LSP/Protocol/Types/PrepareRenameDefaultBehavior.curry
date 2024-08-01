-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.PrepareRenameDefaultBehavior where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON PrepareRenameDefaultBehavior where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDefaultBehavior <- lookupFromJSON "defaultBehavior" vs
           return
            PrepareRenameDefaultBehavior { prepareRenameDefaultBehaviorDefaultBehavior = parsedDefaultBehavior }
      _ ->
        Left ("Unrecognized PrepareRenameDefaultBehavior value: " ++ ppJSON j)

instance ToJSON PrepareRenameDefaultBehavior where
  toJSON x =
    object
     [(.=) "defaultBehavior" (prepareRenameDefaultBehaviorDefaultBehavior x)]

data PrepareRenameDefaultBehavior = PrepareRenameDefaultBehavior { prepareRenameDefaultBehaviorDefaultBehavior :: Bool }
 deriving (Show,Eq)

