-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentHighlightKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentHighlightKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right DocumentHighlightKindText
         2 -> Right DocumentHighlightKindRead
         3 -> Right DocumentHighlightKindWrite
         _ -> Left ("Unrecognized DocumentHighlightKind value: " ++ ppJSON j)

data DocumentHighlightKind = DocumentHighlightKindText
                           | DocumentHighlightKindRead
                           | DocumentHighlightKindWrite
 deriving (Show,Eq,Enum,Bounded,Ord)

