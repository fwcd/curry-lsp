-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.Moniker where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.MonikerKind
import LSP.Protocol.Types.UniquenessLevel
import LSP.Utils.JSON

instance FromJSON Moniker where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedScheme <- lookupFromJSON "scheme" vs
           parsedIdentifier <- lookupFromJSON "identifier" vs
           parsedUnique <- lookupFromJSON "unique" vs
           parsedKind <- lookupMaybeFromJSON "kind" vs
           return
            Moniker { monikerScheme = parsedScheme
                    , monikerIdentifier = parsedIdentifier
                    , monikerUnique = parsedUnique
                    , monikerKind = parsedKind }
      _ -> Left ("Unrecognized Moniker value: " ++ ppJSON j)

data Moniker = Moniker { monikerScheme :: String
                       , monikerIdentifier :: String
                       , monikerUnique :: UniquenessLevel
                       , monikerKind :: Maybe MonikerKind }
 deriving (Show,Eq)
