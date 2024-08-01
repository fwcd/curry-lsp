-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentItem where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.LanguageKind
import LSP.Utils.JSON

instance FromJSON TextDocumentItem where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedLanguageId <- lookupFromJSON "languageId" vs
           parsedVersion <- lookupFromJSON "version" vs
           parsedText <- lookupFromJSON "text" vs
           return
            TextDocumentItem { textDocumentItemUri = parsedUri
                             , textDocumentItemLanguageId = parsedLanguageId
                             , textDocumentItemVersion = parsedVersion
                             , textDocumentItemText = parsedText }
      _ -> Left ("Unrecognized TextDocumentItem value: " ++ ppJSON j)

instance ToJSON TextDocumentItem where
  toJSON x =
    object
     [(.=) "uri" (textDocumentItemUri x),  (.=) "languageId"
                                            (textDocumentItemLanguageId
                                              x),  (.=) "version"
                                                    (textDocumentItemVersion
                                                      x),  (.=) "text"
                                                            (textDocumentItemText
                                                              x)]

data TextDocumentItem = TextDocumentItem { textDocumentItemUri :: DocumentUri
                                         , textDocumentItemLanguageId :: LanguageKind
                                         , textDocumentItemVersion :: Int
                                         , textDocumentItemText :: String }
 deriving (Show,Eq)

