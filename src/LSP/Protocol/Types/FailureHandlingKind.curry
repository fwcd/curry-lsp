-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FailureHandlingKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON FailureHandlingKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "abort" -> Right FailureHandlingKindAbort
         "transactional" -> Right FailureHandlingKindTransactional
         "textOnlyTransactional" ->
           Right FailureHandlingKindTextOnlyTransactional
         "undo" -> Right FailureHandlingKindUndo
         _ -> Left ("Unrecognized FailureHandlingKind value: " ++ ppJSON j)

data FailureHandlingKind = FailureHandlingKindAbort
                         | FailureHandlingKindTransactional
                         | FailureHandlingKindTextOnlyTransactional
                         | FailureHandlingKindUndo
 deriving (Show,Eq,Enum,Bounded,Ord)

