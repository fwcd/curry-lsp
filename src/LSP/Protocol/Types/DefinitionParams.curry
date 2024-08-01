-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DefinitionParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DefinitionParams where
  fromJSON j =
    case j of
      JObject vs -> do return DefinitionParams {  }
      _ -> Left ("Unrecognized DefinitionParams value: " ++ ppJSON j)

data DefinitionParams = DefinitionParams {  }
 deriving (Show,Eq)

