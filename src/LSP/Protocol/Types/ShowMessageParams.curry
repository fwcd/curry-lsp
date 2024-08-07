-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ShowMessageParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.MessageType
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ShowMessageParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedType <- lookupFromJSON "type" vs
           parsedMessage <- lookupFromJSON "message" vs
           return
            ShowMessageParams { showMessageParamsType = parsedType
                              , showMessageParamsMessage = parsedMessage }
      _ -> Left ("Unrecognized ShowMessageParams value: " ++ ppJSON j)

instance ToJSON ShowMessageParams where
  toJSON x =
    object
     [(.=) "type" (showMessageParamsType x),  (.=) "message"
                                               (showMessageParamsMessage x)]

instance Default ShowMessageParams where
  def =
    ShowMessageParams { showMessageParamsType = def
                      , showMessageParamsMessage = def }

data ShowMessageParams = ShowMessageParams { showMessageParamsType :: MessageType
                                           , showMessageParamsMessage :: String }
 deriving (Show,Eq)

