-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.PrepareRenamePlaceholder where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON PrepareRenamePlaceholder where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedPlaceholder <- lookupFromJSON "placeholder" vs
           return
            PrepareRenamePlaceholder { prepareRenamePlaceholderRange = parsedRange
                                     , prepareRenamePlaceholderPlaceholder = parsedPlaceholder }
      _ -> Left ("Unrecognized PrepareRenamePlaceholder value: " ++ ppJSON j)

data PrepareRenamePlaceholder = PrepareRenamePlaceholder { prepareRenamePlaceholderRange :: Range
                                                         , prepareRenamePlaceholderPlaceholder :: String }
 deriving (Show,Eq)

