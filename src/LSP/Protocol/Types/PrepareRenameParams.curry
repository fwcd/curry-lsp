-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.PrepareRenameParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON PrepareRenameParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           return
            PrepareRenameParams { prepareRenameParamsTextDocument = parsedTextDocument
                                , prepareRenameParamsPosition = parsedPosition
                                , prepareRenameParamsWorkDoneToken = parsedWorkDoneToken }
      _ -> Left ("Unrecognized PrepareRenameParams value: " ++ ppJSON j)

instance ToJSON PrepareRenameParams where
  toJSON x =
    object
     [(.=) "textDocument" (prepareRenameParamsTextDocument x),  (.=)
                                                                 "position"
                                                                 (prepareRenameParamsPosition
                                                                   x),  (.?=)
                                                                         "workDoneToken"
                                                                         (prepareRenameParamsWorkDoneToken
                                                                           x)]

instance Default PrepareRenameParams where
  def =
    PrepareRenameParams { prepareRenameParamsTextDocument = def
                        , prepareRenameParamsPosition = def
                        , prepareRenameParamsWorkDoneToken = def }

data PrepareRenameParams = PrepareRenameParams { prepareRenameParamsTextDocument :: TextDocumentIdentifier
                                               , prepareRenameParamsPosition :: Position
                                               , prepareRenameParamsWorkDoneToken :: Maybe ProgressToken }
 deriving (Show,Eq)

