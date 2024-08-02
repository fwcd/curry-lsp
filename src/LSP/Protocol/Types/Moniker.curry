-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.Moniker where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.MonikerKind
import LSP.Protocol.Types.UniquenessLevel
import LSP.Utils.Default
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

instance ToJSON Moniker where
  toJSON x =
    object
     [(.=) "scheme" (monikerScheme x),  (.=) "identifier"
                                         (monikerIdentifier x),  (.=) "unique"
                                                                  (monikerUnique
                                                                    x),  (.?=)
                                                                          "kind"
                                                                          (monikerKind
                                                                            x)]

instance Default Moniker where
  def =
    Moniker { monikerScheme = def
            , monikerIdentifier = def
            , monikerUnique = def
            , monikerKind = def }

data Moniker = Moniker { monikerScheme :: String
                       , monikerIdentifier :: String
                       , monikerUnique :: UniquenessLevel
                       , monikerKind :: Maybe MonikerKind }
 deriving (Show,Eq)

