-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DiagnosticWorkspaceClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DiagnosticWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            DiagnosticWorkspaceClientCapabilities { diagnosticWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ ->
        Left
         ("Unrecognized DiagnosticWorkspaceClientCapabilities value: "
           ++ ppJSON j)

data DiagnosticWorkspaceClientCapabilities = DiagnosticWorkspaceClientCapabilities { diagnosticWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }
 deriving (Show,Eq)

