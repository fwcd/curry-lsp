-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentIdentifier where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON NotebookDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           return
            NotebookDocumentIdentifier { notebookDocumentIdentifierUri = parsedUri }
      _ ->
        Left ("Unrecognized NotebookDocumentIdentifier value: " ++ ppJSON j)

instance ToJSON NotebookDocumentIdentifier where
  toJSON x = object [(.=) "uri" (notebookDocumentIdentifierUri x)]

instance Default NotebookDocumentIdentifier where
  def = NotebookDocumentIdentifier { notebookDocumentIdentifierUri = def }

data NotebookDocumentIdentifier = NotebookDocumentIdentifier { notebookDocumentIdentifierUri :: Uri }
 deriving (Show,Eq)

