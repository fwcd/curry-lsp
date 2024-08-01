-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CallHierarchyRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON CallHierarchyRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return CallHierarchyRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized CallHierarchyRegistrationOptions value: " ++ ppJSON j)

data CallHierarchyRegistrationOptions = CallHierarchyRegistrationOptions {  }
 deriving (Show,Eq)

