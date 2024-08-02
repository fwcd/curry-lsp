-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FoldingRangeParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON FoldingRangeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            FoldingRangeParams { foldingRangeParamsWorkDoneToken = parsedWorkDoneToken
                               , foldingRangeParamsPartialResultToken = parsedPartialResultToken
                               , foldingRangeParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized FoldingRangeParams value: " ++ ppJSON j)

instance ToJSON FoldingRangeParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (foldingRangeParamsWorkDoneToken x),  (.?=)
                                                                   "partialResultToken"
                                                                   (foldingRangeParamsPartialResultToken
                                                                     x),  (.=)
                                                                           "textDocument"
                                                                           (foldingRangeParamsTextDocument
                                                                             x)]

instance Default FoldingRangeParams where
  def =
    FoldingRangeParams { foldingRangeParamsWorkDoneToken = def
                       , foldingRangeParamsPartialResultToken = def
                       , foldingRangeParamsTextDocument = def }

data FoldingRangeParams = FoldingRangeParams { foldingRangeParamsWorkDoneToken :: Maybe ProgressToken
                                             , foldingRangeParamsPartialResultToken :: Maybe ProgressToken
                                             , foldingRangeParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

