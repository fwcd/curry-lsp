-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentHighlight where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentHighlightKind
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON DocumentHighlight where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedKind <- lookupMaybeFromJSON "kind" vs
           return
            DocumentHighlight { documentHighlightRange = parsedRange
                              , documentHighlightKind = parsedKind }
      _ -> Left ("Unrecognized DocumentHighlight value: " ++ ppJSON j)

data DocumentHighlight = DocumentHighlight { documentHighlightRange :: Range
                                           , documentHighlightKind :: Maybe DocumentHighlightKind }
 deriving (Show,Eq)

