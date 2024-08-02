-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.SemanticTokensFullDelta
import LSP.Protocol.Types.SemanticTokensLegend
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SemanticTokensOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedLegend <- lookupFromJSON "legend" vs
           parsedRange <- lookupMaybeFromJSON "range" vs
           parsedFull <- lookupMaybeFromJSON "full" vs
           return
            SemanticTokensOptions { semanticTokensOptionsWorkDoneProgress = parsedWorkDoneProgress
                                  , semanticTokensOptionsLegend = parsedLegend
                                  , semanticTokensOptionsRange = parsedRange
                                  , semanticTokensOptionsFull = parsedFull }
      _ -> Left ("Unrecognized SemanticTokensOptions value: " ++ ppJSON j)

instance ToJSON SemanticTokensOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress"
       (semanticTokensOptionsWorkDoneProgress x),  (.=) "legend"
                                                    (semanticTokensOptionsLegend
                                                      x),  (.?=) "range"
                                                            (semanticTokensOptionsRange
                                                              x),  (.?=)
                                                                    "full"
                                                                    (semanticTokensOptionsFull
                                                                      x)]

instance Default SemanticTokensOptions where
  def =
    SemanticTokensOptions { semanticTokensOptionsWorkDoneProgress = def
                          , semanticTokensOptionsLegend = def
                          , semanticTokensOptionsRange = def
                          , semanticTokensOptionsFull = def }

data SemanticTokensOptions = SemanticTokensOptions { semanticTokensOptionsWorkDoneProgress :: Maybe Bool
                                                   , semanticTokensOptionsLegend :: SemanticTokensLegend
                                                   , semanticTokensOptionsRange :: Maybe (Either Bool ())
                                                   , semanticTokensOptionsFull :: Maybe (Either Bool SemanticTokensFullDelta) }
 deriving (Show,Eq)

