-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CallHierarchyRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.JSON

instance FromJSON CallHierarchyRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedId <- lookupMaybeFromJSON "id" vs
           return
            CallHierarchyRegistrationOptions { callHierarchyRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                             , callHierarchyRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                             , callHierarchyRegistrationOptionsId = parsedId }
      _ ->
        Left
         ("Unrecognized CallHierarchyRegistrationOptions value: " ++ ppJSON j)

instance ToJSON CallHierarchyRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (callHierarchyRegistrationOptionsDocumentSelector x),  (.?=)
                                                               "workDoneProgress"
                                                               (callHierarchyRegistrationOptionsWorkDoneProgress
                                                                 x),  (.?=)
                                                                       "id"
                                                                       (callHierarchyRegistrationOptionsId
                                                                         x)]

data CallHierarchyRegistrationOptions = CallHierarchyRegistrationOptions { callHierarchyRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                         , callHierarchyRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                         , callHierarchyRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

