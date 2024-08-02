-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.LocationUriOnly where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON LocationUriOnly where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           return LocationUriOnly { locationUriOnlyUri = parsedUri }
      _ -> Left ("Unrecognized LocationUriOnly value: " ++ ppJSON j)

instance ToJSON LocationUriOnly where
  toJSON x = object [(.=) "uri" (locationUriOnlyUri x)]

instance Default LocationUriOnly where
  def = LocationUriOnly { locationUriOnlyUri = def }

data LocationUriOnly = LocationUriOnly { locationUriOnlyUri :: DocumentUri }
 deriving (Show,Eq)

