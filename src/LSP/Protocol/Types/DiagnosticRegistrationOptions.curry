-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DiagnosticRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DiagnosticRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedIdentifier <- lookupMaybeFromJSON "identifier" vs
           parsedInterFileDependencies <- lookupFromJSON
                                           "interFileDependencies"
                                           vs
           parsedWorkspaceDiagnostics <- lookupFromJSON "workspaceDiagnostics"
                                          vs
           parsedId <- lookupMaybeFromJSON "id" vs
           return
            DiagnosticRegistrationOptions { diagnosticRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                          , diagnosticRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                          , diagnosticRegistrationOptionsIdentifier = parsedIdentifier
                                          , diagnosticRegistrationOptionsInterFileDependencies = parsedInterFileDependencies
                                          , diagnosticRegistrationOptionsWorkspaceDiagnostics = parsedWorkspaceDiagnostics
                                          , diagnosticRegistrationOptionsId = parsedId }
      _ ->
        Left
         ("Unrecognized DiagnosticRegistrationOptions value: " ++ ppJSON j)

instance ToJSON DiagnosticRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (diagnosticRegistrationOptionsDocumentSelector x),  (.?=)
                                                            "workDoneProgress"
                                                            (diagnosticRegistrationOptionsWorkDoneProgress
                                                              x),  (.?=)
                                                                    "identifier"
                                                                    (diagnosticRegistrationOptionsIdentifier
                                                                      x),  (.=)
                                                                            "interFileDependencies"
                                                                            (diagnosticRegistrationOptionsInterFileDependencies
                                                                              x),  (.=)
                                                                                    "workspaceDiagnostics"
                                                                                    (diagnosticRegistrationOptionsWorkspaceDiagnostics
                                                                                      x),  (.?=)
                                                                                            "id"
                                                                                            (diagnosticRegistrationOptionsId
                                                                                              x)]

instance Default DiagnosticRegistrationOptions where
  def =
    DiagnosticRegistrationOptions { diagnosticRegistrationOptionsDocumentSelector = def
                                  , diagnosticRegistrationOptionsWorkDoneProgress = def
                                  , diagnosticRegistrationOptionsIdentifier = def
                                  , diagnosticRegistrationOptionsInterFileDependencies = def
                                  , diagnosticRegistrationOptionsWorkspaceDiagnostics = def
                                  , diagnosticRegistrationOptionsId = def }

data DiagnosticRegistrationOptions = DiagnosticRegistrationOptions { diagnosticRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                   , diagnosticRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                   , diagnosticRegistrationOptionsIdentifier :: Maybe String
                                                                   , diagnosticRegistrationOptionsInterFileDependencies :: Bool
                                                                   , diagnosticRegistrationOptionsWorkspaceDiagnostics :: Bool
                                                                   , diagnosticRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

