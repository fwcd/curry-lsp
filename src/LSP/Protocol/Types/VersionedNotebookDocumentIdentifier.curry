-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.VersionedNotebookDocumentIdentifier where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON VersionedNotebookDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedVersion <- lookupFromJSON "version" vs
           parsedUri <- lookupFromJSON "uri" vs
           return
            VersionedNotebookDocumentIdentifier { versionedNotebookDocumentIdentifierVersion = parsedVersion
                                                , versionedNotebookDocumentIdentifierUri = parsedUri }
      _ ->
        Left
         ("Unrecognized VersionedNotebookDocumentIdentifier value: "
           ++ ppJSON j)

instance ToJSON VersionedNotebookDocumentIdentifier where
  toJSON x =
    object
     [(.=) "version" (versionedNotebookDocumentIdentifierVersion x),  (.=)
                                                                       "uri"
                                                                       (versionedNotebookDocumentIdentifierUri
                                                                         x)]

instance Default VersionedNotebookDocumentIdentifier where
  def =
    VersionedNotebookDocumentIdentifier { versionedNotebookDocumentIdentifierVersion = def
                                        , versionedNotebookDocumentIdentifierUri = def }

data VersionedNotebookDocumentIdentifier = VersionedNotebookDocumentIdentifier { versionedNotebookDocumentIdentifierVersion :: Int
                                                                               , versionedNotebookDocumentIdentifierUri :: Uri }
 deriving (Show,Eq)

