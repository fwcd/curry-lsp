-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SelectionRange where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON SelectionRange where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedParent <- lookupMaybeFromJSON "parent" vs
           return
            SelectionRange { selectionRangeRange = parsedRange
                           , selectionRangeParent = parsedParent }
      _ -> Left ("Unrecognized SelectionRange value: " ++ ppJSON j)

instance ToJSON SelectionRange where
  toJSON x =
    object
     [(.=) "range" (selectionRangeRange x),  (.?=) "parent"
                                              (selectionRangeParent x)]

data SelectionRange = SelectionRange { selectionRangeRange :: Range
                                     , selectionRangeParent :: Maybe SelectionRange }
 deriving (Show,Eq)

