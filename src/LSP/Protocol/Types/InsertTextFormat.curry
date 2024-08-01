-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InsertTextFormat where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON InsertTextFormat where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right InsertTextFormatPlainText
         2 -> Right InsertTextFormatSnippet
         _ -> Left ("Unrecognized InsertTextFormat value: " ++ ppJSON j)

data InsertTextFormat = InsertTextFormatPlainText | InsertTextFormatSnippet
 deriving (Show,Eq,Enum,Bounded,Ord)

