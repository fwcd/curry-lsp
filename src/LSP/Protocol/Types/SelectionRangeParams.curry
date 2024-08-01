-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SelectionRangeParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON SelectionRangeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPositions <- lookupFromJSON "positions" vs
           return
            SelectionRangeParams { selectionRangeParamsWorkDoneToken = parsedWorkDoneToken
                                 , selectionRangeParamsPartialResultToken = parsedPartialResultToken
                                 , selectionRangeParamsTextDocument = parsedTextDocument
                                 , selectionRangeParamsPositions = parsedPositions }
      _ -> Left ("Unrecognized SelectionRangeParams value: " ++ ppJSON j)

instance ToJSON SelectionRangeParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (selectionRangeParamsWorkDoneToken x),  (.?=)
                                                                     "partialResultToken"
                                                                     (selectionRangeParamsPartialResultToken
                                                                       x),  (.=)
                                                                             "textDocument"
                                                                             (selectionRangeParamsTextDocument
                                                                               x),  (.=)
                                                                                     "positions"
                                                                                     (selectionRangeParamsPositions
                                                                                       x)]

data SelectionRangeParams = SelectionRangeParams { selectionRangeParamsWorkDoneToken :: Maybe ProgressToken
                                                 , selectionRangeParamsPartialResultToken :: Maybe ProgressToken
                                                 , selectionRangeParamsTextDocument :: TextDocumentIdentifier
                                                 , selectionRangeParamsPositions :: [Position] }
 deriving (Show,Eq)

