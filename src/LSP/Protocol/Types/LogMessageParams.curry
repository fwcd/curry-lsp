-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.LogMessageParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.MessageType
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON LogMessageParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedType <- lookupFromJSON "type" vs
           parsedMessage <- lookupFromJSON "message" vs
           return
            LogMessageParams { logMessageParamsType = parsedType
                             , logMessageParamsMessage = parsedMessage }
      _ -> Left ("Unrecognized LogMessageParams value: " ++ ppJSON j)

instance ToJSON LogMessageParams where
  toJSON x =
    object
     [(.=) "type" (logMessageParamsType x),  (.=) "message"
                                              (logMessageParamsMessage x)]

instance Default LogMessageParams where
  def =
    LogMessageParams { logMessageParamsType = def
                     , logMessageParamsMessage = def }

data LogMessageParams = LogMessageParams { logMessageParamsType :: MessageType
                                         , logMessageParamsMessage :: String }
 deriving (Show,Eq)

