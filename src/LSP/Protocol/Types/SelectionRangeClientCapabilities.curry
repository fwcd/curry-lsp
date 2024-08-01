-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SelectionRangeClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON SelectionRangeClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            SelectionRangeClientCapabilities { selectionRangeClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized SelectionRangeClientCapabilities value: " ++ ppJSON j)

instance ToJSON SelectionRangeClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (selectionRangeClientCapabilitiesDynamicRegistration x)]

data SelectionRangeClientCapabilities = SelectionRangeClientCapabilities { selectionRangeClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

