-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.PositionEncodingKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON PositionEncodingKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "utf-8" -> Right PositionEncodingKindUTF8
         "utf-16" -> Right PositionEncodingKindUTF16
         "utf-32" -> Right PositionEncodingKindUTF32
         _ -> Left ("Unrecognized PositionEncodingKind value: " ++ ppJSON j)

data PositionEncodingKind = PositionEncodingKindUTF8
                          | PositionEncodingKindUTF16
                          | PositionEncodingKindUTF32
 deriving (Show,Eq,Enum,Bounded,Ord)

