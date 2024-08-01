-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ColorInformation where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Color
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON ColorInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedColor <- lookupFromJSON "color" vs
           return
            ColorInformation { colorInformationRange = parsedRange
                             , colorInformationColor = parsedColor }
      _ -> Left ("Unrecognized ColorInformation value: " ++ ppJSON j)

data ColorInformation = ColorInformation { colorInformationRange :: Range
                                         , colorInformationColor :: Color }
 deriving (Show,Eq)

