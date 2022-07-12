module LSP.Generation.Model
  ( MetaProperty (..)
  , MetaBaseType (..)
  , MetaType (..)
  , MetaMessageDirection (..)
  , MetaRequest (..)
  , MetaNotification (..)
  , MetaStructure (..)
  , MetaEnumerationValue (..)
  , MetaEnumeration (..)
  , MetaTypeAlias (..)
  , MetaModel (..)
  ) where

import Data.Maybe ( fromMaybe )
import JSON.Data ( JValue (..) )
import JSON.Pretty ( ppJSON )
import LSP.Utils.JSON ( FromJSON (..)
                      , lookupFromJSON, lookupStringFromJSON, lookupObjectFromJSON
                      , lookupMaybeStringFromJSON, lookupMaybeFromJSON, lookupPathFromJSON
                      )

data MetaProperty = MetaProperty
  { mpName :: String
  , mpType :: MetaType
  , mpOptional :: Maybe Bool
  , mpDocumentation :: Maybe String
  }
  deriving (Show, Eq)

data MetaBaseType =
    MetaBaseTypeString
  | MetaBaseTypeBoolean
  | MetaBaseTypeInteger
  | MetaBaseTypeUInteger
  | MetaBaseTypeDecimal
  | MetaBaseTypeNull
  | MetaBaseTypeDocumentUri
  deriving (Show, Eq)

data MetaType =
    MetaTypeReference     { mtName :: String }
  | MetaTypeArray         { mtElement :: MetaType }
  | MetaTypeMap           { mtKey :: MetaType, mtElement :: MetaType }
  | MetaTypeBase          { mtBaseType :: MetaBaseType }
  | MetaTypeOr            { mtItems :: [MetaType] }
  | MetaTypeLiteral       { mtProperties :: [MetaProperty] }
  | MetaTypeStringLiteral { mtValue :: String }
  | MetaTypeTuple         { mtItems :: [MetaType] }
  deriving (Show, Eq)

data MetaMessageDirection =
    MetaMessageDirectionServerToClient
  | MetaMessageDirectionClientToServer
  | MetaMessageDirectionBoth
  deriving (Show, Eq)

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
  deriving (Show, Eq)

data MetaNotification = MetaNotification
  { mnMethod :: String
  , mnDirection :: MetaMessageDirection
  , mnParams :: Maybe MetaType
  , mnDocumentation :: Maybe String
  , mnSince :: Maybe String
  , mnRegistrationMethod :: Maybe String
  , mnRegistrationOptions :: Maybe MetaType
  }
  deriving (Show, Eq)

data MetaStructure = MetaStructure
  { msName :: String
  , msProperties :: [MetaProperty]
  , msExtends :: [MetaType]
  , msMixins :: [MetaType]
  , msDocumentation :: Maybe String
  }
  deriving (Show, Eq)

data MetaEnumerationValue = MetaEnumerationValue
  { mevName :: String
  , mevValue :: JValue
  , mevDocumentation :: Maybe String
  }
  deriving (Show, Eq)

data MetaEnumeration = MetaEnumeration
  { meName :: String
  , meType :: MetaType
  , meValues :: [MetaEnumerationValue]
  , meSupportsCustomValues :: Maybe Bool
  , meDocumentation :: Maybe String
  , meSince :: Maybe String
  }
  deriving (Show, Eq)

data MetaTypeAlias = MetaTypeAlias
  { mtaName :: String
  , mtaType :: MetaType
  , mtaDocumentation :: Maybe String
  }
  deriving (Show, Eq)

data MetaModel = MetaModel
  { mmRequests :: [MetaRequest]
  , mmNotifications :: [MetaNotification]
  , mmStructures :: [MetaStructure]
  , mmEnumerations :: [MetaEnumeration]
  , mmTypeAliases :: [MetaTypeAlias]
  }
  deriving (Show, Eq)

-- JSON conversions

instance FromJSON MetaModel where
  fromJSON j = case j of
    JObject vs -> do
      reqs    <- lookupFromJSON "requests" vs
      nots    <- lookupFromJSON "notifications" vs
      structs <- lookupFromJSON "structures" vs
      enums   <- lookupFromJSON "enumerations" vs
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
      method        <- lookupStringFromJSON "method" vs
      result        <- lookupFromJSON "result" vs
      dir           <- lookupFromJSON "messageDirection" vs
      params        <- lookupMaybeFromJSON "params" vs
      partialResult <- lookupMaybeFromJSON "partialResult" vs
      doc           <- lookupMaybeStringFromJSON "documentation" vs
      since         <- lookupMaybeStringFromJSON "since" vs
      regMethod     <- lookupMaybeStringFromJSON "registrationMethod" vs
      regOpts       <- lookupMaybeFromJSON "registrationOptions" vs
      errData       <- lookupMaybeFromJSON "errorData" vs
      return $ MetaRequest
        { mrMethod = method
        , mrResult = result
        , mrDirection = dir
        , mrParams = params
        , mrPartialResult = partialResult
        , mrDocumentation = doc
        , mrSince = since
        , mrRegistrationMethod = regMethod
        , mrRegistrationOptions = regOpts
        , mrErrorData = errData
        }
    _ -> Left $ "Unrecognized request value: " ++ ppJSON j

instance FromJSON MetaMessageDirection where
  fromJSON j = case j of
    JString "serverToClient" -> Right MetaMessageDirectionServerToClient
    JString "clientToServer" -> Right MetaMessageDirectionClientToServer
    JString "both"           -> Right MetaMessageDirectionBoth
    JString d                -> Left $ "Unknown message direction: " ++ d
    _                        -> Left $ "Unrecognized message direction value: " ++ ppJSON j

