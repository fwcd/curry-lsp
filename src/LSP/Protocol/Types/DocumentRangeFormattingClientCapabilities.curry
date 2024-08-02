-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentRangeFormattingClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DocumentRangeFormattingClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedRangesSupport <- lookupMaybeFromJSON "rangesSupport" vs
           return
            DocumentRangeFormattingClientCapabilities { documentRangeFormattingClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                                      , documentRangeFormattingClientCapabilitiesRangesSupport = parsedRangesSupport }
      _ ->
        Left
         ("Unrecognized DocumentRangeFormattingClientCapabilities value: "
           ++ ppJSON j)

instance ToJSON DocumentRangeFormattingClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (documentRangeFormattingClientCapabilitiesDynamicRegistration
         x),  (.?=) "rangesSupport"
               (documentRangeFormattingClientCapabilitiesRangesSupport x)]

instance Default DocumentRangeFormattingClientCapabilities where
  def =
    DocumentRangeFormattingClientCapabilities { documentRangeFormattingClientCapabilitiesDynamicRegistration = def
                                              , documentRangeFormattingClientCapabilitiesRangesSupport = def }

data DocumentRangeFormattingClientCapabilities = DocumentRangeFormattingClientCapabilities { documentRangeFormattingClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                                           , documentRangeFormattingClientCapabilitiesRangesSupport :: Maybe Bool }
 deriving (Show,Eq)

