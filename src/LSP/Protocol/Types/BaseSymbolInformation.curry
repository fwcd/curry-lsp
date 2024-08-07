-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.BaseSymbolInformation where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.SymbolKind
import LSP.Protocol.Types.SymbolTag
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON BaseSymbolInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedName <- lookupFromJSON "name" vs
           parsedKind <- lookupFromJSON "kind" vs
           parsedTags <- lookupMaybeFromJSON "tags" vs
           parsedContainerName <- lookupMaybeFromJSON "containerName" vs
           return
            BaseSymbolInformation { baseSymbolInformationName = parsedName
                                  , baseSymbolInformationKind = parsedKind
                                  , baseSymbolInformationTags = parsedTags
                                  , baseSymbolInformationContainerName = parsedContainerName }
      _ -> Left ("Unrecognized BaseSymbolInformation value: " ++ ppJSON j)

instance ToJSON BaseSymbolInformation where
  toJSON x =
    object
     [(.=) "name" (baseSymbolInformationName x),  (.=) "kind"
                                                   (baseSymbolInformationKind
                                                     x),  (.?=) "tags"
                                                           (baseSymbolInformationTags
                                                             x),  (.?=)
                                                                   "containerName"
                                                                   (baseSymbolInformationContainerName
                                                                     x)]

instance Default BaseSymbolInformation where
  def =
    BaseSymbolInformation { baseSymbolInformationName = def
                          , baseSymbolInformationKind = def
                          , baseSymbolInformationTags = def
                          , baseSymbolInformationContainerName = def }

data BaseSymbolInformation = BaseSymbolInformation { baseSymbolInformationName :: String
                                                   , baseSymbolInformationKind :: SymbolKind
                                                   , baseSymbolInformationTags :: Maybe [SymbolTag]
                                                   , baseSymbolInformationContainerName :: Maybe String }
 deriving (Show,Eq)

