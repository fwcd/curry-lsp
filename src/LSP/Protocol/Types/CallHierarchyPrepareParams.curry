-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CallHierarchyPrepareParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON CallHierarchyPrepareParams where
  fromJSON j =
    case j of
      JObject vs -> do return CallHierarchyPrepareParams {  }
      _ ->
        Left ("Unrecognized CallHierarchyPrepareParams value: " ++ ppJSON j)

data CallHierarchyPrepareParams = CallHierarchyPrepareParams {  }
 deriving (Show,Eq)

