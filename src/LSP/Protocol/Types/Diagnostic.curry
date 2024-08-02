-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.Diagnostic where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.CodeDescription
import LSP.Protocol.Types.DiagnosticRelatedInformation
import LSP.Protocol.Types.DiagnosticSeverity
import LSP.Protocol.Types.DiagnosticTag
import LSP.Protocol.Types.Range
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON Diagnostic where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedSeverity <- lookupMaybeFromJSON "severity" vs
           parsedCode <- lookupMaybeFromJSON "code" vs
           parsedCodeDescription <- lookupMaybeFromJSON "codeDescription" vs
           parsedSource <- lookupMaybeFromJSON "source" vs
           parsedMessage <- lookupFromJSON "message" vs
           parsedTags <- lookupMaybeFromJSON "tags" vs
           parsedRelatedInformation <- lookupMaybeFromJSON
                                        "relatedInformation"
                                        vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            Diagnostic { diagnosticRange = parsedRange
                       , diagnosticSeverity = parsedSeverity
                       , diagnosticCode = parsedCode
                       , diagnosticCodeDescription = parsedCodeDescription
                       , diagnosticSource = parsedSource
                       , diagnosticMessage = parsedMessage
                       , diagnosticTags = parsedTags
                       , diagnosticRelatedInformation = parsedRelatedInformation
                       , diagnosticData = parsedData }
      _ -> Left ("Unrecognized Diagnostic value: " ++ ppJSON j)

instance ToJSON Diagnostic where
  toJSON x =
    object
     [(.=) "range" (diagnosticRange x),  (.?=) "severity"
                                          (diagnosticSeverity x),  (.?=)
                                                                    "code"
                                                                    (diagnosticCode
                                                                      x),  (.?=)
                                                                            "codeDescription"
                                                                            (diagnosticCodeDescription
                                                                              x),  (.?=)
                                                                                    "source"
                                                                                    (diagnosticSource
                                                                                      x),  (.=)
                                                                                            "message"
                                                                                            (diagnosticMessage
                                                                                              x),  (.?=)
                                                                                                    "tags"
                                                                                                    (diagnosticTags
                                                                                                      x),  (.?=)
                                                                                                            "relatedInformation"
                                                                                                            (diagnosticRelatedInformation
                                                                                                              x),  (.?=)
                                                                                                                    "data"
                                                                                                                    (diagnosticData
                                                                                                                      x)]

instance Default Diagnostic where
  def =
    Diagnostic { diagnosticRange = def
               , diagnosticSeverity = def
               , diagnosticCode = def
               , diagnosticCodeDescription = def
               , diagnosticSource = def
               , diagnosticMessage = def
               , diagnosticTags = def
               , diagnosticRelatedInformation = def
               , diagnosticData = def }

data Diagnostic = Diagnostic { diagnosticRange :: Range
                             , diagnosticSeverity :: Maybe DiagnosticSeverity
                             , diagnosticCode :: Maybe (Either Int String)
                             , diagnosticCodeDescription :: Maybe CodeDescription
                             , diagnosticSource :: Maybe String
                             , diagnosticMessage :: String
                             , diagnosticTags :: Maybe [DiagnosticTag]
                             , diagnosticRelatedInformation :: Maybe [DiagnosticRelatedInformation]
                             , diagnosticData :: Maybe LSPAny }
 deriving (Show,Eq)

