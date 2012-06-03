{-# OPTIONS -fno-warn-incomplete-patterns #-}
module PrintKappaGrammar where

-- pretty-printer generated by the BNF converter

import AbsKappaGrammar
import Data.Char


-- the top-level printing method
printTree :: Print a => a -> String
printTree = render . prt 0

type Doc = [ShowS] -> [ShowS]

doc :: ShowS -> Doc
doc = (:)

render :: Doc -> String
render d = rend 0 (map ($ "") $ d []) "" where
  rend i ss = case ss of
    "["      :ts -> showChar '[' . rend i ts
    "("      :ts -> showChar '(' . rend i ts
    "{"      :ts -> showChar '{' . new (i+1) . rend (i+1) ts
    "}" : ";":ts -> new (i-1) . space "}" . showChar ';' . new (i-1) . rend (i-1) ts
    "}"      :ts -> new (i-1) . showChar '}' . new (i-1) . rend (i-1) ts
    ";"      :ts -> showChar ';' . new i . rend i ts
    t  : "," :ts -> showString t . space "," . rend i ts
    t  : ")" :ts -> showString t . showChar ')' . rend i ts
    t  : "]" :ts -> showString t . showChar ']' . rend i ts
    t        :ts -> space t . rend i ts
    _            -> id
  new i   = showChar '\n' . replicateS (2*i) (showChar ' ') . dropWhile isSpace
  space t = showString t . (\s -> if null s then "" else (' ':s))

parenth :: Doc -> Doc
parenth ss = doc (showChar '(') . ss . doc (showChar ')')

concatS :: [ShowS] -> ShowS
concatS = foldr (.) id

concatD :: [Doc] -> Doc
concatD = foldr (.) id

replicateS :: Int -> ShowS -> ShowS
replicateS n f = concatS (replicate n f)

-- the printer class does the job
class Print a where
  prt :: Int -> a -> Doc
  prtList :: [a] -> Doc
  prtList = concatD . map (prt 0)

instance Print a => Print [a] where
  prt _ = prtList

instance Print Char where
  prt _ s = doc (showChar '\'' . mkEsc '\'' s . showChar '\'')
  prtList s = doc (showChar '"' . concatS (map (mkEsc '"') s) . showChar '"')

mkEsc :: Char -> Char -> ShowS
mkEsc q s = case s of
  _ | s == q -> showChar '\\' . showChar s
  '\\'-> showString "\\\\"
  '\n' -> showString "\\n"
  '\t' -> showString "\\t"
  _ -> showChar s

prPrec :: Int -> Int -> Doc -> Doc
prPrec i j = if j<i then parenth else id


instance Print Integer where
  prt _ x = doc (shows x)


instance Print Double where
  prt _ x = doc (shows x)


instance Print Ident where
  prt _ (Ident i) = doc (showString ( i))


instance Print CFloat where
  prt _ (CFloat i) = doc (showString ( i))


instance Print Boolean where
  prt _ (Boolean i) = doc (showString ( i))



instance Print Program where
  prt i e = case e of
   Progr dglobaldeclarations -> prPrec i 0 (concatD [prt 0 dglobaldeclarations])


instance Print DGlobalDeclaration where
  prt i e = case e of
   DFunction function_def -> prPrec i 0 (concatD [prt 0 function_def])
   DGlobal dec -> prPrec i 0 (concatD [prt 0 dec])
   DNamespace namespace -> prPrec i 0 (concatD [prt 0 namespace])

  prtList es = case es of
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , prt 0 xs])

instance Print Function_def where
  prt i e = case e of
   NewFunction type_specifier declarator stmordecs -> prPrec i 0 (concatD [prt 0 type_specifier , prt 0 declarator , doc (showString "{") , prt 0 stmordecs , doc (showString "}")])

  prtList es = case es of
   [] -> (concatD [])
   x:xs -> (concatD [prt 0 x , prt 0 xs])

instance Print Dec where
  prt i e = case e of
   Declarators type_specifier init_declarators -> prPrec i 0 (concatD [prt 0 type_specifier , prt 0 init_declarators , doc (showString ";")])

  prtList es = case es of
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , prt 0 xs])

instance Print Namespace where
  prt i e = case e of
   NSDeclarator id function_defs -> prPrec i 0 (concatD [doc (showString "namespace") , prt 0 id , doc (showString "{") , prt 0 function_defs , doc (showString "}")])


instance Print Type_specifier where
  prt i e = case e of
   Type_specifier_int  -> prPrec i 0 (concatD [doc (showString "int")])
   Type_specifier_float  -> prPrec i 0 (concatD [doc (showString "float")])
   Type_specifier_bool  -> prPrec i 0 (concatD [doc (showString "bool")])
   Type_specifierStruct_spec struct_spec -> prPrec i 0 (concatD [prt 0 struct_spec])


