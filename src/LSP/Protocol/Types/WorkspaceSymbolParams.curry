-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceSymbolParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Utils.JSON

instance FromJSON WorkspaceSymbolParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedQuery <- lookupFromJSON "query" vs
           return
            WorkspaceSymbolParams { workspaceSymbolParamsWorkDoneToken = parsedWorkDoneToken
                                  , workspaceSymbolParamsPartialResultToken = parsedPartialResultToken
                                  , workspaceSymbolParamsQuery = parsedQuery }
      _ -> Left ("Unrecognized WorkspaceSymbolParams value: " ++ ppJSON j)

instance ToJSON WorkspaceSymbolParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (workspaceSymbolParamsWorkDoneToken x),  (.?=)
                                                                      "partialResultToken"
                                                                      (workspaceSymbolParamsPartialResultToken
                                                                        x),  (.=)
                                                                              "query"
                                                                              (workspaceSymbolParamsQuery
                                                                                x)]

data WorkspaceSymbolParams = WorkspaceSymbolParams { workspaceSymbolParamsWorkDoneToken :: Maybe ProgressToken
                                                   , workspaceSymbolParamsPartialResultToken :: Maybe ProgressToken
                                                   , workspaceSymbolParamsQuery :: String }
 deriving (Show,Eq)

