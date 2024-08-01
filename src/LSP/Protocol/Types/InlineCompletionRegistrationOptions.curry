-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineCompletionRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON InlineCompletionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return InlineCompletionRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized InlineCompletionRegistrationOptions value: "
           ++ ppJSON j)

data InlineCompletionRegistrationOptions = InlineCompletionRegistrationOptions {  }
 deriving (Show,Eq)