instance Print Struct_spec where
  prt i e = case e of
   Named id struct_decs -> prPrec i 0 (concatD [doc (showString "struct") , prt 0 id , doc (showString "{") , prt 0 struct_decs , doc (showString "}")])
   Unnamed struct_decs -> prPrec i 0 (concatD [doc (showString "struct") , doc (showString "{") , prt 0 struct_decs , doc (showString "}")])
   Type id -> prPrec i 0 (concatD [doc (showString "struct") , prt 0 id])


instance Print Struct_dec where
  prt i e = case e of
   Structen type_specifier struct_declarators -> prPrec i 0 (concatD [prt 0 type_specifier , prt 0 struct_declarators , doc (showString ";")])

  prtList es = case es of
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , prt 0 xs])

instance Print Struct_declarator where
  prt i e = case e of
   StructOnlyDecl declarator -> prPrec i 0 (concatD [prt 0 declarator])

  prtList es = case es of
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , doc (showString ",") , prt 0 xs])

instance Print Declarator where
  prt i e = case e of
   VarName id -> prPrec i 0 (concatD [prt 0 id])
   FunctionName declarator parameters -> prPrec i 0 (concatD [prt 0 declarator , doc (showString "(") , prt 0 parameters , doc (showString ")")])


instance Print Parameter where
  prt i e = case e of
   SingleParam type_specifier declarator -> prPrec i 0 (concatD [prt 0 type_specifier , prt 0 declarator])

  prtList es = case es of
   [] -> (concatD [])
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , doc (showString ",") , prt 0 xs])

instance Print Init_declarator where
  prt i e = case e of
   OnlyDecl declarator -> prPrec i 0 (concatD [prt 0 declarator])
   InitDecl declarator initializer -> prPrec i 0 (concatD [prt 0 declarator , doc (showString "=") , prt 0 initializer])

  prtList es = case es of
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , doc (showString ",") , prt 0 xs])

instance Print Initializer where
  prt i e = case e of
   InitExpr exp -> prPrec i 0 (concatD [prt 2 exp])
   InitList initializers -> prPrec i 0 (concatD [doc (showString "{") , prt 0 initializers , doc (showString "}")])

  prtList es = case es of
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , doc (showString ",") , prt 0 xs])

instance Print Stm where
  prt i e = case e of
   ListS stmordecs -> prPrec i 0 (concatD [doc (showString "{") , prt 0 stmordecs , doc (showString "}")])
   DecS decstm -> prPrec i 0 (concatD [prt 0 decstm])
   ExprS expstm -> prPrec i 0 (concatD [prt 0 expstm])
   IfS if_stm -> prPrec i 0 (concatD [prt 0 if_stm])
   IterS iter_stm -> prPrec i 0 (concatD [prt 0 iter_stm])
   JumpS jump_stm -> prPrec i 0 (concatD [prt 0 jump_stm])

  prtList es = case es of
   [x] -> (concatD [prt 0 x])
   x:xs -> (concatD [prt 0 x , prt 0 xs])

instance Print StmOrDec where
  prt i e = case e of
   SStm stm -> prPrec i 0 (concatD [prt 0 stm])
   SDec dec -> prPrec i 0 (concatD [prt 0 dec])

  prtList es = case es of
   [] -> (concatD [])
   x:xs -> (concatD [prt 0 x , prt 0 xs])

instance Print ExpStm where
  prt i e = case e of
   Sempty  -> prPrec i 0 (concatD [doc (showString ";")])
   Sexpr exp -> prPrec i 0 (concatD [prt 0 exp , doc (showString ";")])


instance Print DecStm where
  prt i e = case e of
   Dempty  -> prPrec i 0 (concatD [doc (showString ";")])
   Ddec dec -> prPrec i 0 (concatD [prt 0 dec])


instance Print If_stm where
  prt i e = case e of
   SIf exp stm -> prPrec i 0 (concatD [doc (showString "if") , doc (showString "(") , prt 0 exp , doc (showString ")") , prt 0 stm])
   SIfElse exp stm0 stm -> prPrec i 0 (concatD [doc (showString "if") , doc (showString "(") , prt 0 exp , doc (showString ")") , prt 0 stm0 , doc (showString "else") , prt 0 stm])


instance Print Iter_stm where
  prt i e = case e of
   SiterWhile exp stm -> prPrec i 0 (concatD [doc (showString "while") , doc (showString "(") , prt 0 exp , doc (showString ")") , prt 0 stm])
   SiterFor decstm expstm exp stm -> prPrec i 0 (concatD [doc (showString "for") , doc (showString "(") , prt 0 decstm , prt 0 expstm , prt 0 exp , doc (showString ")") , prt 0 stm])


