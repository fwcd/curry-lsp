-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SymbolInformation where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Location
import LSP.Utils.JSON

instance FromJSON SymbolInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDeprecated <- lookupMaybeFromJSON "deprecated" vs
           parsedLocation <- lookupFromJSON "location" vs
           return
            SymbolInformation { symbolInformationDeprecated = parsedDeprecated
                              , symbolInformationLocation = parsedLocation }
      _ -> Left ("Unrecognized SymbolInformation value: " ++ ppJSON j)

data SymbolInformation = SymbolInformation { symbolInformationDeprecated :: Maybe Bool
                                           , symbolInformationLocation :: Location }
 deriving (Show,Eq)

