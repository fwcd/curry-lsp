-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentSymbolOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentSymbolOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupMaybeFromJSON "label" vs
           return
            DocumentSymbolOptions { documentSymbolOptionsLabel = parsedLabel }
      _ -> Left ("Unrecognized DocumentSymbolOptions value: " ++ ppJSON j)

data DocumentSymbolOptions = DocumentSymbolOptions { documentSymbolOptionsLabel :: Maybe String }
 deriving (Show,Eq)

