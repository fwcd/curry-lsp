-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SymbolInformation where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Location
import LSP.Protocol.Types.SymbolKind
import LSP.Protocol.Types.SymbolTag
import LSP.Utils.JSON

instance FromJSON SymbolInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedName <- lookupFromJSON "name" vs
           parsedKind <- lookupFromJSON "kind" vs
           parsedTags <- lookupMaybeFromJSON "tags" vs
           parsedContainerName <- lookupMaybeFromJSON "containerName" vs
           parsedDeprecated <- lookupMaybeFromJSON "deprecated" vs
           parsedLocation <- lookupFromJSON "location" vs
           return
            SymbolInformation { symbolInformationName = parsedName
                              , symbolInformationKind = parsedKind
                              , symbolInformationTags = parsedTags
                              , symbolInformationContainerName = parsedContainerName
                              , symbolInformationDeprecated = parsedDeprecated
                              , symbolInformationLocation = parsedLocation }
      _ -> Left ("Unrecognized SymbolInformation value: " ++ ppJSON j)

instance ToJSON SymbolInformation where
  toJSON x =
    object
     [(.=) "name" (symbolInformationName x),  (.=) "kind"
                                               (symbolInformationKind
                                                 x),  (.?=) "tags"
                                                       (symbolInformationTags
                                                         x),  (.?=)
                                                               "containerName"
                                                               (symbolInformationContainerName
                                                                 x),  (.?=)
                                                                       "deprecated"
                                                                       (symbolInformationDeprecated
                                                                         x),  (.=)
                                                                               "location"
                                                                               (symbolInformationLocation
                                                                                 x)]

data SymbolInformation = SymbolInformation { symbolInformationName :: String
                                           , symbolInformationKind :: SymbolKind
                                           , symbolInformationTags :: Maybe [SymbolTag]
                                           , symbolInformationContainerName :: Maybe String
                                           , symbolInformationDeprecated :: Maybe Bool
                                           , symbolInformationLocation :: Location }
 deriving (Show,Eq)

