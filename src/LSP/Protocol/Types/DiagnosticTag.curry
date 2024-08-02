-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DiagnosticTag where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DiagnosticTag where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right DiagnosticTagUnnecessary
         2 -> Right DiagnosticTagDeprecated
         _ -> Left ("Unrecognized DiagnosticTag value: " ++ ppJSON j)

instance ToJSON DiagnosticTag where
  toJSON x =
    case x of
      DiagnosticTagUnnecessary -> toJSON 1
      DiagnosticTagDeprecated -> toJSON 2

instance Default DiagnosticTag where
  def = DiagnosticTagUnnecessary

data DiagnosticTag = DiagnosticTagUnnecessary | DiagnosticTagDeprecated
 deriving (Show,Eq,Enum,Bounded,Ord)

