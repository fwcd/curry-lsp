-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ShowMessageRequestClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientShowMessageActionItemOptions
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ShowMessageRequestClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedMessageActionItem <- lookupMaybeFromJSON "messageActionItem"
                                       vs
           return
            ShowMessageRequestClientCapabilities { showMessageRequestClientCapabilitiesMessageActionItem = parsedMessageActionItem }
      _ ->
        Left
         ("Unrecognized ShowMessageRequestClientCapabilities value: "
           ++ ppJSON j)

instance ToJSON ShowMessageRequestClientCapabilities where
  toJSON x =
    object
     [(.?=) "messageActionItem"
       (showMessageRequestClientCapabilitiesMessageActionItem x)]

instance Default ShowMessageRequestClientCapabilities where
  def =
    ShowMessageRequestClientCapabilities { showMessageRequestClientCapabilitiesMessageActionItem = def }

data ShowMessageRequestClientCapabilities = ShowMessageRequestClientCapabilities { showMessageRequestClientCapabilitiesMessageActionItem :: Maybe ClientShowMessageActionItemOptions }
 deriving (Show,Eq)

