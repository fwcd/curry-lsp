-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeLensParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON CodeLensParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            CodeLensParams { codeLensParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized CodeLensParams value: " ++ ppJSON j)

data CodeLensParams = CodeLensParams { codeLensParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

