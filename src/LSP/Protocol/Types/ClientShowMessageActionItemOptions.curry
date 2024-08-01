-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientShowMessageActionItemOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ClientShowMessageActionItemOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedAdditionalPropertiesSupport <- lookupMaybeFromJSON
                                                 "additionalPropertiesSupport"
                                                 vs
           return
            ClientShowMessageActionItemOptions { clientShowMessageActionItemOptionsAdditionalPropertiesSupport = parsedAdditionalPropertiesSupport }
      _ ->
        Left
         ("Unrecognized ClientShowMessageActionItemOptions value: "
           ++ ppJSON j)

data ClientShowMessageActionItemOptions = ClientShowMessageActionItemOptions { clientShowMessageActionItemOptionsAdditionalPropertiesSupport :: Maybe Bool }
 deriving (Show,Eq)

