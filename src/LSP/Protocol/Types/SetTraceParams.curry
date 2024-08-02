-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SetTraceParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TraceValue
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SetTraceParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValue <- lookupFromJSON "value" vs
           return SetTraceParams { setTraceParamsValue = parsedValue }
      _ -> Left ("Unrecognized SetTraceParams value: " ++ ppJSON j)

instance ToJSON SetTraceParams where
  toJSON x = object [(.=) "value" (setTraceParamsValue x)]

instance Default SetTraceParams where
  def = SetTraceParams { setTraceParamsValue = def }

data SetTraceParams = SetTraceParams { setTraceParamsValue :: TraceValue }
 deriving (Show,Eq)

