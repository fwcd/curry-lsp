-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentSyncClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON NotebookDocumentSyncClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedExecutionSummarySupport <- lookupMaybeFromJSON
                                             "executionSummarySupport"
                                             vs
           return
            NotebookDocumentSyncClientCapabilities { notebookDocumentSyncClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                                   , notebookDocumentSyncClientCapabilitiesExecutionSummarySupport = parsedExecutionSummarySupport }
      _ ->
        Left
         ("Unrecognized NotebookDocumentSyncClientCapabilities value: "
           ++ ppJSON j)

instance ToJSON NotebookDocumentSyncClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (notebookDocumentSyncClientCapabilitiesDynamicRegistration x),  (.?=)
                                                                        "executionSummarySupport"
                                                                        (notebookDocumentSyncClientCapabilitiesExecutionSummarySupport
                                                                          x)]

data NotebookDocumentSyncClientCapabilities = NotebookDocumentSyncClientCapabilities { notebookDocumentSyncClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                                     , notebookDocumentSyncClientCapabilitiesExecutionSummarySupport :: Maybe Bool }
 deriving (Show,Eq)

