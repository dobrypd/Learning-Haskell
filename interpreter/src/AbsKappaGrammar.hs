module AbsKappaGrammar where

-- Haskell module generated by the BNF converter


newtype Ident = Ident String deriving (Eq,Ord,Show)
newtype CFloat = CFloat String deriving (Eq,Ord,Show)
newtype Boolean = Boolean String deriving (Eq,Ord,Show)
data Program =
   Progr [DGlobalDeclaration]
  deriving (Eq,Ord,Show)

data DGlobalDeclaration =
   DFunction Function_def
 | DGlobal Dec
 | DNamespace Namespace
  deriving (Eq,Ord,Show)

data Function_def =
   NewFunction Type_specifier Declarator [StmOrDec]
  deriving (Eq,Ord,Show)

data Dec =
   Declarators Type_specifier [Init_declarator]
  deriving (Eq,Ord,Show)

data Namespace =
   NSDeclarator Ident [Function_def]
  deriving (Eq,Ord,Show)

data Type_specifier =
   Type_specifier_int
 | Type_specifier_float
 | Type_specifier_bool
 | Type_specifierStruct_spec Struct_spec
  deriving (Eq,Ord,Show)

data Struct_spec =
   Named Ident [Struct_dec]
 | Unnamed [Struct_dec]
 | Type Ident
  deriving (Eq,Ord,Show)

data Struct_dec =
   Structen Type_specifier [Struct_declarator]
  deriving (Eq,Ord,Show)

data Struct_declarator =
   StructOnlyDecl Declarator
  deriving (Eq,Ord,Show)

data Declarator =
   VarName Ident
 | FunctionName Declarator [Parameter]
  deriving (Eq,Ord,Show)

data Parameter =
   SingleParam Type_specifier Declarator
  deriving (Eq,Ord,Show)

data Init_declarator =
   OnlyDecl Declarator
 | InitDecl Declarator Initializer
  deriving (Eq,Ord,Show)

data Initializer =
   InitExpr Exp
 | InitList [Initializer]
  deriving (Eq,Ord,Show)

data Stm =
   ListS [StmOrDec]
 | DecS DecStm
 | ExprS ExpStm
 | IfS If_stm
 | IterS Iter_stm
 | JumpS Jump_stm
  deriving (Eq,Ord,Show)

data StmOrDec =
   SStm Stm
 | SDec Dec
  deriving (Eq,Ord,Show)

data ExpStm =
   Sempty
 | Sexpr Exp
  deriving (Eq,Ord,Show)

data DecStm =
   Dempty
 | Ddec Dec
  deriving (Eq,Ord,Show)

data If_stm =
   SIf Exp Stm
 | SIfElse Exp Stm Stm
  deriving (Eq,Ord,Show)

data Iter_stm =
   SiterWhile Exp Stm
 | SiterFor DecStm ExpStm Exp Stm
  deriving (Eq,Ord,Show)

data Jump_stm =
   SjumpTwo
 | SjumpThree
 | SjumpFour
 | SjumpFive Exp
  deriving (Eq,Ord,Show)

data Exp =
   Ecomma Exp Exp
 | Eassign Ident Exp
 | Econdition Exp Exp Exp
 | Elor Exp Exp
 | Eland Exp Exp
 | Eeq Exp Exp
 | Eneq Exp Exp
 | Elthen Exp Exp
 | Egrthen Exp Exp
 | Ele Exp Exp
 | Ege Exp Exp
 | Eplus Exp Exp
 | Eminus Exp Exp
 | Etimes Exp Exp
 | Ediv Exp Exp
 | Emod Exp Exp
 | Etypeconv Type_specifier Exp
 | Epreinc Ident
 | Epredec Ident
 | Epreop Unary_operator Exp
 | Efunk Ident [Exp]
 | EfunkNS Ident Ident [Exp]
 | Eselect Exp Ident
 | Epostinc Ident
 | Epostdec Ident
 | Evar Ident
 | Econst Constant
  deriving (Eq,Ord,Show)

data Constant =
   Efloat Double
 | Ecfloat CFloat
 | Ebool Boolean
 | Eint Integer
  deriving (Eq,Ord,Show)

data Unary_operator =
   Negative
 | Logicalneg
  deriving (Eq,Ord,Show)

