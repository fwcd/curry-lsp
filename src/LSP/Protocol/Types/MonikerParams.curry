-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.MonikerParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON MonikerParams where
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
            MonikerParams { monikerParamsTextDocument = parsedTextDocument
                          , monikerParamsPosition = parsedPosition
                          , monikerParamsWorkDoneToken = parsedWorkDoneToken
                          , monikerParamsPartialResultToken = parsedPartialResultToken }
      _ -> Left ("Unrecognized MonikerParams value: " ++ ppJSON j)

instance ToJSON MonikerParams where
  toJSON x =
    object
     [(.=) "textDocument" (monikerParamsTextDocument x),  (.=) "position"
                                                           (monikerParamsPosition
                                                             x),  (.?=)
                                                                   "workDoneToken"
                                                                   (monikerParamsWorkDoneToken
                                                                     x),  (.?=)
                                                                           "partialResultToken"
                                                                           (monikerParamsPartialResultToken
                                                                             x)]

instance Default MonikerParams where
  def =
    MonikerParams { monikerParamsTextDocument = def
                  , monikerParamsPosition = def
                  , monikerParamsWorkDoneToken = def
                  , monikerParamsPartialResultToken = def }

data MonikerParams = MonikerParams { monikerParamsTextDocument :: TextDocumentIdentifier
                                   , monikerParamsPosition :: Position
                                   , monikerParamsWorkDoneToken :: Maybe ProgressToken
                                   , monikerParamsPartialResultToken :: Maybe ProgressToken }
 deriving (Show,Eq)

