-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeHierarchyRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON TypeHierarchyRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return TypeHierarchyRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized TypeHierarchyRegistrationOptions value: " ++ ppJSON j)

data TypeHierarchyRegistrationOptions = TypeHierarchyRegistrationOptions {  }
 deriving (Show,Eq)

