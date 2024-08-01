-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.PublishDiagnosticsClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON PublishDiagnosticsClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedVersionSupport <- lookupMaybeFromJSON "versionSupport" vs
           return
            PublishDiagnosticsClientCapabilities { publishDiagnosticsClientCapabilitiesVersionSupport = parsedVersionSupport }
      _ ->
        Left
         ("Unrecognized PublishDiagnosticsClientCapabilities value: "
           ++ ppJSON j)

data PublishDiagnosticsClientCapabilities = PublishDiagnosticsClientCapabilities { publishDiagnosticsClientCapabilitiesVersionSupport :: Maybe Bool }
 deriving (Show,Eq)

