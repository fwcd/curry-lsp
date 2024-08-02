-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.UnregistrationParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Unregistration
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON UnregistrationParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUnregisterations <- lookupFromJSON "unregisterations" vs
           return
            UnregistrationParams { unregistrationParamsUnregisterations = parsedUnregisterations }
      _ -> Left ("Unrecognized UnregistrationParams value: " ++ ppJSON j)

instance ToJSON UnregistrationParams where
  toJSON x =
    object [(.=) "unregisterations" (unregistrationParamsUnregisterations x)]

instance Default UnregistrationParams where
  def = UnregistrationParams { unregistrationParamsUnregisterations = def }

data UnregistrationParams = UnregistrationParams { unregistrationParamsUnregisterations :: [Unregistration] }
 deriving (Show,Eq)

