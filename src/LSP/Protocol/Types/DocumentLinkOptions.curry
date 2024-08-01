-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentLinkOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentLinkOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            DocumentLinkOptions { documentLinkOptionsResolveProvider = parsedResolveProvider }
      _ -> Left ("Unrecognized DocumentLinkOptions value: " ++ ppJSON j)

data DocumentLinkOptions = DocumentLinkOptions { documentLinkOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

