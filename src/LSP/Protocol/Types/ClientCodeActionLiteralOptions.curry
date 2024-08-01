-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientCodeActionLiteralOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientCodeActionKindOptions
import LSP.Utils.JSON

instance FromJSON ClientCodeActionLiteralOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCodeActionKind <- lookupFromJSON "codeActionKind" vs
           return
            ClientCodeActionLiteralOptions { clientCodeActionLiteralOptionsCodeActionKind = parsedCodeActionKind }
      _ ->
        Left
         ("Unrecognized ClientCodeActionLiteralOptions value: " ++ ppJSON j)

instance ToJSON ClientCodeActionLiteralOptions where
  toJSON x =
    object
     [(.=) "codeActionKind" (clientCodeActionLiteralOptionsCodeActionKind x)]

data ClientCodeActionLiteralOptions = ClientCodeActionLiteralOptions { clientCodeActionLiteralOptionsCodeActionKind :: ClientCodeActionKindOptions }
 deriving (Show,Eq)

