-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientDiagnosticsTagOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DiagnosticTag
import LSP.Utils.JSON

instance FromJSON ClientDiagnosticsTagOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValueSet <- lookupFromJSON "valueSet" vs
           return
            ClientDiagnosticsTagOptions { clientDiagnosticsTagOptionsValueSet = parsedValueSet }
      _ ->
        Left ("Unrecognized ClientDiagnosticsTagOptions value: " ++ ppJSON j)

instance ToJSON ClientDiagnosticsTagOptions where
  toJSON x = object [(.=) "valueSet" (clientDiagnosticsTagOptionsValueSet x)]

data ClientDiagnosticsTagOptions = ClientDiagnosticsTagOptions { clientDiagnosticsTagOptionsValueSet :: [DiagnosticTag] }
 deriving (Show,Eq)

