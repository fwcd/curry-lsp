-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentFilterScheme where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.GlobPattern
import LSP.Utils.JSON

instance FromJSON TextDocumentFilterScheme where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLanguage <- lookupMaybeFromJSON "language" vs
           parsedScheme <- lookupFromJSON "scheme" vs
           parsedPattern <- lookupMaybeFromJSON "pattern" vs
           return
            TextDocumentFilterScheme { textDocumentFilterSchemeLanguage = parsedLanguage
                                     , textDocumentFilterSchemeScheme = parsedScheme
                                     , textDocumentFilterSchemePattern = parsedPattern }
      _ -> Left ("Unrecognized TextDocumentFilterScheme value: " ++ ppJSON j)

instance ToJSON TextDocumentFilterScheme where
  toJSON x =
    object
     [(.?=) "language" (textDocumentFilterSchemeLanguage x),  (.=) "scheme"
                                                               (textDocumentFilterSchemeScheme
                                                                 x),  (.?=)
                                                                       "pattern"
                                                                       (textDocumentFilterSchemePattern
                                                                         x)]

data TextDocumentFilterScheme = TextDocumentFilterScheme { textDocumentFilterSchemeLanguage :: Maybe String
                                                         , textDocumentFilterSchemeScheme :: String
                                                         , textDocumentFilterSchemePattern :: Maybe GlobPattern }
 deriving (Show,Eq)

