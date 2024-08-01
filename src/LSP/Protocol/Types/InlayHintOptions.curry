-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlayHintOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON InlayHintOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            InlayHintOptions { inlayHintOptionsResolveProvider = parsedResolveProvider }
      _ -> Left ("Unrecognized InlayHintOptions value: " ++ ppJSON j)

data InlayHintOptions = InlayHintOptions { inlayHintOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

