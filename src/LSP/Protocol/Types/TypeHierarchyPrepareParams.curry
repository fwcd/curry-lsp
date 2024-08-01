-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeHierarchyPrepareParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON TypeHierarchyPrepareParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           return
            TypeHierarchyPrepareParams { typeHierarchyPrepareParamsTextDocument = parsedTextDocument
                                       , typeHierarchyPrepareParamsPosition = parsedPosition
                                       , typeHierarchyPrepareParamsWorkDoneToken = parsedWorkDoneToken }
      _ ->
        Left ("Unrecognized TypeHierarchyPrepareParams value: " ++ ppJSON j)

instance ToJSON TypeHierarchyPrepareParams where
  toJSON x =
    object
     [(.=) "textDocument" (typeHierarchyPrepareParamsTextDocument x),  (.=)
                                                                        "position"
                                                                        (typeHierarchyPrepareParamsPosition
                                                                          x),  (.?=)
                                                                                "workDoneToken"
                                                                                (typeHierarchyPrepareParamsWorkDoneToken
                                                                                  x)]

data TypeHierarchyPrepareParams = TypeHierarchyPrepareParams { typeHierarchyPrepareParamsTextDocument :: TextDocumentIdentifier
                                                             , typeHierarchyPrepareParamsPosition :: Position
                                                             , typeHierarchyPrepareParamsWorkDoneToken :: Maybe ProgressToken }
 deriving (Show,Eq)

