-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentSaveRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON TextDocumentSaveRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedIncludeText <- lookupMaybeFromJSON "includeText" vs
           return
            TextDocumentSaveRegistrationOptions { textDocumentSaveRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                                , textDocumentSaveRegistrationOptionsIncludeText = parsedIncludeText }
      _ ->
        Left
         ("Unrecognized TextDocumentSaveRegistrationOptions value: "
           ++ ppJSON j)

instance ToJSON TextDocumentSaveRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (textDocumentSaveRegistrationOptionsDocumentSelector x),  (.?=)
                                                                  "includeText"
                                                                  (textDocumentSaveRegistrationOptionsIncludeText
                                                                    x)]

instance Default TextDocumentSaveRegistrationOptions where
  def =
    TextDocumentSaveRegistrationOptions { textDocumentSaveRegistrationOptionsDocumentSelector = def
                                        , textDocumentSaveRegistrationOptionsIncludeText = def }

data TextDocumentSaveRegistrationOptions = TextDocumentSaveRegistrationOptions { textDocumentSaveRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                               , textDocumentSaveRegistrationOptionsIncludeText :: Maybe Bool }
 deriving (Show,Eq)

