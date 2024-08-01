-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ShowMessageRequestParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.MessageActionItem
import LSP.Protocol.Types.MessageType
import LSP.Utils.JSON

instance FromJSON ShowMessageRequestParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedType <- lookupFromJSON "type" vs
           parsedMessage <- lookupFromJSON "message" vs
           parsedActions <- lookupMaybeFromJSON "actions" vs
           return
            ShowMessageRequestParams { showMessageRequestParamsType = parsedType
                                     , showMessageRequestParamsMessage = parsedMessage
                                     , showMessageRequestParamsActions = parsedActions }
      _ -> Left ("Unrecognized ShowMessageRequestParams value: " ++ ppJSON j)

instance ToJSON ShowMessageRequestParams where
  toJSON x =
    object
     [(.=) "type" (showMessageRequestParamsType x),  (.=) "message"
                                                      (showMessageRequestParamsMessage
                                                        x),  (.?=) "actions"
                                                              (showMessageRequestParamsActions
                                                                x)]

data ShowMessageRequestParams = ShowMessageRequestParams { showMessageRequestParamsType :: MessageType
                                                         , showMessageRequestParamsMessage :: String
                                                         , showMessageRequestParamsActions :: Maybe [MessageActionItem] }
 deriving (Show,Eq)

