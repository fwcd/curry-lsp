-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookCellArrayChange where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.NotebookCell
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON NotebookCellArrayChange where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedStart <- lookupFromJSON "start" vs
           parsedDeleteCount <- lookupFromJSON "deleteCount" vs
           parsedCells <- lookupMaybeFromJSON "cells" vs
           return
            NotebookCellArrayChange { notebookCellArrayChangeStart = parsedStart
                                    , notebookCellArrayChangeDeleteCount = parsedDeleteCount
                                    , notebookCellArrayChangeCells = parsedCells }
      _ -> Left ("Unrecognized NotebookCellArrayChange value: " ++ ppJSON j)

instance ToJSON NotebookCellArrayChange where
  toJSON x =
    object
     [(.=) "start" (notebookCellArrayChangeStart x),  (.=) "deleteCount"
                                                       (notebookCellArrayChangeDeleteCount
                                                         x),  (.?=) "cells"
                                                               (notebookCellArrayChangeCells
                                                                 x)]

instance Default NotebookCellArrayChange where
  def =
    NotebookCellArrayChange { notebookCellArrayChangeStart = def
                            , notebookCellArrayChangeDeleteCount = def
                            , notebookCellArrayChangeCells = def }

data NotebookCellArrayChange = NotebookCellArrayChange { notebookCellArrayChangeStart :: Int
                                                       , notebookCellArrayChangeDeleteCount :: Int
                                                       , notebookCellArrayChangeCells :: Maybe [NotebookCell] }
 deriving (Show,Eq)

