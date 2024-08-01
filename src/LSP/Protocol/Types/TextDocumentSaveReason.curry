-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentSaveReason where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON TextDocumentSaveReason where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right TextDocumentSaveReasonManual
         2 -> Right TextDocumentSaveReasonAfterDelay
         3 -> Right TextDocumentSaveReasonFocusOut
         _ -> Left ("Unrecognized TextDocumentSaveReason value: " ++ ppJSON j)

data TextDocumentSaveReason = TextDocumentSaveReasonManual
                            | TextDocumentSaveReasonAfterDelay
                            | TextDocumentSaveReasonFocusOut
 deriving (Show,Eq,Enum,Bounded,Ord)

