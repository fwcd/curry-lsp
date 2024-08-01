-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentSyncRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON NotebookDocumentSyncRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return NotebookDocumentSyncRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized NotebookDocumentSyncRegistrationOptions value: "
           ++ ppJSON j)

data NotebookDocumentSyncRegistrationOptions = NotebookDocumentSyncRegistrationOptions {  }
 deriving (Show,Eq)

