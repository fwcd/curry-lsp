-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.EditRangeWithInsertReplace where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON EditRangeWithInsertReplace where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedInsert <- lookupFromJSON "insert" vs
           parsedReplace <- lookupFromJSON "replace" vs
           return
            EditRangeWithInsertReplace { editRangeWithInsertReplaceInsert = parsedInsert
                                       , editRangeWithInsertReplaceReplace = parsedReplace }
      _ ->
        Left ("Unrecognized EditRangeWithInsertReplace value: " ++ ppJSON j)

instance ToJSON EditRangeWithInsertReplace where
  toJSON x =
    object
     [(.=) "insert" (editRangeWithInsertReplaceInsert x),  (.=) "replace"
                                                            (editRangeWithInsertReplaceReplace
                                                              x)]

data EditRangeWithInsertReplace = EditRangeWithInsertReplace { editRangeWithInsertReplaceInsert :: Range
                                                             , editRangeWithInsertReplaceReplace :: Range }
 deriving (Show,Eq)

