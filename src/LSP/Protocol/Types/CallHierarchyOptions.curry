-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CallHierarchyOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CallHierarchyOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            CallHierarchyOptions { callHierarchyOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized CallHierarchyOptions value: " ++ ppJSON j)

instance ToJSON CallHierarchyOptions where
  toJSON x =
    object [(.?=) "workDoneProgress" (callHierarchyOptionsWorkDoneProgress x)]

instance Default CallHierarchyOptions where
  def = CallHierarchyOptions { callHierarchyOptionsWorkDoneProgress = def }

data CallHierarchyOptions = CallHierarchyOptions { callHierarchyOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

