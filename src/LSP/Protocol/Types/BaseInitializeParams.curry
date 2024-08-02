-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.BaseInitializeParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.ClientCapabilities
import LSP.Protocol.Types.ClientInfo
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TraceValue
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON BaseInitializeParams where
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
           return
            BaseInitializeParams { baseInitializeParamsWorkDoneToken = parsedWorkDoneToken
                                 , baseInitializeParamsProcessId = parsedProcessId
                                 , baseInitializeParamsClientInfo = parsedClientInfo
                                 , baseInitializeParamsLocale = parsedLocale
                                 , baseInitializeParamsRootPath = parsedRootPath
                                 , baseInitializeParamsRootUri = parsedRootUri
                                 , baseInitializeParamsCapabilities = parsedCapabilities
                                 , baseInitializeParamsInitializationOptions = parsedInitializationOptions
                                 , baseInitializeParamsTrace = parsedTrace }
      _ -> Left ("Unrecognized BaseInitializeParams value: " ++ ppJSON j)

instance ToJSON BaseInitializeParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (baseInitializeParamsWorkDoneToken x),  (.=)
                                                                     "processId"
                                                                     (baseInitializeParamsProcessId
                                                                       x),  (.?=)
                                                                             "clientInfo"
                                                                             (baseInitializeParamsClientInfo
                                                                               x),  (.?=)
                                                                                     "locale"
                                                                                     (baseInitializeParamsLocale
                                                                                       x),  (.?=)
                                                                                             "rootPath"
                                                                                             (baseInitializeParamsRootPath
                                                                                               x),  (.=)
                                                                                                     "rootUri"
                                                                                                     (baseInitializeParamsRootUri
                                                                                                       x),  (.=)
                                                                                                             "capabilities"
                                                                                                             (baseInitializeParamsCapabilities
                                                                                                               x),  (.?=)
                                                                                                                     "initializationOptions"
                                                                                                                     (baseInitializeParamsInitializationOptions
                                                                                                                       x),  (.?=)
                                                                                                                             "trace"
                                                                                                                             (baseInitializeParamsTrace
                                                                                                                               x)]

instance Default BaseInitializeParams where
  def =
    BaseInitializeParams { baseInitializeParamsWorkDoneToken = def
                         , baseInitializeParamsProcessId = def
                         , baseInitializeParamsClientInfo = def
                         , baseInitializeParamsLocale = def
                         , baseInitializeParamsRootPath = def
                         , baseInitializeParamsRootUri = def
                         , baseInitializeParamsCapabilities = def
                         , baseInitializeParamsInitializationOptions = def
                         , baseInitializeParamsTrace = def }

data BaseInitializeParams = BaseInitializeParams { baseInitializeParamsWorkDoneToken :: Maybe ProgressToken
                                                 , baseInitializeParamsProcessId :: Either Int ()
                                                 , baseInitializeParamsClientInfo :: Maybe ClientInfo
                                                 , baseInitializeParamsLocale :: Maybe String
                                                 , baseInitializeParamsRootPath :: Maybe (Either String ())
                                                 , baseInitializeParamsRootUri :: Either DocumentUri ()
                                                 , baseInitializeParamsCapabilities :: ClientCapabilities
                                                 , baseInitializeParamsInitializationOptions :: Maybe LSPAny
                                                 , baseInitializeParamsTrace :: Maybe TraceValue }
 deriving (Show,Eq)

