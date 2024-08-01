-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.MarkupContent where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.MarkupKind
import LSP.Utils.JSON

instance FromJSON MarkupContent where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedValue <- lookupFromJSON "value" vs
           return
            MarkupContent { markupContentKind = parsedKind
                          , markupContentValue = parsedValue }
      _ -> Left ("Unrecognized MarkupContent value: " ++ ppJSON j)

data MarkupContent = MarkupContent { markupContentKind :: MarkupKind
                                   , markupContentValue :: String }
 deriving (Show,Eq)

