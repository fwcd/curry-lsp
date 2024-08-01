-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidChangeConfigurationParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Utils.JSON

instance FromJSON DidChangeConfigurationParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSettings <- lookupFromJSON "settings" vs
           return
            DidChangeConfigurationParams { didChangeConfigurationParamsSettings = parsedSettings }
      _ ->
        Left ("Unrecognized DidChangeConfigurationParams value: " ++ ppJSON j)

data DidChangeConfigurationParams = DidChangeConfigurationParams { didChangeConfigurationParamsSettings :: LSPAny }
 deriving (Show,Eq)

