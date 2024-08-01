-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TraceValue where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON TraceValue where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "off" -> Right TraceValueOff
         "messages" -> Right TraceValueMessages
         "verbose" -> Right TraceValueVerbose
         _ -> Left ("Unrecognized TraceValue value: " ++ ppJSON j)

data TraceValue = TraceValueOff | TraceValueMessages | TraceValueVerbose
 deriving (Show,Eq,Enum,Bounded,Ord)

