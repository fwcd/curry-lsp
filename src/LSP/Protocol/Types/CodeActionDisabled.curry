-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeActionDisabled where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CodeActionDisabled where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedReason <- lookupFromJSON "reason" vs
           return
            CodeActionDisabled { codeActionDisabledReason = parsedReason }
      _ -> Left ("Unrecognized CodeActionDisabled value: " ++ ppJSON j)

instance ToJSON CodeActionDisabled where
  toJSON x = object [(.=) "reason" (codeActionDisabledReason x)]

instance Default CodeActionDisabled where
  def = CodeActionDisabled { codeActionDisabledReason = def }

data CodeActionDisabled = CodeActionDisabled { codeActionDisabledReason :: String }
 deriving (Show,Eq)

