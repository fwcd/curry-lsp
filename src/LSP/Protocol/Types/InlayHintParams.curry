-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlayHintParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.Range
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON InlayHintParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRange <- lookupFromJSON "range" vs
           return
            InlayHintParams { inlayHintParamsWorkDoneToken = parsedWorkDoneToken
                            , inlayHintParamsTextDocument = parsedTextDocument
                            , inlayHintParamsRange = parsedRange }
      _ -> Left ("Unrecognized InlayHintParams value: " ++ ppJSON j)

instance ToJSON InlayHintParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (inlayHintParamsWorkDoneToken x),  (.=)
                                                                "textDocument"
                                                                (inlayHintParamsTextDocument
                                                                  x),  (.=)
                                                                        "range"
                                                                        (inlayHintParamsRange
                                                                          x)]

data InlayHintParams = InlayHintParams { inlayHintParamsWorkDoneToken :: Maybe ProgressToken
                                       , inlayHintParamsTextDocument :: TextDocumentIdentifier
                                       , inlayHintParamsRange :: Range }
 deriving (Show,Eq)

