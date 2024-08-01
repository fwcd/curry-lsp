-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InitializedParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON InitializedParams where
  fromJSON j =
    case j of
      JObject vs -> do return InitializedParams {  }
      _ -> Left ("Unrecognized InitializedParams value: " ++ ppJSON j)

data InitializedParams = InitializedParams {  }
 deriving (Show,Eq)

