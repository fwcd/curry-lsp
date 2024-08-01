-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensFullDelta where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON SemanticTokensFullDelta where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDelta <- lookupMaybeFromJSON "delta" vs
           return
            SemanticTokensFullDelta { semanticTokensFullDeltaDelta = parsedDelta }
      _ -> Left ("Unrecognized SemanticTokensFullDelta value: " ++ ppJSON j)

instance ToJSON SemanticTokensFullDelta where
  toJSON x = object [(.?=) "delta" (semanticTokensFullDeltaDelta x)]

data SemanticTokensFullDelta = SemanticTokensFullDelta { semanticTokensFullDeltaDelta :: Maybe Bool }
 deriving (Show,Eq)

