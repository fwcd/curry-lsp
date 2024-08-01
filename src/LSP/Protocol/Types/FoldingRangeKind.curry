-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FoldingRangeKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON FoldingRangeKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "comment" -> Right FoldingRangeKindComment
         "imports" -> Right FoldingRangeKindImports
         "region" -> Right FoldingRangeKindRegion
         _ -> Left ("Unrecognized FoldingRangeKind value: " ++ ppJSON j)

instance ToJSON FoldingRangeKind where
  toJSON x =
    case x of
      FoldingRangeKindComment -> toJSON "comment"
      FoldingRangeKindImports -> toJSON "imports"
      FoldingRangeKindRegion -> toJSON "region"

data FoldingRangeKind = FoldingRangeKindComment
                      | FoldingRangeKindImports
                      | FoldingRangeKindRegion
 deriving (Show,Eq,Enum,Bounded,Ord)

