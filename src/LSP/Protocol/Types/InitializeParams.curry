-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InitializeParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON InitializeParams where
  fromJSON j =
    case j of
      JObject vs -> do return InitializeParams {  }
      _ -> Left ("Unrecognized InitializeParams value: " ++ ppJSON j)

data InitializeParams = InitializeParams {  }
 deriving (Show,Eq)

