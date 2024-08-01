-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookCellKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON NotebookCellKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right NotebookCellKindMarkup
         2 -> Right NotebookCellKindCode
         _ -> Left ("Unrecognized NotebookCellKind value: " ++ ppJSON j)

instance ToJSON NotebookCellKind where
  toJSON x =
    case x of
      NotebookCellKindMarkup -> toJSON 1
      NotebookCellKindCode -> toJSON 2

data NotebookCellKind = NotebookCellKindMarkup | NotebookCellKindCode
 deriving (Show,Eq,Enum,Bounded,Ord)

