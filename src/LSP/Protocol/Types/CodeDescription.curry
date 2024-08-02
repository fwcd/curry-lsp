-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeDescription where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CodeDescription where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedHref <- lookupFromJSON "href" vs
           return CodeDescription { codeDescriptionHref = parsedHref }
      _ -> Left ("Unrecognized CodeDescription value: " ++ ppJSON j)

instance ToJSON CodeDescription where
  toJSON x = object [(.=) "href" (codeDescriptionHref x)]

instance Default CodeDescription where
  def = CodeDescription { codeDescriptionHref = def }

data CodeDescription = CodeDescription { codeDescriptionHref :: Uri }
 deriving (Show,Eq)

