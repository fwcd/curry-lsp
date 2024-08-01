-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientSemanticTokensRequestFullDelta where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ClientSemanticTokensRequestFullDelta where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDelta <- lookupMaybeFromJSON "delta" vs
           return
            ClientSemanticTokensRequestFullDelta { clientSemanticTokensRequestFullDeltaDelta = parsedDelta }
      _ ->
        Left
         ("Unrecognized ClientSemanticTokensRequestFullDelta value: "
           ++ ppJSON j)

data ClientSemanticTokensRequestFullDelta = ClientSemanticTokensRequestFullDelta { clientSemanticTokensRequestFullDeltaDelta :: Maybe Bool }
 deriving (Show,Eq)

