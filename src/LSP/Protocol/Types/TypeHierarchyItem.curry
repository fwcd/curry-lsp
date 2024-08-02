-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeHierarchyItem where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.Range
import LSP.Protocol.Types.SymbolKind
import LSP.Protocol.Types.SymbolTag
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON TypeHierarchyItem where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedName <- lookupFromJSON "name" vs
           parsedKind <- lookupFromJSON "kind" vs
           parsedTags <- lookupMaybeFromJSON "tags" vs
           parsedDetail <- lookupMaybeFromJSON "detail" vs
           parsedUri <- lookupFromJSON "uri" vs
           parsedRange <- lookupFromJSON "range" vs
           parsedSelectionRange <- lookupFromJSON "selectionRange" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            TypeHierarchyItem { typeHierarchyItemName = parsedName
                              , typeHierarchyItemKind = parsedKind
                              , typeHierarchyItemTags = parsedTags
                              , typeHierarchyItemDetail = parsedDetail
                              , typeHierarchyItemUri = parsedUri
                              , typeHierarchyItemRange = parsedRange
                              , typeHierarchyItemSelectionRange = parsedSelectionRange
                              , typeHierarchyItemData = parsedData }
      _ -> Left ("Unrecognized TypeHierarchyItem value: " ++ ppJSON j)

instance ToJSON TypeHierarchyItem where
  toJSON x =
    object
     [(.=) "name" (typeHierarchyItemName x),  (.=) "kind"
                                               (typeHierarchyItemKind
                                                 x),  (.?=) "tags"
                                                       (typeHierarchyItemTags
                                                         x),  (.?=) "detail"
                                                               (typeHierarchyItemDetail
                                                                 x),  (.=)
                                                                       "uri"
                                                                       (typeHierarchyItemUri
                                                                         x),  (.=)
                                                                               "range"
                                                                               (typeHierarchyItemRange
                                                                                 x),  (.=)
                                                                                       "selectionRange"
                                                                                       (typeHierarchyItemSelectionRange
                                                                                         x),  (.?=)
                                                                                               "data"
                                                                                               (typeHierarchyItemData
                                                                                                 x)]

instance Default TypeHierarchyItem where
  def =
    TypeHierarchyItem { typeHierarchyItemName = def
                      , typeHierarchyItemKind = def
                      , typeHierarchyItemTags = def
                      , typeHierarchyItemDetail = def
                      , typeHierarchyItemUri = def
                      , typeHierarchyItemRange = def
                      , typeHierarchyItemSelectionRange = def
                      , typeHierarchyItemData = def }

data TypeHierarchyItem = TypeHierarchyItem { typeHierarchyItemName :: String
                                           , typeHierarchyItemKind :: SymbolKind
                                           , typeHierarchyItemTags :: Maybe [SymbolTag]
                                           , typeHierarchyItemDetail :: Maybe String
                                           , typeHierarchyItemUri :: DocumentUri
                                           , typeHierarchyItemRange :: Range
                                           , typeHierarchyItemSelectionRange :: Range
                                           , typeHierarchyItemData :: Maybe LSPAny }
 deriving (Show,Eq)

