-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientSemanticTokensRequestOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientSemanticTokensRequestFullDelta
import LSP.Utils.JSON

instance FromJSON ClientSemanticTokensRequestOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupMaybeFromJSON "range" vs
           parsedFull <- lookupMaybeFromJSON "full" vs
           return
            ClientSemanticTokensRequestOptions { clientSemanticTokensRequestOptionsRange = parsedRange
                                               , clientSemanticTokensRequestOptionsFull = parsedFull }
      _ ->
        Left
         ("Unrecognized ClientSemanticTokensRequestOptions value: "
           ++ ppJSON j)

data ClientSemanticTokensRequestOptions = ClientSemanticTokensRequestOptions { clientSemanticTokensRequestOptionsRange :: Maybe (Either Bool ())
                                                                             , clientSemanticTokensRequestOptionsFull :: Maybe (Either Bool ClientSemanticTokensRequestFullDelta) }
 deriving (Show,Eq)
