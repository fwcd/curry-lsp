-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.MarkupKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON MarkupKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "plaintext" -> Right MarkupKindPlainText
         "markdown" -> Right MarkupKindMarkdown
         _ -> Left ("Unrecognized MarkupKind value: " ++ ppJSON j)

data MarkupKind = MarkupKindPlainText | MarkupKindMarkdown
 deriving (Show,Eq,Enum,Bounded,Ord)