instance Print Jump_stm where
  prt i e = case e of
   SjumpTwo  -> prPrec i 0 (concatD [doc (showString "continue") , doc (showString ";")])
   SjumpThree  -> prPrec i 0 (concatD [doc (showString "break") , doc (showString ";")])
   SjumpFour  -> prPrec i 0 (concatD [doc (showString "return") , doc (showString ";")])
   SjumpFive exp -> prPrec i 0 (concatD [doc (showString "return") , prt 0 exp , doc (showString ";")])


instance Print Exp where
  prt i e = case e of
   Ecomma exp0 exp -> prPrec i 0 (concatD [prt 0 exp0 , doc (showString ",") , prt 2 exp])
   Eassign id exp -> prPrec i 2 (concatD [prt 0 id , doc (showString "=") , prt 2 exp])
   Econdition exp0 exp1 exp -> prPrec i 3 (concatD [prt 4 exp0 , doc (showString "?") , prt 0 exp1 , doc (showString ":") , prt 3 exp])
   Elor exp0 exp -> prPrec i 4 (concatD [prt 4 exp0 , doc (showString "||") , prt 5 exp])
   Eland exp0 exp -> prPrec i 5 (concatD [prt 5 exp0 , doc (showString "&&") , prt 6 exp])
   Eeq exp0 exp -> prPrec i 6 (concatD [prt 6 exp0 , doc (showString "==") , prt 7 exp])
   Eneq exp0 exp -> prPrec i 6 (concatD [prt 6 exp0 , doc (showString "!=") , prt 7 exp])
   Elthen exp0 exp -> prPrec i 7 (concatD [prt 7 exp0 , doc (showString "<") , prt 8 exp])
   Egrthen exp0 exp -> prPrec i 7 (concatD [prt 7 exp0 , doc (showString ">") , prt 8 exp])
   Ele exp0 exp -> prPrec i 7 (concatD [prt 7 exp0 , doc (showString "<=") , prt 8 exp])
   Ege exp0 exp -> prPrec i 7 (concatD [prt 7 exp0 , doc (showString ">=") , prt 8 exp])
   Eplus exp0 exp -> prPrec i 8 (concatD [prt 8 exp0 , doc (showString "+") , prt 9 exp])
   Eminus exp0 exp -> prPrec i 8 (concatD [prt 8 exp0 , doc (showString "-") , prt 9 exp])
   Etimes exp0 exp -> prPrec i 9 (concatD [prt 9 exp0 , doc (showString "*") , prt 10 exp])
   Ediv exp0 exp -> prPrec i 9 (concatD [prt 9 exp0 , doc (showString "/") , prt 10 exp])
   Emod exp0 exp -> prPrec i 9 (concatD [prt 9 exp0 , doc (showString "%") , prt 10 exp])
   Etypeconv type_specifier exp -> prPrec i 10 (concatD [doc (showString "(") , prt 0 type_specifier , doc (showString ")") , prt 10 exp])
   Epreinc id -> prPrec i 11 (concatD [doc (showString "++") , prt 0 id])
   Epredec id -> prPrec i 11 (concatD [doc (showString "--") , prt 0 id])
   Epreop unary_operator exp -> prPrec i 11 (concatD [prt 0 unary_operator , prt 10 exp])
   Efunk id exps -> prPrec i 12 (concatD [prt 0 id , doc (showString "(") , prt 2 exps , doc (showString ")")])
   EfunkNS id0 id exps -> prPrec i 12 (concatD [prt 0 id0 , doc (showString "::") , prt 0 id , doc (showString "(") , prt 2 exps , doc (showString ")")])
   Eselect exp id -> prPrec i 12 (concatD [prt 12 exp , doc (showString ".") , prt 0 id])
   Epostinc id -> prPrec i 12 (concatD [prt 0 id , doc (showString "++")])
   Epostdec id -> prPrec i 12 (concatD [prt 0 id , doc (showString "--")])
   Evar id -> prPrec i 13 (concatD [prt 0 id])
   Econst constant -> prPrec i 13 (concatD [prt 0 constant])

  prtList es = case es of
   [] -> (concatD [])
   [x] -> (concatD [prt 2 x])
   x:xs -> (concatD [prt 2 x , doc (showString ",") , prt 2 xs])

instance Print Constant where
  prt i e = case e of
   Efloat d -> prPrec i 0 (concatD [prt 0 d])
   Ecfloat cfloat -> prPrec i 0 (concatD [prt 0 cfloat])
   Ebool boolean -> prPrec i 0 (concatD [prt 0 boolean])
   Eint n -> prPrec i 0 (concatD [prt 0 n])


instance Print Unary_operator where
  prt i e = case e of
   Negative  -> prPrec i 0 (concatD [doc (showString "-")])
   Logicalneg  -> prPrec i 0 (concatD [doc (showString "!")])



