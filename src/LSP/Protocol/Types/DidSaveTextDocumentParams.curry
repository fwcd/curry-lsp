-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidSaveTextDocumentParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DidSaveTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedText <- lookupMaybeFromJSON "text" vs
           return
            DidSaveTextDocumentParams { didSaveTextDocumentParamsTextDocument = parsedTextDocument
                                      , didSaveTextDocumentParamsText = parsedText }
      _ -> Left ("Unrecognized DidSaveTextDocumentParams value: " ++ ppJSON j)

instance ToJSON DidSaveTextDocumentParams where
  toJSON x =
    object
     [(.=) "textDocument" (didSaveTextDocumentParamsTextDocument x),  (.?=)
                                                                       "text"
                                                                       (didSaveTextDocumentParamsText
                                                                         x)]

instance Default DidSaveTextDocumentParams where
  def =
    DidSaveTextDocumentParams { didSaveTextDocumentParamsTextDocument = def
                              , didSaveTextDocumentParamsText = def }

data DidSaveTextDocumentParams = DidSaveTextDocumentParams { didSaveTextDocumentParamsTextDocument :: TextDocumentIdentifier
                                                           , didSaveTextDocumentParamsText :: Maybe String }
 deriving (Show,Eq)

