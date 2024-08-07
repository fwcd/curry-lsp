-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CallHierarchyPrepareParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CallHierarchyPrepareParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           return
            CallHierarchyPrepareParams { callHierarchyPrepareParamsTextDocument = parsedTextDocument
                                       , callHierarchyPrepareParamsPosition = parsedPosition
                                       , callHierarchyPrepareParamsWorkDoneToken = parsedWorkDoneToken }
      _ ->
        Left ("Unrecognized CallHierarchyPrepareParams value: " ++ ppJSON j)

instance ToJSON CallHierarchyPrepareParams where
  toJSON x =
    object
     [(.=) "textDocument" (callHierarchyPrepareParamsTextDocument x),  (.=)
                                                                        "position"
                                                                        (callHierarchyPrepareParamsPosition
                                                                          x),  (.?=)
                                                                                "workDoneToken"
                                                                                (callHierarchyPrepareParamsWorkDoneToken
                                                                                  x)]

instance Default CallHierarchyPrepareParams where
  def =
    CallHierarchyPrepareParams { callHierarchyPrepareParamsTextDocument = def
                               , callHierarchyPrepareParamsPosition = def
                               , callHierarchyPrepareParamsWorkDoneToken = def }

data CallHierarchyPrepareParams = CallHierarchyPrepareParams { callHierarchyPrepareParamsTextDocument :: TextDocumentIdentifier
                                                             , callHierarchyPrepareParamsPosition :: Position
                                                             , callHierarchyPrepareParamsWorkDoneToken :: Maybe ProgressToken }
 deriving (Show,Eq)

