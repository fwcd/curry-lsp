-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentColorParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON DocumentColorParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DocumentColorParams { documentColorParamsWorkDoneToken = parsedWorkDoneToken
                                , documentColorParamsPartialResultToken = parsedPartialResultToken
                                , documentColorParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized DocumentColorParams value: " ++ ppJSON j)

instance ToJSON DocumentColorParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (documentColorParamsWorkDoneToken x),  (.?=)
                                                                    "partialResultToken"
                                                                    (documentColorParamsPartialResultToken
                                                                      x),  (.=)
                                                                            "textDocument"
                                                                            (documentColorParamsTextDocument
                                                                              x)]

data DocumentColorParams = DocumentColorParams { documentColorParamsWorkDoneToken :: Maybe ProgressToken
                                               , documentColorParamsPartialResultToken :: Maybe ProgressToken
                                               , documentColorParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

