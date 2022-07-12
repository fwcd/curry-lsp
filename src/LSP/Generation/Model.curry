module LSP.Generation.Model
  ( 
  ) where

import JSON.Data

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

