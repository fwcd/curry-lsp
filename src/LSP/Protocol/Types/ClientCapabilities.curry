-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.GeneralClientCapabilities
import LSP.Protocol.Types.NotebookDocumentClientCapabilities
import LSP.Protocol.Types.TextDocumentClientCapabilities
import LSP.Protocol.Types.WindowClientCapabilities
import LSP.Protocol.Types.WorkspaceClientCapabilities
import LSP.Utils.JSON

instance FromJSON ClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkspace <- lookupMaybeFromJSON "workspace" vs
           parsedTextDocument <- lookupMaybeFromJSON "textDocument" vs
           parsedNotebookDocument <- lookupMaybeFromJSON "notebookDocument" vs
           parsedWindow <- lookupMaybeFromJSON "window" vs
           parsedGeneral <- lookupMaybeFromJSON "general" vs
           parsedExperimental <- lookupMaybeFromJSON "experimental" vs
           return
            ClientCapabilities { clientCapabilitiesWorkspace = parsedWorkspace
                               , clientCapabilitiesTextDocument = parsedTextDocument
                               , clientCapabilitiesNotebookDocument = parsedNotebookDocument
                               , clientCapabilitiesWindow = parsedWindow
                               , clientCapabilitiesGeneral = parsedGeneral
                               , clientCapabilitiesExperimental = parsedExperimental }
      _ -> Left ("Unrecognized ClientCapabilities value: " ++ ppJSON j)

instance ToJSON ClientCapabilities where
  toJSON x =
    object
     [(.?=) "workspace" (clientCapabilitiesWorkspace x),  (.?=) "textDocument"
                                                           (clientCapabilitiesTextDocument
                                                             x),  (.?=)
                                                                   "notebookDocument"
                                                                   (clientCapabilitiesNotebookDocument
                                                                     x),  (.?=)
                                                                           "window"
                                                                           (clientCapabilitiesWindow
                                                                             x),  (.?=)
                                                                                   "general"
                                                                                   (clientCapabilitiesGeneral
                                                                                     x),  (.?=)
                                                                                           "experimental"
                                                                                           (clientCapabilitiesExperimental
                                                                                             x)]

data ClientCapabilities = ClientCapabilities { clientCapabilitiesWorkspace :: Maybe WorkspaceClientCapabilities
                                             , clientCapabilitiesTextDocument :: Maybe TextDocumentClientCapabilities
                                             , clientCapabilitiesNotebookDocument :: Maybe NotebookDocumentClientCapabilities
                                             , clientCapabilitiesWindow :: Maybe WindowClientCapabilities
                                             , clientCapabilitiesGeneral :: Maybe GeneralClientCapabilities
                                             , clientCapabilitiesExperimental :: Maybe LSPAny }
 deriving (Show,Eq)

