-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.OptionalVersionedTextDocumentIdentifier where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON OptionalVersionedTextDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedVersion <- lookupFromJSON "version" vs
           return
            OptionalVersionedTextDocumentIdentifier { optionalVersionedTextDocumentIdentifierUri = parsedUri
                                                    , optionalVersionedTextDocumentIdentifierVersion = parsedVersion }
      _ ->
        Left
         ("Unrecognized OptionalVersionedTextDocumentIdentifier value: "
           ++ ppJSON j)

instance ToJSON OptionalVersionedTextDocumentIdentifier where
  toJSON x =
    object
     [(.=) "uri" (optionalVersionedTextDocumentIdentifierUri x),  (.=)
                                                                   "version"
                                                                   (optionalVersionedTextDocumentIdentifierVersion
                                                                     x)]

instance Default OptionalVersionedTextDocumentIdentifier where
  def =
    OptionalVersionedTextDocumentIdentifier { optionalVersionedTextDocumentIdentifierUri = def
                                            , optionalVersionedTextDocumentIdentifierVersion = def }

data OptionalVersionedTextDocumentIdentifier = OptionalVersionedTextDocumentIdentifier { optionalVersionedTextDocumentIdentifierUri :: DocumentUri
                                                                                       , optionalVersionedTextDocumentIdentifierVersion :: Either Int () }
 deriving (Show,Eq)

