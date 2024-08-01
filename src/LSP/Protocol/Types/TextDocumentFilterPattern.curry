-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentFilterPattern where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.GlobPattern
import LSP.Utils.JSON

instance FromJSON TextDocumentFilterPattern where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLanguage <- lookupMaybeFromJSON "language" vs
           parsedScheme <- lookupMaybeFromJSON "scheme" vs
           parsedPattern <- lookupFromJSON "pattern" vs
           return
            TextDocumentFilterPattern { textDocumentFilterPatternLanguage = parsedLanguage
                                      , textDocumentFilterPatternScheme = parsedScheme
                                      , textDocumentFilterPatternPattern = parsedPattern }
      _ -> Left ("Unrecognized TextDocumentFilterPattern value: " ++ ppJSON j)

data TextDocumentFilterPattern = TextDocumentFilterPattern { textDocumentFilterPatternLanguage :: Maybe String
                                                           , textDocumentFilterPatternScheme :: Maybe String
                                                           , textDocumentFilterPatternPattern :: GlobPattern }
 deriving (Show,Eq)
