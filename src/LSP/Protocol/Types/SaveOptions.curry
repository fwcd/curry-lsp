-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SaveOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON SaveOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIncludeText <- lookupMaybeFromJSON "includeText" vs
           return SaveOptions { saveOptionsIncludeText = parsedIncludeText }
      _ -> Left ("Unrecognized SaveOptions value: " ++ ppJSON j)

data SaveOptions = SaveOptions { saveOptionsIncludeText :: Maybe Bool }
 deriving (Show,Eq)

