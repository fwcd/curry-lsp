module LSP.Generation.Imports
  ( typeDeclToImports
  , instanceDeclToImports
  ) where

import qualified AbstractCurry.Types as AC
import qualified Data.Set as S
import LSP.Utils.General ( unions, unionMap )

-- TODO: Make this a type class?
-- This would also let us model CField more cleanly without requiring CExpr.

-- | Extracts the required imports from the given type declaration.
typeDeclToImports :: AC.CTypeDecl -> S.Set String
typeDeclToImports ty = case ty of
  AC.CType    _ _ _ cdecls _ -> unionMap consDeclToImports cdecls
  AC.CTypeSyn _ _ _ texp     -> typeExprToImports texp
  AC.CNewType _ _ _ cdecl _  -> consDeclToImports cdecl

-- | Extracts the required imports from the given type expression.
typeExprToImports :: AC.CTypeExpr -> S.Set String
typeExprToImports texp = case texp of
  AC.CTVar _        -> S.empty
  AC.CFuncType t t' -> S.union (typeExprToImports t) (typeExprToImports t')
  AC.CTCons qn      -> qNameToImports qn
  AC.CTApply t t'   -> S.union (typeExprToImports t) (typeExprToImports t')

-- | Extracts the required imports from the given constructor declaration.
consDeclToImports :: AC.CConsDecl -> S.Set String
consDeclToImports cdecl = case cdecl of
  AC.CCons _ _ texps    -> unionMap typeExprToImports texps
  AC.CRecord _ _ fdecls -> unionMap fieldDeclToImports fdecls

-- | Extracts the required imports from the given field declaration.
fieldDeclToImports :: AC.CFieldDecl -> S.Set String
fieldDeclToImports (AC.CField _ _ texp) = typeExprToImports texp

-- | Extracts the required imports from the given instance declaration.
instanceDeclToImports :: AC.CInstanceDecl -> S.Set String
instanceDeclToImports (AC.CInstance qn ctx texp fdecls) = unions
  [ qNameToImports qn
  , contextToImports ctx
  , typeExprToImports texp
  , unionMap funcDeclToImports fdecls
  ]

-- | Extracts the required imports from the given context.
contextToImports :: AC.CContext -> S.Set String
contextToImports (AC.CContext cs) = unionMap constraintToImports cs

-- | Extracts the required imports from the given constraint.
constraintToImports :: AC.CConstraint -> S.Set String
constraintToImports (qn, texp) = S.union (qNameToImports qn) (typeExprToImports texp)

-- | Extracts the required imports from the given function declaration.
funcDeclToImports :: AC.CFuncDecl -> S.Set String
funcDeclToImports fdecl = case fdecl of
  AC.CFunc     qn _ _ qty rs -> unions [qNameToImports qn, qualTypeExprToImports qty, unionMap ruleToImports rs]
  AC.CmtFunc _ qn _ _ qty rs -> unions [qNameToImports qn, qualTypeExprToImports qty, unionMap ruleToImports rs]

-- | Extracts the required imports from the given qualified type expression.
qualTypeExprToImports :: AC.CQualTypeExpr -> S.Set String
qualTypeExprToImports (AC.CQualType ctx texp) = S.union (contextToImports ctx) (typeExprToImports texp)

-- | Extracts the required imports from the given rule.
ruleToImports :: AC.CRule -> S.Set String
ruleToImports (AC.CRule pats rhs) = S.union (unionMap patternToImports pats) (rhsToImports rhs)

-- | Extracts the required imports from the given pattern.
patternToImports :: AC.CPattern -> S.Set String
patternToImports _ = S.empty -- TODO

-- | Extracts the required imports from the given right-hand side.
rhsToImports :: AC.CRhs -> S.Set String
rhsToImports rhs = case rhs of
  AC.CSimpleRhs expr ldecls    -> S.union (exprToImports expr) (unionMap localDeclToImports ldecls)
  AC.CGuardedRhs guards ldecls -> S.union (unionMap guardToImports guards) (unionMap localDeclToImports ldecls)

-- | Extracts the required imports from the given expression.
exprToImports :: AC.CExpr -> S.Set String
exprToImports expr = case expr of
  AC.CVar _            -> S.empty
  AC.CLit _            -> S.empty
  AC.CSymbol qn        -> qNameToImports qn
  AC.CApply e1 e2      -> S.union (exprToImports e1) (exprToImports e2)
  AC.CLambda pats e    -> S.union (unionMap patternToImports pats) (exprToImports e)
  AC.CLetDecl ldecls e -> S.union (unionMap localDeclToImports ldecls) (exprToImports e)
  AC.CDoExpr stmts     -> unionMap statementToImports stmts
  AC.CListComp e stmts -> S.union (exprToImports e) (unionMap statementToImports stmts)
  AC.CCase _ e arms    -> S.union (exprToImports e) (unionMap caseArmToImports arms)
  AC.CTyped e qty      -> S.union (exprToImports e) (qualTypeExprToImports qty)
  AC.CRecConstr qn fs  -> S.union (qNameToImports qn) (unionMap fieldToImports fs)
  AC.CRecUpdate e fs   -> S.union (exprToImports e) (unionMap fieldToImports fs)

-- | Extracts the required imports from the given statement.
statementToImports :: AC.CStatement -> S.Set String
statementToImports _ = S.empty -- TODO

-- | Extracts the required imports from the given case arm.
caseArmToImports :: (AC.CPattern, AC.CRhs) -> S.Set String
caseArmToImports (pat, rhs) = S.union (patternToImports pat) (rhsToImports rhs)

-- | Extracts the required imports from the given field.
fieldToImports :: AC.CField AC.CExpr -> S.Set String
fieldToImports _ = S.empty

-- | Extracts the required imports from the given guard.
guardToImports :: (AC.CExpr, AC.CExpr) -> S.Set String
guardToImports (e1, e2) = S.union (exprToImports e1) (exprToImports e2)

-- | Extracts the required imports from the given local declaration.
localDeclToImports :: AC.CLocalDecl -> S.Set String
localDeclToImports ldecl = case ldecl of
  AC.CLocalFunc fdecl  -> funcDeclToImports fdecl
  AC.CLocalPat pat rhs -> S.union (patternToImports pat) (rhsToImports rhs)
  AC.CLocalVars _      -> S.empty

-- | Extracts the required imports from the given qualified name.
qNameToImports :: AC.QName -> S.Set String
qNameToImports (mname, _) = S.fromList [mname] -- TODO: Use S.singleton once https://github.com/curry-packages/containers/pull/1 is merged
