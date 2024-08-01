-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientCodeActionKindOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CodeActionKind
import LSP.Utils.JSON

instance FromJSON ClientCodeActionKindOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValueSet <- lookupFromJSON "valueSet" vs
           return
            ClientCodeActionKindOptions { clientCodeActionKindOptionsValueSet = parsedValueSet }
      _ ->
        Left ("Unrecognized ClientCodeActionKindOptions value: " ++ ppJSON j)

instance ToJSON ClientCodeActionKindOptions where
  toJSON x = object [(.=) "valueSet" (clientCodeActionKindOptionsValueSet x)]

data ClientCodeActionKindOptions = ClientCodeActionKindOptions { clientCodeActionKindOptionsValueSet :: [CodeActionKind] }
 deriving (Show,Eq)

