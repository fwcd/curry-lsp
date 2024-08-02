-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientCompletionItemInsertTextModeOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.InsertTextMode
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ClientCompletionItemInsertTextModeOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValueSet <- lookupFromJSON "valueSet" vs
           return
            ClientCompletionItemInsertTextModeOptions { clientCompletionItemInsertTextModeOptionsValueSet = parsedValueSet }
      _ ->
        Left
         ("Unrecognized ClientCompletionItemInsertTextModeOptions value: "
           ++ ppJSON j)

instance ToJSON ClientCompletionItemInsertTextModeOptions where
  toJSON x =
    object
     [(.=) "valueSet" (clientCompletionItemInsertTextModeOptionsValueSet x)]

instance Default ClientCompletionItemInsertTextModeOptions where
  def =
    ClientCompletionItemInsertTextModeOptions { clientCompletionItemInsertTextModeOptionsValueSet = def }

data ClientCompletionItemInsertTextModeOptions = ClientCompletionItemInsertTextModeOptions { clientCompletionItemInsertTextModeOptionsValueSet :: [InsertTextMode] }
 deriving (Show,Eq)

