-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DefinitionOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DefinitionOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DefinitionOptions {  }
      _ -> Left ("Unrecognized DefinitionOptions value: " ++ ppJSON j)

data DefinitionOptions = DefinitionOptions {  }
 deriving (Show,Eq)

