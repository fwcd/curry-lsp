-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineCompletionOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON InlineCompletionOptions where
  fromJSON j =
    case j of
      JObject vs -> do return InlineCompletionOptions {  }
      _ -> Left ("Unrecognized InlineCompletionOptions value: " ++ ppJSON j)

data InlineCompletionOptions = InlineCompletionOptions {  }
 deriving (Show,Eq)

