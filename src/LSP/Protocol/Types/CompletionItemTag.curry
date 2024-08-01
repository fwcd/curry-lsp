-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionItemTag where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON CompletionItemTag where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right CompletionItemTagDeprecated
         _ -> Left ("Unrecognized CompletionItemTag value: " ++ ppJSON j)

data CompletionItemTag = CompletionItemTagDeprecated
 deriving (Show,Eq,Enum,Bounded,Ord)