instance FromJSON MetaType where
  fromJSON j = case j of
    JObject vs -> do
      kind <- lookupStringFromJSON "kind" vs
      case kind of
        "reference"     -> MetaTypeReference     <$> lookupStringFromJSON "name" vs
        "array"         -> MetaTypeArray         <$> lookupFromJSON "element" vs
        "map"           -> MetaTypeMap           <$> lookupFromJSON "key" vs <*> lookupFromJSON "value" vs
        "base"          -> MetaTypeBase          <$> lookupFromJSON "name" vs
        "or"            -> MetaTypeOr            <$> lookupFromJSON "items" vs
        "literal"       -> MetaTypeLiteral       <$> lookupPathFromJSON ["value", "properties"] vs
        "stringLiteral" -> MetaTypeStringLiteral <$> lookupStringFromJSON "value" vs
        _ -> Left $ "Unrecognized type kind: " ++ kind
    _ -> Left $ "Unrecognized type value: " ++ ppJSON j

instance FromJSON MetaBaseType where
  fromJSON j = case j of
    JString "string"      -> Right MetaBaseTypeString
    JString "boolean"     -> Right MetaBaseTypeBoolean
    JString "integer"     -> Right MetaBaseTypeInteger
    JString "uinteger"    -> Right MetaBaseTypeUInteger
    JString "decimal"     -> Right MetaBaseTypeDecimal
    JString "null"        -> Right MetaBaseTypeNull
    JString "DocumentUri" -> Right MetaBaseTypeDocumentUri
    JString t             -> Left $ "Unknown base type: " ++ t
    _                     -> Left $ "Unrecognized base type value: " ++ ppJSON j

instance FromJSON MetaProperty where
  fromJSON j = case j of
    JObject vs -> do
      name     <- lookupStringFromJSON "name" vs
      ty       <- lookupFromJSON "type" vs
      optional <- lookupMaybeFromJSON "optional" vs
      doc      <- lookupMaybeStringFromJSON "documentation" vs
      return $ MetaProperty
        { mpName = name
        , mpType = ty
        , mpOptional = optional
        , mpDocumentation = doc
        }
    _ -> Left $ "Unrecognized property value: " ++ ppJSON j

instance FromJSON MetaNotification where
  fromJSON j = case j of
    JObject vs -> do
      method        <- lookupStringFromJSON "method" vs
      dir           <- lookupFromJSON "messageDirection" vs
      params        <- lookupMaybeFromJSON "params" vs
      doc           <- lookupMaybeStringFromJSON "documentation" vs
      since         <- lookupMaybeStringFromJSON "since" vs
      regMethod     <- lookupMaybeStringFromJSON "registrationMethod" vs
      regOpts       <- lookupMaybeFromJSON "registrationOptions" vs
      return $ MetaNotification
        { mnMethod = method
        , mnDirection = dir
        , mnParams = params
        , mnDocumentation = doc
        , mnSince = since
        , mnRegistrationMethod = regMethod
        , mnRegistrationOptions = regOpts
        }
    _ -> Left $ "Unrecognized notification value: " ++ ppJSON j



instance FromJSON MetaStructure where
  fromJSON j = case j of
    JObject vs -> do
      name    <- lookupStringFromJSON "name" vs
      props   <- lookupFromJSON "properties" vs
      extends <- fromMaybe [] <$> lookupMaybeFromJSON "extends" vs
      mixins  <- fromMaybe [] <$> lookupMaybeFromJSON "mixins" vs
      doc     <- lookupMaybeStringFromJSON "documentation" vs
      return $ MetaStructure
        { msName = name
        , msProperties = props
        , msExtends = extends
        , msMixins = mixins
        , msDocumentation = doc
        }
    _ -> Left $ "Unrecognized structure value: " ++ ppJSON j

instance FromJSON MetaEnumeration where
  fromJSON j = case j of
    JObject vs -> do
      name    <- lookupStringFromJSON "name" vs
      ty      <- lookupFromJSON "type" vs
      values  <- lookupFromJSON "values" vs
      customs <- lookupMaybeFromJSON "supportsCustomValues" vs
      doc     <- lookupMaybeStringFromJSON "documentation" vs
      since   <- lookupMaybeStringFromJSON "since" vs
      return $ MetaEnumeration
        { meName = name
        , meType = ty
        , meValues = values
        , meSupportsCustomValues = customs
        , meDocumentation = doc
        , meSince = since
        }
    _ -> Left $ "Unrecognized enumeration value: " ++ ppJSON j

instance FromJSON MetaEnumerationValue where
  fromJSON j = case j of
    JObject vs -> do
      name  <- lookupStringFromJSON "name" vs
      value <- lookupFromJSON "value" vs
      doc   <- lookupMaybeStringFromJSON "documentation" vs
      return $ MetaEnumerationValue
        { mevName = name
        , mevValue = value
        , mevDocumentation = doc
        }
    _ -> Left $ "Unrecognized enumeration value value: " ++ ppJSON j

instance FromJSON MetaTypeAlias where
  fromJSON j = case j of
    JObject vs -> do
      name <- lookupStringFromJSON "name" vs
      ty   <- lookupFromJSON "type" vs
      doc  <- lookupMaybeStringFromJSON "documentation" vs
      return $ MetaTypeAlias
        { mtaName = name
        , mtaType = ty
        , mtaDocumentation = doc
        }
    _ -> Left $ "Unrecognized type alias value: " ++ ppJSON j

