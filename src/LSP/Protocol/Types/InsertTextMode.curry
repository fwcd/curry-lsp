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

instance ToJSON InsertTextMode where
  toJSON x =
    case x of
      InsertTextModeAsIs -> toJSON 1
      InsertTextModeAdjustIndentation -> toJSON 2

data InsertTextMode = InsertTextModeAsIs | InsertTextModeAdjustIndentation
 deriving (Show,Eq,Enum,Bounded,Ord)

