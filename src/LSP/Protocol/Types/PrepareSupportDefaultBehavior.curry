-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.PrepareSupportDefaultBehavior where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON PrepareSupportDefaultBehavior where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right PrepareSupportDefaultBehaviorIdentifier
         _ ->
           Left
            ("Unrecognized PrepareSupportDefaultBehavior value: " ++ ppJSON j)

data PrepareSupportDefaultBehavior = PrepareSupportDefaultBehaviorIdentifier
 deriving (Show,Eq,Enum,Bounded,Ord)

