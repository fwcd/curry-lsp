-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CallHierarchyItem where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.Range
import LSP.Protocol.Types.SymbolKind
import LSP.Protocol.Types.SymbolTag
import LSP.Utils.JSON

instance FromJSON CallHierarchyItem where
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
            CallHierarchyItem { callHierarchyItemName = parsedName
                              , callHierarchyItemKind = parsedKind
                              , callHierarchyItemTags = parsedTags
                              , callHierarchyItemDetail = parsedDetail
                              , callHierarchyItemUri = parsedUri
                              , callHierarchyItemRange = parsedRange
                              , callHierarchyItemSelectionRange = parsedSelectionRange
                              , callHierarchyItemData = parsedData }
      _ -> Left ("Unrecognized CallHierarchyItem value: " ++ ppJSON j)

data CallHierarchyItem = CallHierarchyItem { callHierarchyItemName :: String
                                           , callHierarchyItemKind :: SymbolKind
                                           , callHierarchyItemTags :: Maybe [SymbolTag]
                                           , callHierarchyItemDetail :: Maybe String
                                           , callHierarchyItemUri :: DocumentUri
                                           , callHierarchyItemRange :: Range
                                           , callHierarchyItemSelectionRange :: Range
                                           , callHierarchyItemData :: Maybe LSPAny }
 deriving (Show,Eq)

