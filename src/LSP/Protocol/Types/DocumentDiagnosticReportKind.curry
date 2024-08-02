-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentDiagnosticReportKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DocumentDiagnosticReportKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "full" -> Right DocumentDiagnosticReportKindFull
         "unchanged" -> Right DocumentDiagnosticReportKindUnchanged
         _ ->
           Left
            ("Unrecognized DocumentDiagnosticReportKind value: " ++ ppJSON j)

instance ToJSON DocumentDiagnosticReportKind where
  toJSON x =
    case x of
      DocumentDiagnosticReportKindFull -> toJSON "full"
      DocumentDiagnosticReportKindUnchanged -> toJSON "unchanged"

instance Default DocumentDiagnosticReportKind where
  def = DocumentDiagnosticReportKindFull

data DocumentDiagnosticReportKind = DocumentDiagnosticReportKindFull
                                  | DocumentDiagnosticReportKindUnchanged
 deriving (Show,Eq,Enum,Bounded,Ord)

