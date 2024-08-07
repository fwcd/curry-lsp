-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensLegend where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
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

instance ToJSON SemanticTokensLegend where
  toJSON x =
    object
     [(.=) "tokenTypes" (semanticTokensLegendTokenTypes x),  (.=)
                                                              "tokenModifiers"
                                                              (semanticTokensLegendTokenModifiers
                                                                x)]

instance Default SemanticTokensLegend where
  def =
    SemanticTokensLegend { semanticTokensLegendTokenTypes = def
                         , semanticTokensLegendTokenModifiers = def }

data SemanticTokensLegend = SemanticTokensLegend { semanticTokensLegendTokenTypes :: [String]
                                                 , semanticTokensLegendTokenModifiers :: [String] }
 deriving (Show,Eq)

