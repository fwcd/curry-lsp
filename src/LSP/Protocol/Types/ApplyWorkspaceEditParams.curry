-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ApplyWorkspaceEditParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.WorkspaceEdit
import LSP.Protocol.Types.WorkspaceEditMetadata
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ApplyWorkspaceEditParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupMaybeFromJSON "label" vs
           parsedEdit <- lookupFromJSON "edit" vs
           parsedMetadata <- lookupMaybeFromJSON "metadata" vs
           return
            ApplyWorkspaceEditParams { applyWorkspaceEditParamsLabel = parsedLabel
                                     , applyWorkspaceEditParamsEdit = parsedEdit
                                     , applyWorkspaceEditParamsMetadata = parsedMetadata }
      _ -> Left ("Unrecognized ApplyWorkspaceEditParams value: " ++ ppJSON j)

instance ToJSON ApplyWorkspaceEditParams where
  toJSON x =
    object
     [(.?=) "label" (applyWorkspaceEditParamsLabel x),  (.=) "edit"
                                                         (applyWorkspaceEditParamsEdit
                                                           x),  (.?=)
                                                                 "metadata"
                                                                 (applyWorkspaceEditParamsMetadata
                                                                   x)]

instance Default ApplyWorkspaceEditParams where
  def =
    ApplyWorkspaceEditParams { applyWorkspaceEditParamsLabel = def
                             , applyWorkspaceEditParamsEdit = def
                             , applyWorkspaceEditParamsMetadata = def }

data ApplyWorkspaceEditParams = ApplyWorkspaceEditParams { applyWorkspaceEditParamsLabel :: Maybe String
                                                         , applyWorkspaceEditParamsEdit :: WorkspaceEdit
                                                         , applyWorkspaceEditParamsMetadata :: Maybe WorkspaceEditMetadata }
 deriving (Show,Eq)

