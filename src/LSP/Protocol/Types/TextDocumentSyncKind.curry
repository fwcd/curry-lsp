-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentSyncKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON TextDocumentSyncKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         0 -> Right TextDocumentSyncKindNone
         1 -> Right TextDocumentSyncKindFull
         2 -> Right TextDocumentSyncKindIncremental
         _ -> Left ("Unrecognized TextDocumentSyncKind value: " ++ ppJSON j)

data TextDocumentSyncKind = TextDocumentSyncKindNone
                          | TextDocumentSyncKindFull
                          | TextDocumentSyncKindIncremental
 deriving (Show,Eq,Enum,Bounded,Ord)

