-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ReferenceParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.ReferenceContext
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON ReferenceParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedContext <- lookupFromJSON "context" vs
           return
            ReferenceParams { referenceParamsTextDocument = parsedTextDocument
                            , referenceParamsPosition = parsedPosition
                            , referenceParamsWorkDoneToken = parsedWorkDoneToken
                            , referenceParamsPartialResultToken = parsedPartialResultToken
                            , referenceParamsContext = parsedContext }
      _ -> Left ("Unrecognized ReferenceParams value: " ++ ppJSON j)

instance ToJSON ReferenceParams where
  toJSON x =
    object
     [(.=) "textDocument" (referenceParamsTextDocument x),  (.=) "position"
                                                             (referenceParamsPosition
                                                               x),  (.?=)
                                                                     "workDoneToken"
                                                                     (referenceParamsWorkDoneToken
                                                                       x),  (.?=)
                                                                             "partialResultToken"
                                                                             (referenceParamsPartialResultToken
                                                                               x),  (.=)
                                                                                     "context"
                                                                                     (referenceParamsContext
                                                                                       x)]

data ReferenceParams = ReferenceParams { referenceParamsTextDocument :: TextDocumentIdentifier
                                       , referenceParamsPosition :: Position
                                       , referenceParamsWorkDoneToken :: Maybe ProgressToken
                                       , referenceParamsPartialResultToken :: Maybe ProgressToken
                                       , referenceParamsContext :: ReferenceContext }
 deriving (Show,Eq)

