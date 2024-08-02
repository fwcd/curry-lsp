-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceEdit where

import Data.Map
import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.ChangeAnnotation
import LSP.Protocol.Types.ChangeAnnotationIdentifier
import LSP.Protocol.Types.CreateFile
import LSP.Protocol.Types.DeleteFile
import LSP.Protocol.Types.RenameFile
import LSP.Protocol.Types.TextDocumentEdit
import LSP.Protocol.Types.TextEdit
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON WorkspaceEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedChanges <- lookupMaybeFromJSON "changes" vs
           parsedDocumentChanges <- lookupMaybeFromJSON "documentChanges" vs
           parsedChangeAnnotations <- lookupMaybeFromJSON "changeAnnotations"
                                       vs
           return
            WorkspaceEdit { workspaceEditChanges = parsedChanges
                          , workspaceEditDocumentChanges = parsedDocumentChanges
                          , workspaceEditChangeAnnotations = parsedChangeAnnotations }
      _ -> Left ("Unrecognized WorkspaceEdit value: " ++ ppJSON j)

instance ToJSON WorkspaceEdit where
  toJSON x =
    object
     [(.?=) "changes" (workspaceEditChanges x),  (.?=) "documentChanges"
                                                  (workspaceEditDocumentChanges
                                                    x),  (.?=)
                                                          "changeAnnotations"
                                                          (workspaceEditChangeAnnotations
                                                            x)]

instance Default WorkspaceEdit where
  def =
    WorkspaceEdit { workspaceEditChanges = def
                  , workspaceEditDocumentChanges = def
                  , workspaceEditChangeAnnotations = def }

data WorkspaceEdit = WorkspaceEdit { workspaceEditChanges :: Maybe (Map DocumentUri [TextEdit])
                                   , workspaceEditDocumentChanges :: Maybe [Either (Either (Either TextDocumentEdit CreateFile) RenameFile) DeleteFile]
                                   , workspaceEditChangeAnnotations :: Maybe (Map ChangeAnnotationIdentifier ChangeAnnotation) }
 deriving (Show,Eq)

