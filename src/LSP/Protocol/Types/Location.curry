-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.Location where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON Location where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedRange <- lookupFromJSON "range" vs
           return
            Location { locationUri = parsedUri, locationRange = parsedRange }
      _ -> Left ("Unrecognized Location value: " ++ ppJSON j)

data Location = Location { locationUri :: DocumentUri
                         , locationRange :: Range }
 deriving (Show,Eq)

