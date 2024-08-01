-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentRangeFormattingOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentRangeFormattingOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRangesSupport <- lookupMaybeFromJSON "rangesSupport" vs
           return
            DocumentRangeFormattingOptions { documentRangeFormattingOptionsRangesSupport = parsedRangesSupport }
      _ ->
        Left
         ("Unrecognized DocumentRangeFormattingOptions value: " ++ ppJSON j)

data DocumentRangeFormattingOptions = DocumentRangeFormattingOptions { documentRangeFormattingOptionsRangesSupport :: Maybe Bool }
 deriving (Show,Eq)

