-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ConfigurationItem where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ConfigurationItem where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedScopeUri <- lookupMaybeFromJSON "scopeUri" vs
           parsedSection <- lookupMaybeFromJSON "section" vs
           return
            ConfigurationItem { configurationItemScopeUri = parsedScopeUri
                              , configurationItemSection = parsedSection }
      _ -> Left ("Unrecognized ConfigurationItem value: " ++ ppJSON j)

instance ToJSON ConfigurationItem where
  toJSON x =
    object
     [(.?=) "scopeUri" (configurationItemScopeUri x),  (.?=) "section"
                                                        (configurationItemSection
                                                          x)]

instance Default ConfigurationItem where
  def =
    ConfigurationItem { configurationItemScopeUri = def
                      , configurationItemSection = def }

data ConfigurationItem = ConfigurationItem { configurationItemScopeUri :: Maybe Uri
                                           , configurationItemSection :: Maybe String }
 deriving (Show,Eq)

