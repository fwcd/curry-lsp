-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Protocol.Types.SemanticTokensFullDelta
import LSP.Protocol.Types.SemanticTokensLegend
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SemanticTokensRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedLegend <- lookupFromJSON "legend" vs
           parsedRange <- lookupMaybeFromJSON "range" vs
           parsedFull <- lookupMaybeFromJSON "full" vs
           parsedId <- lookupMaybeFromJSON "id" vs
           return
            SemanticTokensRegistrationOptions { semanticTokensRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                              , semanticTokensRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                              , semanticTokensRegistrationOptionsLegend = parsedLegend
                                              , semanticTokensRegistrationOptionsRange = parsedRange
                                              , semanticTokensRegistrationOptionsFull = parsedFull
                                              , semanticTokensRegistrationOptionsId = parsedId }
      _ ->
        Left
         ("Unrecognized SemanticTokensRegistrationOptions value: "
           ++ ppJSON j)

instance ToJSON SemanticTokensRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (semanticTokensRegistrationOptionsDocumentSelector x),  (.?=)
                                                                "workDoneProgress"
                                                                (semanticTokensRegistrationOptionsWorkDoneProgress
                                                                  x),  (.=)
                                                                        "legend"
                                                                        (semanticTokensRegistrationOptionsLegend
                                                                          x),  (.?=)
                                                                                "range"
                                                                                (semanticTokensRegistrationOptionsRange
                                                                                  x),  (.?=)
                                                                                        "full"
                                                                                        (semanticTokensRegistrationOptionsFull
                                                                                          x),  (.?=)
                                                                                                "id"
                                                                                                (semanticTokensRegistrationOptionsId
                                                                                                  x)]

instance Default SemanticTokensRegistrationOptions where
  def =
    SemanticTokensRegistrationOptions { semanticTokensRegistrationOptionsDocumentSelector = def
                                      , semanticTokensRegistrationOptionsWorkDoneProgress = def
                                      , semanticTokensRegistrationOptionsLegend = def
                                      , semanticTokensRegistrationOptionsRange = def
                                      , semanticTokensRegistrationOptionsFull = def
                                      , semanticTokensRegistrationOptionsId = def }

data SemanticTokensRegistrationOptions = SemanticTokensRegistrationOptions { semanticTokensRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                           , semanticTokensRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                           , semanticTokensRegistrationOptionsLegend :: SemanticTokensLegend
                                                                           , semanticTokensRegistrationOptionsRange :: Maybe (Either Bool ())
                                                                           , semanticTokensRegistrationOptionsFull :: Maybe (Either Bool SemanticTokensFullDelta)
                                                                           , semanticTokensRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

