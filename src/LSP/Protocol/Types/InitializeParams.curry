-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InitializeParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.ClientCapabilities
import LSP.Protocol.Types.ClientInfo
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TraceValue
import LSP.Protocol.Types.WorkspaceFolder
import LSP.Utils.JSON

instance FromJSON InitializeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedProcessId <- lookupFromJSON "processId" vs
           parsedClientInfo <- lookupMaybeFromJSON "clientInfo" vs
           parsedLocale <- lookupMaybeFromJSON "locale" vs
           parsedRootPath <- lookupMaybeFromJSON "rootPath" vs
           parsedRootUri <- lookupFromJSON "rootUri" vs
           parsedCapabilities <- lookupFromJSON "capabilities" vs
           parsedInitializationOptions <- lookupMaybeFromJSON
                                           "initializationOptions"
                                           vs
           parsedTrace <- lookupMaybeFromJSON "trace" vs
           parsedWorkspaceFolders <- lookupMaybeFromJSON "workspaceFolders" vs
           return
            InitializeParams { initializeParamsWorkDoneToken = parsedWorkDoneToken
                             , initializeParamsProcessId = parsedProcessId
                             , initializeParamsClientInfo = parsedClientInfo
                             , initializeParamsLocale = parsedLocale
                             , initializeParamsRootPath = parsedRootPath
                             , initializeParamsRootUri = parsedRootUri
                             , initializeParamsCapabilities = parsedCapabilities
                             , initializeParamsInitializationOptions = parsedInitializationOptions
                             , initializeParamsTrace = parsedTrace
                             , initializeParamsWorkspaceFolders = parsedWorkspaceFolders }
      _ -> Left ("Unrecognized InitializeParams value: " ++ ppJSON j)

data InitializeParams = InitializeParams { initializeParamsWorkDoneToken :: Maybe ProgressToken
                                         , initializeParamsProcessId :: Either Int ()
                                         , initializeParamsClientInfo :: Maybe ClientInfo
                                         , initializeParamsLocale :: Maybe String
                                         , initializeParamsRootPath :: Maybe (Either String ())
                                         , initializeParamsRootUri :: Either DocumentUri ()
                                         , initializeParamsCapabilities :: ClientCapabilities
                                         , initializeParamsInitializationOptions :: Maybe LSPAny
                                         , initializeParamsTrace :: Maybe TraceValue
                                         , initializeParamsWorkspaceFolders :: Maybe (Either [WorkspaceFolder] ()) }
 deriving (Show,Eq)

