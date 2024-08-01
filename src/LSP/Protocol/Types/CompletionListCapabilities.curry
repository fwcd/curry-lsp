-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionListCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON CompletionListCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItemDefaults <- lookupMaybeFromJSON "itemDefaults" vs
           return
            CompletionListCapabilities { completionListCapabilitiesItemDefaults = parsedItemDefaults }
      _ ->
        Left ("Unrecognized CompletionListCapabilities value: " ++ ppJSON j)

data CompletionListCapabilities = CompletionListCapabilities { completionListCapabilitiesItemDefaults :: Maybe [String] }
 deriving (Show,Eq)

