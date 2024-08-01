-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensLegend where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON SemanticTokensLegend where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTokenTypes <- lookupFromJSON "tokenTypes" vs
           parsedTokenModifiers <- lookupFromJSON "tokenModifiers" vs
           return
            SemanticTokensLegend { semanticTokensLegendTokenTypes = parsedTokenTypes
                                 , semanticTokensLegendTokenModifiers = parsedTokenModifiers }
      _ -> Left ("Unrecognized SemanticTokensLegend value: " ++ ppJSON j)

data SemanticTokensLegend = SemanticTokensLegend { semanticTokensLegendTokenTypes :: [String]
                                                 , semanticTokensLegendTokenModifiers :: [String] }
 deriving (Show,Eq)

