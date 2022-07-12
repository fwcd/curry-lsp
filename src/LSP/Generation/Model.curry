module LSP.Generation.Model
  ( 
  ) where

import JSON.Data ( JValue (..) )
import JSON.Pretty ( ppJSON )
import LSP.Utils.JSON ( FromJSON (..), lookupFromJSON, lookupStringFromJSON, lookupMaybeFromJSON )

data MetaProperty = MetaProperty
  { mpName :: String
  , mpType :: MetaType
  , mpOptional :: Maybe Bool
  , mpDocumentation :: Maybe String
  }

data MetaBaseType =
    MetaBaseTypeString
  | MetaBaseTypeBoolean
  | MetaBaseTypeInteger
  | MetaBaseTypeUInteger
  | MetaBaseTypeDecimal
  | MetaBaseTypeNull
  | MetaBaseTypeUnknown { mbtName :: String }

data MetaType =
    MetaTypeReference     { mtName :: String }
  | MetaTypeArray         { mtElement :: MetaType }
  | MetaTypeBase          { mtBaseType :: MetaBaseType }
  | MetaTypeOr            { mtItems :: [MetaType] }
  | MetaTypeLiteral       { mtProperties :: [(String, MetaProperty)] }
  | MetaTypeStringLiteral { mtValue :: String }
  | MetaTypeTuple         { mtItems :: [MetaType] }

data MetaMessageDirection =
    MetaMessageDirectionServerToClient
  | MetaMessageDirectionClientToServer
  | MetaMessageDirectionBoth

data MetaRequest = MetaRequest
  { mrMethod :: String
  , mrResult :: MetaType
  , mrDirection :: MetaMessageDirection
  , mrParams :: Maybe MetaType
  , mrPartialResult :: Maybe MetaType
  , mrDocumentation :: Maybe String
  , mrSince :: Maybe String
  , mrRegistrationMethod :: Maybe String
  , mrRegistrationOptions :: Maybe MetaType
  , mrErrorData :: Maybe MetaType
  }

data MetaNotification = MetaNotification
  { mnMethod :: String
  , mnDirection :: MetaMessageDirection
  , mnParams :: Maybe MetaType
  , mnDocumentation :: Maybe String
  , mnSince :: Maybe String
  , mnRegistrationMethod :: Maybe String
  , mnRegistrationOptions :: Maybe MetaType
  }

data MetaStructure = MetaStructure
  { msName :: String
  , msProperties :: [MetaProperty]
  , msExtends :: [MetaType]
  , msMixins :: [MetaType]
  }

data MetaEnumerationValue = MetaEnumerationValue
  { mevName :: String
  , mevValue :: JValue
  , mevDocumentation :: Maybe String
  }

data MetaEnumeration = MetaEnumeration
  { meName :: String
  , meType :: MetaType
  , meValues :: [MetaEnumerationValue]
  , meSupportsCustomValues :: Maybe Bool
  , meDocumentation :: Maybe String
  , meSince :: Maybe String
  }

data MetaTypeAlias = MetaTypeAlias
  { mtaName :: String
  , mtaType :: MetaType
  , mtaDocumentation :: Maybe String
  }

data MetaModel = MetaModel
  { mmRequests :: [MetaRequest]
  , mmNotifications :: [MetaNotification]
  , mmStructures :: [MetaStructure]
  , mmEnumerations :: [MetaEnumeration]
  , mmTypeAliases :: [MetaTypeAlias]
  }

-- JSON conversions

instance FromJSON MetaModel where
  fromJSON j = case j of
    JObject vs -> do
      reqs <- lookupFromJSON "requests" vs
      nots <- lookupFromJSON "notifications" vs
      structs <- lookupFromJSON "structures" vs
      enums <- lookupFromJSON "enumerations" vs
      aliases <- lookupFromJSON "typeAliases" vs
      return $ MetaModel
        { mmRequests = reqs
        , mmNotifications = nots
        , mmStructures = structs
        , mmEnumerations = enums
        , mmTypeAliases = aliases
        }
    _ -> Left $ "Unrecognized top-level value: " ++ ppJSON j

instance FromJSON MetaRequest where
  fromJSON j = case j of
    JObject vs -> do
      method <- lookupStringFromJSON "method" vs
      return $ MetaRequest
        { mrMethod = method
        }
    _ -> Left $ "Unrecognized request value: " ++ ppJSON j

instance FromJSON MetaNotification where
  fromJSON j = case j of
    _ -> Left $ "Unrecognized notification value: " ++ ppJSON j

instance FromJSON MetaStructure where
  fromJSON j = case j of
    _ -> Left $ "Unrecognized structure value: " ++ ppJSON j

instance FromJSON MetaEnumeration where
  fromJSON j = case j of
    _ -> Left $ "Unrecognized enumeration value: " ++ ppJSON j

instance FromJSON MetaTypeAlias where
  fromJSON j = case j of
    _ -> Left $ "Unrecognized type alias value: " ++ ppJSON j

