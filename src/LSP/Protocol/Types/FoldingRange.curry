-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FoldingRange where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FoldingRangeKind
import LSP.Utils.JSON

instance FromJSON FoldingRange where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedStartLine <- lookupFromJSON "startLine" vs
           parsedStartCharacter <- lookupMaybeFromJSON "startCharacter" vs
           parsedEndLine <- lookupFromJSON "endLine" vs
           parsedEndCharacter <- lookupMaybeFromJSON "endCharacter" vs
           parsedKind <- lookupMaybeFromJSON "kind" vs
           parsedCollapsedText <- lookupMaybeFromJSON "collapsedText" vs
           return
            FoldingRange { foldingRangeStartLine = parsedStartLine
                         , foldingRangeStartCharacter = parsedStartCharacter
                         , foldingRangeEndLine = parsedEndLine
                         , foldingRangeEndCharacter = parsedEndCharacter
                         , foldingRangeKind = parsedKind
                         , foldingRangeCollapsedText = parsedCollapsedText }
      _ -> Left ("Unrecognized FoldingRange value: " ++ ppJSON j)

instance ToJSON FoldingRange where
  toJSON x =
    object
     [(.=) "startLine" (foldingRangeStartLine x),  (.?=) "startCharacter"
                                                    (foldingRangeStartCharacter
                                                      x),  (.=) "endLine"
                                                            (foldingRangeEndLine
                                                              x),  (.?=)
                                                                    "endCharacter"
                                                                    (foldingRangeEndCharacter
                                                                      x),  (.?=)
                                                                            "kind"
                                                                            (foldingRangeKind
                                                                              x),  (.?=)
                                                                                    "collapsedText"
                                                                                    (foldingRangeCollapsedText
                                                                                      x)]

data FoldingRange = FoldingRange { foldingRangeStartLine :: Int
                                 , foldingRangeStartCharacter :: Maybe Int
                                 , foldingRangeEndLine :: Int
                                 , foldingRangeEndCharacter :: Maybe Int
                                 , foldingRangeKind :: Maybe FoldingRangeKind
                                 , foldingRangeCollapsedText :: Maybe String }
 deriving (Show,Eq)

