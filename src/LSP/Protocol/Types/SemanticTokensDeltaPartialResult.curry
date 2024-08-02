-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensDeltaPartialResult where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.SemanticTokensEdit
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SemanticTokensDeltaPartialResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedEdits <- lookupFromJSON "edits" vs
           return
            SemanticTokensDeltaPartialResult { semanticTokensDeltaPartialResultEdits = parsedEdits }
      _ ->
        Left
         ("Unrecognized SemanticTokensDeltaPartialResult value: " ++ ppJSON j)

instance ToJSON SemanticTokensDeltaPartialResult where
  toJSON x = object [(.=) "edits" (semanticTokensDeltaPartialResultEdits x)]

instance Default SemanticTokensDeltaPartialResult where
  def =
    SemanticTokensDeltaPartialResult { semanticTokensDeltaPartialResultEdits = def }

data SemanticTokensDeltaPartialResult = SemanticTokensDeltaPartialResult { semanticTokensDeltaPartialResultEdits :: [SemanticTokensEdit] }
 deriving (Show,Eq)

