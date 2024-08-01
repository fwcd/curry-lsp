-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InsertReplaceEdit where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON InsertReplaceEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNewText <- lookupFromJSON "newText" vs
           parsedInsert <- lookupFromJSON "insert" vs
           parsedReplace <- lookupFromJSON "replace" vs
           return
            InsertReplaceEdit { insertReplaceEditNewText = parsedNewText
                              , insertReplaceEditInsert = parsedInsert
                              , insertReplaceEditReplace = parsedReplace }
      _ -> Left ("Unrecognized InsertReplaceEdit value: " ++ ppJSON j)

instance ToJSON InsertReplaceEdit where
  toJSON x =
    object
     [(.=) "newText" (insertReplaceEditNewText x),  (.=) "insert"
                                                     (insertReplaceEditInsert
                                                       x),  (.=) "replace"
                                                             (insertReplaceEditReplace
                                                               x)]

data InsertReplaceEdit = InsertReplaceEdit { insertReplaceEditNewText :: String
                                           , insertReplaceEditInsert :: Range
                                           , insertReplaceEditReplace :: Range }
 deriving (Show,Eq)

