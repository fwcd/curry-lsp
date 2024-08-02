-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentSaveReason where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON TextDocumentSaveReason where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right TextDocumentSaveReasonManual
         2 -> Right TextDocumentSaveReasonAfterDelay
         3 -> Right TextDocumentSaveReasonFocusOut
         _ -> Left ("Unrecognized TextDocumentSaveReason value: " ++ ppJSON j)

instance ToJSON TextDocumentSaveReason where
  toJSON x =
    case x of
      TextDocumentSaveReasonManual -> toJSON 1
      TextDocumentSaveReasonAfterDelay -> toJSON 2
      TextDocumentSaveReasonFocusOut -> toJSON 3

instance Default TextDocumentSaveReason where
  def = TextDocumentSaveReasonManual

data TextDocumentSaveReason = TextDocumentSaveReasonManual
                            | TextDocumentSaveReasonAfterDelay
                            | TextDocumentSaveReasonFocusOut
 deriving (Show,Eq,Enum,Bounded,Ord)

