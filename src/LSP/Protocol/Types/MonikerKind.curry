-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.MonikerKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON MonikerKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "import" -> Right MonikerKindImport
         "export" -> Right MonikerKindExport
         "local" -> Right MonikerKindLocal
         _ -> Left ("Unrecognized MonikerKind value: " ++ ppJSON j)

instance ToJSON MonikerKind where
  toJSON x =
    case x of
      MonikerKindImport -> toJSON "import"
      MonikerKindExport -> toJSON "export"
      MonikerKindLocal -> toJSON "local"

data MonikerKind = MonikerKindImport | MonikerKindExport | MonikerKindLocal
 deriving (Show,Eq,Enum,Bounded,Ord)

