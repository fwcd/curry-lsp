-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentHighlightParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DocumentHighlightParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           return
            DocumentHighlightParams { documentHighlightParamsTextDocument = parsedTextDocument
                                    , documentHighlightParamsPosition = parsedPosition
                                    , documentHighlightParamsWorkDoneToken = parsedWorkDoneToken
                                    , documentHighlightParamsPartialResultToken = parsedPartialResultToken }
      _ -> Left ("Unrecognized DocumentHighlightParams value: " ++ ppJSON j)

instance ToJSON DocumentHighlightParams where
  toJSON x =
    object
     [(.=) "textDocument" (documentHighlightParamsTextDocument x),  (.=)
                                                                     "position"
                                                                     (documentHighlightParamsPosition
                                                                       x),  (.?=)
                                                                             "workDoneToken"
                                                                             (documentHighlightParamsWorkDoneToken
                                                                               x),  (.?=)
                                                                                     "partialResultToken"
                                                                                     (documentHighlightParamsPartialResultToken
                                                                                       x)]

instance Default DocumentHighlightParams where
  def =
    DocumentHighlightParams { documentHighlightParamsTextDocument = def
                            , documentHighlightParamsPosition = def
                            , documentHighlightParamsWorkDoneToken = def
                            , documentHighlightParamsPartialResultToken = def }

data DocumentHighlightParams = DocumentHighlightParams { documentHighlightParamsTextDocument :: TextDocumentIdentifier
                                                       , documentHighlightParamsPosition :: Position
                                                       , documentHighlightParamsWorkDoneToken :: Maybe ProgressToken
                                                       , documentHighlightParamsPartialResultToken :: Maybe ProgressToken }
 deriving (Show,Eq)

