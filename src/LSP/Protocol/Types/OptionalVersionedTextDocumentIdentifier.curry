-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.OptionalVersionedTextDocumentIdentifier where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON OptionalVersionedTextDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedVersion <- lookupFromJSON "version" vs
           return
            OptionalVersionedTextDocumentIdentifier { optionalVersionedTextDocumentIdentifierVersion = parsedVersion }
      _ ->
        Left
         ("Unrecognized OptionalVersionedTextDocumentIdentifier value: "
           ++ ppJSON j)

data OptionalVersionedTextDocumentIdentifier = OptionalVersionedTextDocumentIdentifier { optionalVersionedTextDocumentIdentifierVersion :: Either Int () }
 deriving (Show,Eq)

