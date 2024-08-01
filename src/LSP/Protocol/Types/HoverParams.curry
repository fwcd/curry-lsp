-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.HoverParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON HoverParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           return
            HoverParams { hoverParamsTextDocument = parsedTextDocument
                        , hoverParamsPosition = parsedPosition
                        , hoverParamsWorkDoneToken = parsedWorkDoneToken }
      _ -> Left ("Unrecognized HoverParams value: " ++ ppJSON j)

instance ToJSON HoverParams where
  toJSON x =
    object
     [(.=) "textDocument" (hoverParamsTextDocument x),  (.=) "position"
                                                         (hoverParamsPosition
                                                           x),  (.?=)
                                                                 "workDoneToken"
                                                                 (hoverParamsWorkDoneToken
                                                                   x)]

data HoverParams = HoverParams { hoverParamsTextDocument :: TextDocumentIdentifier
                               , hoverParamsPosition :: Position
                               , hoverParamsWorkDoneToken :: Maybe ProgressToken }
 deriving (Show,Eq)

