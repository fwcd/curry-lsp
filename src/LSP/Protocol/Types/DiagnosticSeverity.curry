-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DiagnosticSeverity where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DiagnosticSeverity where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right DiagnosticSeverityError
         2 -> Right DiagnosticSeverityWarning
         3 -> Right DiagnosticSeverityInformation
         4 -> Right DiagnosticSeverityHint
         _ -> Left ("Unrecognized DiagnosticSeverity value: " ++ ppJSON j)

data DiagnosticSeverity = DiagnosticSeverityError
                        | DiagnosticSeverityWarning
                        | DiagnosticSeverityInformation
                        | DiagnosticSeverityHint
 deriving (Show,Eq,Enum,Bounded,Ord)

