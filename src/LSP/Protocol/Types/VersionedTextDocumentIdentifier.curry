-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.VersionedTextDocumentIdentifier where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON VersionedTextDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedVersion <- lookupFromJSON "version" vs
           return
            VersionedTextDocumentIdentifier { versionedTextDocumentIdentifierVersion = parsedVersion }
      _ ->
        Left
         ("Unrecognized VersionedTextDocumentIdentifier value: " ++ ppJSON j)

data VersionedTextDocumentIdentifier = VersionedTextDocumentIdentifier { versionedTextDocumentIdentifierVersion :: Int }
 deriving (Show,Eq)

