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
import LSP.Utils.Default
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

instance ToJSON InitializeParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (initializeParamsWorkDoneToken x),  (.=)
                                                                 "processId"
                                                                 (initializeParamsProcessId
                                                                   x),  (.?=)
                                                                         "clientInfo"
                                                                         (initializeParamsClientInfo
                                                                           x),  (.?=)
                                                                                 "locale"
                                                                                 (initializeParamsLocale
                                                                                   x),  (.?=)
                                                                                         "rootPath"
                                                                                         (initializeParamsRootPath
                                                                                           x),  (.=)
                                                                                                 "rootUri"
                                                                                                 (initializeParamsRootUri
                                                                                                   x),  (.=)
                                                                                                         "capabilities"
                                                                                                         (initializeParamsCapabilities
                                                                                                           x),  (.?=)
                                                                                                                 "initializationOptions"
                                                                                                                 (initializeParamsInitializationOptions
                                                                                                                   x),  (.?=)
                                                                                                                         "trace"
                                                                                                                         (initializeParamsTrace
                                                                                                                           x),  (.?=)
                                                                                                                                 "workspaceFolders"
                                                                                                                                 (initializeParamsWorkspaceFolders
                                                                                                                                   x)]

instance Default InitializeParams where
  def =
    InitializeParams { initializeParamsWorkDoneToken = def
                     , initializeParamsProcessId = def
                     , initializeParamsClientInfo = def
                     , initializeParamsLocale = def
                     , initializeParamsRootPath = def
                     , initializeParamsRootUri = def
                     , initializeParamsCapabilities = def
                     , initializeParamsInitializationOptions = def
                     , initializeParamsTrace = def
                     , initializeParamsWorkspaceFolders = def }

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

