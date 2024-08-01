-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeHierarchyPrepareParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON TypeHierarchyPrepareParams where
  fromJSON j =
    case j of
      JObject vs -> do return TypeHierarchyPrepareParams {  }
      _ ->
        Left ("Unrecognized TypeHierarchyPrepareParams value: " ++ ppJSON j)

data TypeHierarchyPrepareParams = TypeHierarchyPrepareParams {  }
 deriving (Show,Eq)

