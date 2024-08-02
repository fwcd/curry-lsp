-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensPartialResult where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SemanticTokensPartialResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedData <- lookupFromJSON "data" vs
           return
            SemanticTokensPartialResult { semanticTokensPartialResultData = parsedData }
      _ ->
        Left ("Unrecognized SemanticTokensPartialResult value: " ++ ppJSON j)

instance ToJSON SemanticTokensPartialResult where
  toJSON x = object [(.=) "data" (semanticTokensPartialResultData x)]

instance Default SemanticTokensPartialResult where
  def = SemanticTokensPartialResult { semanticTokensPartialResultData = def }

data SemanticTokensPartialResult = SemanticTokensPartialResult { semanticTokensPartialResultData :: [Int] }
 deriving (Show,Eq)

