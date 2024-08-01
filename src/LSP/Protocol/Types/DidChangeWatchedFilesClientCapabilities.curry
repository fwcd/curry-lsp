-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidChangeWatchedFilesClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DidChangeWatchedFilesClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedRelativePatternSupport <- lookupMaybeFromJSON
                                            "relativePatternSupport"
                                            vs
           return
            DidChangeWatchedFilesClientCapabilities { didChangeWatchedFilesClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                                    , didChangeWatchedFilesClientCapabilitiesRelativePatternSupport = parsedRelativePatternSupport }
      _ ->
        Left
         ("Unrecognized DidChangeWatchedFilesClientCapabilities value: "
           ++ ppJSON j)

data DidChangeWatchedFilesClientCapabilities = DidChangeWatchedFilesClientCapabilities { didChangeWatchedFilesClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                                       , didChangeWatchedFilesClientCapabilitiesRelativePatternSupport :: Maybe Bool }
 deriving (Show,Eq)

