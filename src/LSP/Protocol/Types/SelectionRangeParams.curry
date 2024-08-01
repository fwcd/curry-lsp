-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SelectionRangeParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON SelectionRangeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPositions <- lookupFromJSON "positions" vs
           return
            SelectionRangeParams { selectionRangeParamsTextDocument = parsedTextDocument
                                 , selectionRangeParamsPositions = parsedPositions }
      _ -> Left ("Unrecognized SelectionRangeParams value: " ++ ppJSON j)

data SelectionRangeParams = SelectionRangeParams { selectionRangeParamsTextDocument :: TextDocumentIdentifier
                                                 , selectionRangeParamsPositions :: [Position] }
 deriving (Show,Eq)

