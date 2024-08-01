-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentHighlightOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentHighlightOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentHighlightOptions {  }
      _ -> Left ("Unrecognized DocumentHighlightOptions value: " ++ ppJSON j)

data DocumentHighlightOptions = DocumentHighlightOptions {  }
 deriving (Show,Eq)

