-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.SemanticTokensFullDelta
import LSP.Protocol.Types.SemanticTokensLegend
import LSP.Utils.JSON

instance FromJSON SemanticTokensOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLegend <- lookupFromJSON "legend" vs
           parsedRange <- lookupMaybeFromJSON "range" vs
           parsedFull <- lookupMaybeFromJSON "full" vs
           return
            SemanticTokensOptions { semanticTokensOptionsLegend = parsedLegend
                                  , semanticTokensOptionsRange = parsedRange
                                  , semanticTokensOptionsFull = parsedFull }
      _ -> Left ("Unrecognized SemanticTokensOptions value: " ++ ppJSON j)

data SemanticTokensOptions = SemanticTokensOptions { semanticTokensOptionsLegend :: SemanticTokensLegend
                                                   , semanticTokensOptionsRange :: Maybe (Either Bool ())
                                                   , semanticTokensOptionsFull :: Maybe (Either Bool SemanticTokensFullDelta) }
 deriving (Show,Eq)

