-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentFilterLanguage where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.GlobPattern
import LSP.Utils.JSON

instance FromJSON TextDocumentFilterLanguage where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLanguage <- lookupFromJSON "language" vs
           parsedScheme <- lookupMaybeFromJSON "scheme" vs
           parsedPattern <- lookupMaybeFromJSON "pattern" vs
           return
            TextDocumentFilterLanguage { textDocumentFilterLanguageLanguage = parsedLanguage
                                       , textDocumentFilterLanguageScheme = parsedScheme
                                       , textDocumentFilterLanguagePattern = parsedPattern }
      _ ->
        Left ("Unrecognized TextDocumentFilterLanguage value: " ++ ppJSON j)

data TextDocumentFilterLanguage = TextDocumentFilterLanguage { textDocumentFilterLanguageLanguage :: String
                                                             , textDocumentFilterLanguageScheme :: Maybe String
                                                             , textDocumentFilterLanguagePattern :: Maybe GlobPattern }
 deriving (Show,Eq)

