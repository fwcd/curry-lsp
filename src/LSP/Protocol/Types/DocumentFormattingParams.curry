-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentFormattingParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FormattingOptions
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DocumentFormattingParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedOptions <- lookupFromJSON "options" vs
           return
            DocumentFormattingParams { documentFormattingParamsWorkDoneToken = parsedWorkDoneToken
                                     , documentFormattingParamsTextDocument = parsedTextDocument
                                     , documentFormattingParamsOptions = parsedOptions }
      _ -> Left ("Unrecognized DocumentFormattingParams value: " ++ ppJSON j)

instance ToJSON DocumentFormattingParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (documentFormattingParamsWorkDoneToken x),  (.=)
                                                                         "textDocument"
                                                                         (documentFormattingParamsTextDocument
                                                                           x),  (.=)
                                                                                 "options"
                                                                                 (documentFormattingParamsOptions
                                                                                   x)]

instance Default DocumentFormattingParams where
  def =
    DocumentFormattingParams { documentFormattingParamsWorkDoneToken = def
                             , documentFormattingParamsTextDocument = def
                             , documentFormattingParamsOptions = def }

data DocumentFormattingParams = DocumentFormattingParams { documentFormattingParamsWorkDoneToken :: Maybe ProgressToken
                                                         , documentFormattingParamsTextDocument :: TextDocumentIdentifier
                                                         , documentFormattingParamsOptions :: FormattingOptions }
 deriving (Show,Eq)

