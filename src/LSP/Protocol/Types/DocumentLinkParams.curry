-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentLinkParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DocumentLinkParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DocumentLinkParams { documentLinkParamsWorkDoneToken = parsedWorkDoneToken
                               , documentLinkParamsPartialResultToken = parsedPartialResultToken
                               , documentLinkParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized DocumentLinkParams value: " ++ ppJSON j)

instance ToJSON DocumentLinkParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (documentLinkParamsWorkDoneToken x),  (.?=)
                                                                   "partialResultToken"
                                                                   (documentLinkParamsPartialResultToken
                                                                     x),  (.=)
                                                                           "textDocument"
                                                                           (documentLinkParamsTextDocument
                                                                             x)]

instance Default DocumentLinkParams where
  def =
    DocumentLinkParams { documentLinkParamsWorkDoneToken = def
                       , documentLinkParamsPartialResultToken = def
                       , documentLinkParamsTextDocument = def }

data DocumentLinkParams = DocumentLinkParams { documentLinkParamsWorkDoneToken :: Maybe ProgressToken
                                             , documentLinkParamsPartialResultToken :: Maybe ProgressToken
                                             , documentLinkParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

