-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeDefinitionParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON TypeDefinitionParams where
  fromJSON j =
    case j of
      JObject vs -> do return TypeDefinitionParams {  }
      _ -> Left ("Unrecognized TypeDefinitionParams value: " ++ ppJSON j)

data TypeDefinitionParams = TypeDefinitionParams {  }
 deriving (Show,Eq)

