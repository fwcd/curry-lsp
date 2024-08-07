-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON TextDocumentRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           return
            TextDocumentRegistrationOptions { textDocumentRegistrationOptionsDocumentSelector = parsedDocumentSelector }
      _ ->
        Left
         ("Unrecognized TextDocumentRegistrationOptions value: " ++ ppJSON j)

instance ToJSON TextDocumentRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (textDocumentRegistrationOptionsDocumentSelector x)]

instance Default TextDocumentRegistrationOptions where
  def =
    TextDocumentRegistrationOptions { textDocumentRegistrationOptionsDocumentSelector = def }

data TextDocumentRegistrationOptions = TextDocumentRegistrationOptions { textDocumentRegistrationOptionsDocumentSelector :: Either DocumentSelector () }
 deriving (Show,Eq)

