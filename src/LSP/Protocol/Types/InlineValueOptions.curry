-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineValueOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON InlineValueOptions where
  fromJSON j =
    case j of
      JObject vs -> do return InlineValueOptions {  }
      _ -> Left ("Unrecognized InlineValueOptions value: " ++ ppJSON j)

data InlineValueOptions = InlineValueOptions {  }
 deriving (Show,Eq)

