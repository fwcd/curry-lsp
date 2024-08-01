-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentSymbol where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Protocol.Types.SymbolKind
import LSP.Protocol.Types.SymbolTag
import LSP.Utils.JSON

instance FromJSON DocumentSymbol where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedName <- lookupFromJSON "name" vs
           parsedDetail <- lookupMaybeFromJSON "detail" vs
           parsedKind <- lookupFromJSON "kind" vs
           parsedTags <- lookupMaybeFromJSON "tags" vs
           parsedDeprecated <- lookupMaybeFromJSON "deprecated" vs
           parsedRange <- lookupFromJSON "range" vs
           parsedSelectionRange <- lookupFromJSON "selectionRange" vs
           parsedChildren <- lookupMaybeFromJSON "children" vs
           return
            DocumentSymbol { documentSymbolName = parsedName
                           , documentSymbolDetail = parsedDetail
                           , documentSymbolKind = parsedKind
                           , documentSymbolTags = parsedTags
                           , documentSymbolDeprecated = parsedDeprecated
                           , documentSymbolRange = parsedRange
                           , documentSymbolSelectionRange = parsedSelectionRange
                           , documentSymbolChildren = parsedChildren }
      _ -> Left ("Unrecognized DocumentSymbol value: " ++ ppJSON j)

instance ToJSON DocumentSymbol where
  toJSON x =
    object
     [(.=) "name" (documentSymbolName x),  (.?=) "detail"
                                            (documentSymbolDetail x),  (.=)
                                                                        "kind"
                                                                        (documentSymbolKind
                                                                          x),  (.?=)
                                                                                "tags"
                                                                                (documentSymbolTags
                                                                                  x),  (.?=)
                                                                                        "deprecated"
                                                                                        (documentSymbolDeprecated
                                                                                          x),  (.=)
                                                                                                "range"
                                                                                                (documentSymbolRange
                                                                                                  x),  (.=)
                                                                                                        "selectionRange"
                                                                                                        (documentSymbolSelectionRange
                                                                                                          x),  (.?=)
                                                                                                                "children"
                                                                                                                (documentSymbolChildren
                                                                                                                  x)]

data DocumentSymbol = DocumentSymbol { documentSymbolName :: String
                                     , documentSymbolDetail :: Maybe String
                                     , documentSymbolKind :: SymbolKind
                                     , documentSymbolTags :: Maybe [SymbolTag]
                                     , documentSymbolDeprecated :: Maybe Bool
                                     , documentSymbolRange :: Range
                                     , documentSymbolSelectionRange :: Range
                                     , documentSymbolChildren :: Maybe [DocumentSymbol] }
 deriving (Show,Eq)

