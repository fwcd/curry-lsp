-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FoldingRangeClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientFoldingRangeKindOptions
import LSP.Protocol.Types.ClientFoldingRangeOptions
import LSP.Utils.JSON

instance FromJSON FoldingRangeClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedRangeLimit <- lookupMaybeFromJSON "rangeLimit" vs
           parsedLineFoldingOnly <- lookupMaybeFromJSON "lineFoldingOnly" vs
           parsedFoldingRangeKind <- lookupMaybeFromJSON "foldingRangeKind" vs
           parsedFoldingRange <- lookupMaybeFromJSON "foldingRange" vs
           return
            FoldingRangeClientCapabilities { foldingRangeClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                           , foldingRangeClientCapabilitiesRangeLimit = parsedRangeLimit
                                           , foldingRangeClientCapabilitiesLineFoldingOnly = parsedLineFoldingOnly
                                           , foldingRangeClientCapabilitiesFoldingRangeKind = parsedFoldingRangeKind
                                           , foldingRangeClientCapabilitiesFoldingRange = parsedFoldingRange }
      _ ->
        Left
         ("Unrecognized FoldingRangeClientCapabilities value: " ++ ppJSON j)

instance ToJSON FoldingRangeClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (foldingRangeClientCapabilitiesDynamicRegistration x),  (.?=)
                                                                "rangeLimit"
                                                                (foldingRangeClientCapabilitiesRangeLimit
                                                                  x),  (.?=)
                                                                        "lineFoldingOnly"
                                                                        (foldingRangeClientCapabilitiesLineFoldingOnly
                                                                          x),  (.?=)
                                                                                "foldingRangeKind"
                                                                                (foldingRangeClientCapabilitiesFoldingRangeKind
                                                                                  x),  (.?=)
                                                                                        "foldingRange"
                                                                                        (foldingRangeClientCapabilitiesFoldingRange
                                                                                          x)]

data FoldingRangeClientCapabilities = FoldingRangeClientCapabilities { foldingRangeClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                     , foldingRangeClientCapabilitiesRangeLimit :: Maybe Int
                                                                     , foldingRangeClientCapabilitiesLineFoldingOnly :: Maybe Bool
                                                                     , foldingRangeClientCapabilitiesFoldingRangeKind :: Maybe ClientFoldingRangeKindOptions
                                                                     , foldingRangeClientCapabilitiesFoldingRange :: Maybe ClientFoldingRangeOptions }
 deriving (Show,Eq)

