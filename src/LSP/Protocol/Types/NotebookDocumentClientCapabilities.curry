-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.NotebookDocumentSyncClientCapabilities
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON NotebookDocumentClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSynchronization <- lookupFromJSON "synchronization" vs
           return
            NotebookDocumentClientCapabilities { notebookDocumentClientCapabilitiesSynchronization = parsedSynchronization }
      _ ->
        Left
         ("Unrecognized NotebookDocumentClientCapabilities value: "
           ++ ppJSON j)

instance ToJSON NotebookDocumentClientCapabilities where
  toJSON x =
    object
     [(.=) "synchronization"
       (notebookDocumentClientCapabilitiesSynchronization x)]

instance Default NotebookDocumentClientCapabilities where
  def =
    NotebookDocumentClientCapabilities { notebookDocumentClientCapabilitiesSynchronization = def }

data NotebookDocumentClientCapabilities = NotebookDocumentClientCapabilities { notebookDocumentClientCapabilitiesSynchronization :: NotebookDocumentSyncClientCapabilities }
 deriving (Show,Eq)

