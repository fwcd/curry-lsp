-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeHierarchyRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON TypeHierarchyRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedId <- lookupMaybeFromJSON "id" vs
           return
            TypeHierarchyRegistrationOptions { typeHierarchyRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                             , typeHierarchyRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                             , typeHierarchyRegistrationOptionsId = parsedId }
      _ ->
        Left
         ("Unrecognized TypeHierarchyRegistrationOptions value: " ++ ppJSON j)

instance ToJSON TypeHierarchyRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (typeHierarchyRegistrationOptionsDocumentSelector x),  (.?=)
                                                               "workDoneProgress"
                                                               (typeHierarchyRegistrationOptionsWorkDoneProgress
                                                                 x),  (.?=)
                                                                       "id"
                                                                       (typeHierarchyRegistrationOptionsId
                                                                         x)]

instance Default TypeHierarchyRegistrationOptions where
  def =
    TypeHierarchyRegistrationOptions { typeHierarchyRegistrationOptionsDocumentSelector = def
                                     , typeHierarchyRegistrationOptionsWorkDoneProgress = def
                                     , typeHierarchyRegistrationOptionsId = def }

data TypeHierarchyRegistrationOptions = TypeHierarchyRegistrationOptions { typeHierarchyRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                         , typeHierarchyRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                         , typeHierarchyRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

