-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.MessageType where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON MessageType where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right MessageTypeError
         2 -> Right MessageTypeWarning
         3 -> Right MessageTypeInfo
         4 -> Right MessageTypeLog
         5 -> Right MessageTypeDebug
         _ -> Left ("Unrecognized MessageType value: " ++ ppJSON j)

data MessageType = MessageTypeError
                 | MessageTypeWarning
                 | MessageTypeInfo
                 | MessageTypeLog
                 | MessageTypeDebug
 deriving (Show,Eq,Enum,Bounded,Ord)

