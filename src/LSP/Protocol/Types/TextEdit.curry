-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextEdit where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON TextEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedNewText <- lookupFromJSON "newText" vs
           return
            TextEdit { textEditRange = parsedRange
                     , textEditNewText = parsedNewText }
      _ -> Left ("Unrecognized TextEdit value: " ++ ppJSON j)

instance ToJSON TextEdit where
  toJSON x =
    object
     [(.=) "range" (textEditRange x),  (.=) "newText" (textEditNewText x)]

instance Default TextEdit where
  def = TextEdit { textEditRange = def, textEditNewText = def }

data TextEdit = TextEdit { textEditRange :: Range, textEditNewText :: String }
 deriving (Show,Eq)

