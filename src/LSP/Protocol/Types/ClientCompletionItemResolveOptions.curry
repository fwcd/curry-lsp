-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientCompletionItemResolveOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ClientCompletionItemResolveOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedProperties <- lookupFromJSON "properties" vs
           return
            ClientCompletionItemResolveOptions { clientCompletionItemResolveOptionsProperties = parsedProperties }
      _ ->
        Left
         ("Unrecognized ClientCompletionItemResolveOptions value: "
           ++ ppJSON j)

instance ToJSON ClientCompletionItemResolveOptions where
  toJSON x =
    object
     [(.=) "properties" (clientCompletionItemResolveOptionsProperties x)]

data ClientCompletionItemResolveOptions = ClientCompletionItemResolveOptions { clientCompletionItemResolveOptionsProperties :: [String] }
 deriving (Show,Eq)

