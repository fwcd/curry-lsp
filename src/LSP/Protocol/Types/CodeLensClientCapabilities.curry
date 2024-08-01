-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeLensClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientCodeLensResolveOptions
import LSP.Utils.JSON

instance FromJSON CodeLensClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedResolveSupport <- lookupMaybeFromJSON "resolveSupport" vs
           return
            CodeLensClientCapabilities { codeLensClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                       , codeLensClientCapabilitiesResolveSupport = parsedResolveSupport }
      _ ->
        Left ("Unrecognized CodeLensClientCapabilities value: " ++ ppJSON j)

data CodeLensClientCapabilities = CodeLensClientCapabilities { codeLensClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                             , codeLensClientCapabilitiesResolveSupport :: Maybe ClientCodeLensResolveOptions }
 deriving (Show,Eq)

