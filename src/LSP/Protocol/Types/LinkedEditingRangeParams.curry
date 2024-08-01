-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.LinkedEditingRangeParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON LinkedEditingRangeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           return
            LinkedEditingRangeParams { linkedEditingRangeParamsTextDocument = parsedTextDocument
                                     , linkedEditingRangeParamsPosition = parsedPosition
                                     , linkedEditingRangeParamsWorkDoneToken = parsedWorkDoneToken }
      _ -> Left ("Unrecognized LinkedEditingRangeParams value: " ++ ppJSON j)

instance ToJSON LinkedEditingRangeParams where
  toJSON x =
    object
     [(.=) "textDocument" (linkedEditingRangeParamsTextDocument x),  (.=)
                                                                      "position"
                                                                      (linkedEditingRangeParamsPosition
                                                                        x),  (.?=)
                                                                              "workDoneToken"
                                                                              (linkedEditingRangeParamsWorkDoneToken
                                                                                x)]

data LinkedEditingRangeParams = LinkedEditingRangeParams { linkedEditingRangeParamsTextDocument :: TextDocumentIdentifier
                                                         , linkedEditingRangeParamsPosition :: Position
                                                         , linkedEditingRangeParamsWorkDoneToken :: Maybe ProgressToken }
 deriving (Show,Eq)

