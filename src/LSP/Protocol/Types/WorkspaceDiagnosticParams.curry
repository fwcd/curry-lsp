-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceDiagnosticParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.PreviousResultId
import LSP.Utils.JSON

instance FromJSON WorkspaceDiagnosticParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIdentifier <- lookupMaybeFromJSON "identifier" vs
           parsedPreviousResultIds <- lookupFromJSON "previousResultIds" vs
           return
            WorkspaceDiagnosticParams { workspaceDiagnosticParamsIdentifier = parsedIdentifier
                                      , workspaceDiagnosticParamsPreviousResultIds = parsedPreviousResultIds }
      _ -> Left ("Unrecognized WorkspaceDiagnosticParams value: " ++ ppJSON j)

data WorkspaceDiagnosticParams = WorkspaceDiagnosticParams { workspaceDiagnosticParamsIdentifier :: Maybe String
                                                           , workspaceDiagnosticParamsPreviousResultIds :: [PreviousResultId] }
 deriving (Show,Eq)

