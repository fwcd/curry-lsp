-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RegularExpressionsClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.RegularExpressionEngineKind
import LSP.Utils.JSON

instance FromJSON RegularExpressionsClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedEngine <- lookupFromJSON "engine" vs
           parsedVersion <- lookupMaybeFromJSON "version" vs
           return
            RegularExpressionsClientCapabilities { regularExpressionsClientCapabilitiesEngine = parsedEngine
                                                 , regularExpressionsClientCapabilitiesVersion = parsedVersion }
      _ ->
        Left
         ("Unrecognized RegularExpressionsClientCapabilities value: "
           ++ ppJSON j)

data RegularExpressionsClientCapabilities = RegularExpressionsClientCapabilities { regularExpressionsClientCapabilitiesEngine :: RegularExpressionEngineKind
                                                                                 , regularExpressionsClientCapabilitiesVersion :: Maybe String }
 deriving (Show,Eq)

