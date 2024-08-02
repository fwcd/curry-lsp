-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WillSaveTextDocumentParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Protocol.Types.TextDocumentSaveReason
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON WillSaveTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedReason <- lookupFromJSON "reason" vs
           return
            WillSaveTextDocumentParams { willSaveTextDocumentParamsTextDocument = parsedTextDocument
                                       , willSaveTextDocumentParamsReason = parsedReason }
      _ ->
        Left ("Unrecognized WillSaveTextDocumentParams value: " ++ ppJSON j)

instance ToJSON WillSaveTextDocumentParams where
  toJSON x =
    object
     [(.=) "textDocument" (willSaveTextDocumentParamsTextDocument x),  (.=)
                                                                        "reason"
                                                                        (willSaveTextDocumentParamsReason
                                                                          x)]

instance Default WillSaveTextDocumentParams where
  def =
    WillSaveTextDocumentParams { willSaveTextDocumentParamsTextDocument = def
                               , willSaveTextDocumentParamsReason = def }

data WillSaveTextDocumentParams = WillSaveTextDocumentParams { willSaveTextDocumentParamsTextDocument :: TextDocumentIdentifier
                                                             , willSaveTextDocumentParamsReason :: TextDocumentSaveReason }
 deriving (Show,Eq)

