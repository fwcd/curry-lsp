-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ResourceOperationKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ResourceOperationKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "create" -> Right ResourceOperationKindCreate
         "rename" -> Right ResourceOperationKindRename
         "delete" -> Right ResourceOperationKindDelete
         _ -> Left ("Unrecognized ResourceOperationKind value: " ++ ppJSON j)

data ResourceOperationKind = ResourceOperationKindCreate
                           | ResourceOperationKindRename
                           | ResourceOperationKindDelete
 deriving (Show,Eq,Enum,Bounded,Ord)

