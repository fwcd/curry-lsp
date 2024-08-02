-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeHierarchyOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON TypeHierarchyOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            TypeHierarchyOptions { typeHierarchyOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized TypeHierarchyOptions value: " ++ ppJSON j)

instance ToJSON TypeHierarchyOptions where
  toJSON x =
    object [(.?=) "workDoneProgress" (typeHierarchyOptionsWorkDoneProgress x)]

instance Default TypeHierarchyOptions where
  def = TypeHierarchyOptions { typeHierarchyOptionsWorkDoneProgress = def }

data TypeHierarchyOptions = TypeHierarchyOptions { typeHierarchyOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

