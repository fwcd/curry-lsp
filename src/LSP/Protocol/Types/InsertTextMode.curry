-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InsertTextMode where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON InsertTextMode where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right InsertTextModeAsIs
         2 -> Right InsertTextModeAdjustIndentation
         _ -> Left ("Unrecognized InsertTextMode value: " ++ ppJSON j)

data InsertTextMode = InsertTextModeAsIs | InsertTextModeAdjustIndentation
 deriving (Show,Eq,Enum,Bounded,Ord)

