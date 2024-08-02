-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.PrepareSupportDefaultBehavior where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON PrepareSupportDefaultBehavior where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right PrepareSupportDefaultBehaviorIdentifier
         _ ->
           Left
            ("Unrecognized PrepareSupportDefaultBehavior value: " ++ ppJSON j)

instance ToJSON PrepareSupportDefaultBehavior where
  toJSON x = case x of PrepareSupportDefaultBehaviorIdentifier -> toJSON 1

instance Default PrepareSupportDefaultBehavior where
  def = PrepareSupportDefaultBehaviorIdentifier

data PrepareSupportDefaultBehavior = PrepareSupportDefaultBehaviorIdentifier
 deriving (Show,Eq,Enum,Bounded,Ord)

