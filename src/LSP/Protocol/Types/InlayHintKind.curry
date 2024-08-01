-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlayHintKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON InlayHintKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right InlayHintKindType
         2 -> Right InlayHintKindParameter
         _ -> Left ("Unrecognized InlayHintKind value: " ++ ppJSON j)

data InlayHintKind = InlayHintKindType | InlayHintKindParameter
 deriving (Show,Eq,Enum,Bounded,Ord)

