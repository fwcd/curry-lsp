-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ServerCompletionItemOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ServerCompletionItemOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabelDetailsSupport <- lookupMaybeFromJSON
                                         "labelDetailsSupport"
                                         vs
           return
            ServerCompletionItemOptions { serverCompletionItemOptionsLabelDetailsSupport = parsedLabelDetailsSupport }
      _ ->
        Left ("Unrecognized ServerCompletionItemOptions value: " ++ ppJSON j)

instance ToJSON ServerCompletionItemOptions where
  toJSON x =
    object
     [(.?=) "labelDetailsSupport"
       (serverCompletionItemOptionsLabelDetailsSupport x)]

data ServerCompletionItemOptions = ServerCompletionItemOptions { serverCompletionItemOptionsLabelDetailsSupport :: Maybe Bool }
 deriving (Show,Eq)

