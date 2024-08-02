-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.MessageActionItem where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON MessageActionItem where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTitle <- lookupFromJSON "title" vs
           return MessageActionItem { messageActionItemTitle = parsedTitle }
      _ -> Left ("Unrecognized MessageActionItem value: " ++ ppJSON j)

instance ToJSON MessageActionItem where
  toJSON x = object [(.=) "title" (messageActionItemTitle x)]

instance Default MessageActionItem where
  def = MessageActionItem { messageActionItemTitle = def }

data MessageActionItem = MessageActionItem { messageActionItemTitle :: String }
 deriving (Show,Eq)

