-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceDiagnosticParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.PreviousResultId
import LSP.Protocol.Types.ProgressToken
import LSP.Utils.JSON

instance FromJSON WorkspaceDiagnosticParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedIdentifier <- lookupMaybeFromJSON "identifier" vs
           parsedPreviousResultIds <- lookupFromJSON "previousResultIds" vs
           return
            WorkspaceDiagnosticParams { workspaceDiagnosticParamsWorkDoneToken = parsedWorkDoneToken
                                      , workspaceDiagnosticParamsPartialResultToken = parsedPartialResultToken
                                      , workspaceDiagnosticParamsIdentifier = parsedIdentifier
                                      , workspaceDiagnosticParamsPreviousResultIds = parsedPreviousResultIds }
      _ -> Left ("Unrecognized WorkspaceDiagnosticParams value: " ++ ppJSON j)

data WorkspaceDiagnosticParams = WorkspaceDiagnosticParams { workspaceDiagnosticParamsWorkDoneToken :: Maybe ProgressToken
                                                           , workspaceDiagnosticParamsPartialResultToken :: Maybe ProgressToken
                                                           , workspaceDiagnosticParamsIdentifier :: Maybe String
                                                           , workspaceDiagnosticParamsPreviousResultIds :: [PreviousResultId] }
 deriving (Show,Eq)

