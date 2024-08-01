module LSP.Generation.Dependencies
  ( typeDeclModuleDeps
  , instanceDeclModuleDeps
  ) where

import qualified AbstractCurry.Types as AC
import qualified Data.Set as S
import LSP.Utils.General ( unions, unionMap )

-- TODO: It would be nice to turn this into a type class, which would also let
-- us model CField more cleanly without requiring CExpr. Curry doesn't support
-- instances on type aliases etc. (which would be needed for QName/String), so
-- we cannot do this without FlexibleInstances etc.

-- | Extracts the module dependencies from the given type declaration.
typeDeclModuleDeps :: AC.CTypeDecl -> S.Set String
typeDeclModuleDeps ty = case ty of
  AC.CType    _ _ _ cdecls _ -> unionMap consDeclModuleDeps cdecls
  AC.CTypeSyn _ _ _ texp     -> typeExprModuleDeps texp
  AC.CNewType _ _ _ cdecl _  -> consDeclModuleDeps cdecl

-- | Extracts the module dependencies from the given type expression.
typeExprModuleDeps :: AC.CTypeExpr -> S.Set String
typeExprModuleDeps texp = case texp of
  AC.CTVar _        -> S.empty
  AC.CFuncType t t' -> S.union (typeExprModuleDeps t) (typeExprModuleDeps t')
  AC.CTCons qn      -> qNameModuleDeps qn
  AC.CTApply t t'   -> S.union (typeExprModuleDeps t) (typeExprModuleDeps t')

-- | Extracts the module dependencies from the given constructor declaration.
consDeclModuleDeps :: AC.CConsDecl -> S.Set String
consDeclModuleDeps cdecl = case cdecl of
  AC.CCons _ _ texps    -> unionMap typeExprModuleDeps texps
  AC.CRecord _ _ fdecls -> unionMap fieldDeclModuleDeps fdecls

-- | Extracts the module dependencies from the given field declaration.
fieldDeclModuleDeps :: AC.CFieldDecl -> S.Set String
fieldDeclModuleDeps (AC.CField _ _ texp) = typeExprModuleDeps texp

-- | Extracts the module dependencies from the given instance declaration.
instanceDeclModuleDeps :: AC.CInstanceDecl -> S.Set String
instanceDeclModuleDeps (AC.CInstance qn ctx texp fdecls) = unions
  [ qNameModuleDeps qn
  , contextModuleDeps ctx
  , typeExprModuleDeps texp
  , unionMap funcDeclModuleDeps fdecls
  ]

-- | Extracts the module dependencies from the given context.
contextModuleDeps :: AC.CContext -> S.Set String
contextModuleDeps (AC.CContext cs) = unionMap constraintModuleDeps cs

-- | Extracts the module dependencies from the given constraint.
constraintModuleDeps :: AC.CConstraint -> S.Set String
constraintModuleDeps (qn, texp) = S.union (qNameModuleDeps qn) (typeExprModuleDeps texp)

-- | Extracts the module dependencies from the given function declaration.
funcDeclModuleDeps :: AC.CFuncDecl -> S.Set String
funcDeclModuleDeps fdecl = case fdecl of
  AC.CFunc     qn _ _ qty rs -> unions [qNameModuleDeps qn, qualTypeExprModuleDeps qty, unionMap ruleModuleDeps rs]
  AC.CmtFunc _ qn _ _ qty rs -> unions [qNameModuleDeps qn, qualTypeExprModuleDeps qty, unionMap ruleModuleDeps rs]

-- | Extracts the module dependencies from the given qualified type expression.
qualTypeExprModuleDeps :: AC.CQualTypeExpr -> S.Set String
qualTypeExprModuleDeps (AC.CQualType ctx texp) = S.union (contextModuleDeps ctx) (typeExprModuleDeps texp)

-- | Extracts the module dependencies from the given rule.
ruleModuleDeps :: AC.CRule -> S.Set String
ruleModuleDeps (AC.CRule pats rhs) = S.union (unionMap patternModuleDeps pats) (rhsModuleDeps rhs)

-- | Extracts the module dependencies from the given pattern.
patternModuleDeps :: AC.CPattern -> S.Set String
patternModuleDeps _ = S.empty -- TODO

-- | Extracts the module dependencies from the given right-hand side.
rhsModuleDeps :: AC.CRhs -> S.Set String
rhsModuleDeps rhs = case rhs of
  AC.CSimpleRhs expr ldecls    -> S.union (exprModuleDeps expr) (unionMap localDeclModuleDeps ldecls)
  AC.CGuardedRhs guards ldecls -> S.union (unionMap guardModuleDeps guards) (unionMap localDeclModuleDeps ldecls)

-- | Extracts the module dependencies from the given expression.
exprModuleDeps :: AC.CExpr -> S.Set String
exprModuleDeps expr = case expr of
  AC.CVar _            -> S.empty
  AC.CLit _            -> S.empty
  AC.CSymbol qn        -> qNameModuleDeps qn
  AC.CApply e1 e2      -> S.union (exprModuleDeps e1) (exprModuleDeps e2)
  AC.CLambda pats e    -> S.union (unionMap patternModuleDeps pats) (exprModuleDeps e)
  AC.CLetDecl ldecls e -> S.union (unionMap localDeclModuleDeps ldecls) (exprModuleDeps e)
  AC.CDoExpr stmts     -> unionMap statementModuleDeps stmts
  AC.CListComp e stmts -> S.union (exprModuleDeps e) (unionMap statementModuleDeps stmts)
  AC.CCase _ e arms    -> S.union (exprModuleDeps e) (unionMap caseArmModuleDeps arms)
  AC.CTyped e qty      -> S.union (exprModuleDeps e) (qualTypeExprModuleDeps qty)
  AC.CRecConstr qn fs  -> S.union (qNameModuleDeps qn) (unionMap fieldModuleDeps fs)
  AC.CRecUpdate e fs   -> S.union (exprModuleDeps e) (unionMap fieldModuleDeps fs)

-- | Extracts the module dependencies from the given statement.
statementModuleDeps :: AC.CStatement -> S.Set String
statementModuleDeps _ = S.empty -- TODO

-- | Extracts the module dependencies from the given case arm.
caseArmModuleDeps :: (AC.CPattern, AC.CRhs) -> S.Set String
caseArmModuleDeps (pat, rhs) = S.union (patternModuleDeps pat) (rhsModuleDeps rhs)

-- | Extracts the module dependencies from the given field.
fieldModuleDeps :: AC.CField AC.CExpr -> S.Set String
fieldModuleDeps _ = S.empty

-- | Extracts the module dependencies from the given guard.
guardModuleDeps :: (AC.CExpr, AC.CExpr) -> S.Set String
guardModuleDeps (e1, e2) = S.union (exprModuleDeps e1) (exprModuleDeps e2)

-- | Extracts the module dependencies from the given local declaration.
localDeclModuleDeps :: AC.CLocalDecl -> S.Set String
localDeclModuleDeps ldecl = case ldecl of
  AC.CLocalFunc fdecl  -> funcDeclModuleDeps fdecl
  AC.CLocalPat pat rhs -> S.union (patternModuleDeps pat) (rhsModuleDeps rhs)
  AC.CLocalVars _      -> S.empty

-- | Extracts the module dependencies from the given qualified name.
qNameModuleDeps :: AC.QName -> S.Set String
qNameModuleDeps (mname, _) = S.fromList [mname] -- TODO: Use S.singleton once https://github.com/curry-packages/containers/pull/1 is merged
