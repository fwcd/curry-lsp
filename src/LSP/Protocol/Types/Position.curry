-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.Position where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON Position where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLine <- lookupFromJSON "line" vs
           parsedCharacter <- lookupFromJSON "character" vs
           return
            Position { positionLine = parsedLine
                     , positionCharacter = parsedCharacter }
      _ -> Left ("Unrecognized Position value: " ++ ppJSON j)

instance ToJSON Position where
  toJSON x =
    object
     [(.=) "line" (positionLine x),  (.=) "character" (positionCharacter x)]

data Position = Position { positionLine :: Int, positionCharacter :: Int }
 deriving (Show,Eq)

