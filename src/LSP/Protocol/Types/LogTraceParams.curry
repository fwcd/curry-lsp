-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.LogTraceParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON LogTraceParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedMessage <- lookupFromJSON "message" vs
           parsedVerbose <- lookupMaybeFromJSON "verbose" vs
           return
            LogTraceParams { logTraceParamsMessage = parsedMessage
                           , logTraceParamsVerbose = parsedVerbose }
      _ -> Left ("Unrecognized LogTraceParams value: " ++ ppJSON j)

data LogTraceParams = LogTraceParams { logTraceParamsMessage :: String
                                     , logTraceParamsVerbose :: Maybe String }
 deriving (Show,Eq)
