-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentHighlightRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentHighlightRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentHighlightRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DocumentHighlightRegistrationOptions value: "
           ++ ppJSON j)

data DocumentHighlightRegistrationOptions = DocumentHighlightRegistrationOptions {  }
 deriving (Show,Eq)

