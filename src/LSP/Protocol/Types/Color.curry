-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.Color where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON Color where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRed <- lookupFromJSON "red" vs
           parsedGreen <- lookupFromJSON "green" vs
           parsedBlue <- lookupFromJSON "blue" vs
           parsedAlpha <- lookupFromJSON "alpha" vs
           return
            Color { colorRed = parsedRed
                  , colorGreen = parsedGreen
                  , colorBlue = parsedBlue
                  , colorAlpha = parsedAlpha }
      _ -> Left ("Unrecognized Color value: " ++ ppJSON j)

data Color = Color { colorRed :: Float
                   , colorGreen :: Float
                   , colorBlue :: Float
                   , colorAlpha :: Float }
 deriving (Show,Eq)

