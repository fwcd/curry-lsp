-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentHighlightParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentHighlightParams where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentHighlightParams {  }
      _ -> Left ("Unrecognized DocumentHighlightParams value: " ++ ppJSON j)

data DocumentHighlightParams = DocumentHighlightParams {  }
 deriving (Show,Eq)

