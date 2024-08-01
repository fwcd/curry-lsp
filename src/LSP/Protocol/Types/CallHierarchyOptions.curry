-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CallHierarchyOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON CallHierarchyOptions where
  fromJSON j =
    case j of
      JObject vs -> do return CallHierarchyOptions {  }
      _ -> Left ("Unrecognized CallHierarchyOptions value: " ++ ppJSON j)

data CallHierarchyOptions = CallHierarchyOptions {  }
 deriving (Show,Eq)
