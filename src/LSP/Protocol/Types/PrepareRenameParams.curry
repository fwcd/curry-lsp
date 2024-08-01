-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.PrepareRenameParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON PrepareRenameParams where
  fromJSON j =
    case j of
      JObject vs -> do return PrepareRenameParams {  }
      _ -> Left ("Unrecognized PrepareRenameParams value: " ++ ppJSON j)

data PrepareRenameParams = PrepareRenameParams {  }
 deriving (Show,Eq)

