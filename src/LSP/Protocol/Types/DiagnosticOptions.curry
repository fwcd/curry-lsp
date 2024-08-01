-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DiagnosticOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DiagnosticOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedIdentifier <- lookupMaybeFromJSON "identifier" vs
           parsedInterFileDependencies <- lookupFromJSON
                                           "interFileDependencies"
                                           vs
           parsedWorkspaceDiagnostics <- lookupFromJSON "workspaceDiagnostics"
                                          vs
           return
            DiagnosticOptions { diagnosticOptionsWorkDoneProgress = parsedWorkDoneProgress
                              , diagnosticOptionsIdentifier = parsedIdentifier
                              , diagnosticOptionsInterFileDependencies = parsedInterFileDependencies
                              , diagnosticOptionsWorkspaceDiagnostics = parsedWorkspaceDiagnostics }
      _ -> Left ("Unrecognized DiagnosticOptions value: " ++ ppJSON j)

data DiagnosticOptions = DiagnosticOptions { diagnosticOptionsWorkDoneProgress :: Maybe Bool
                                           , diagnosticOptionsIdentifier :: Maybe String
                                           , diagnosticOptionsInterFileDependencies :: Bool
                                           , diagnosticOptionsWorkspaceDiagnostics :: Bool }
 deriving (Show,Eq)

