{-# OPTIONS -fglasgow-exts -cpp #-}
{-# OPTIONS -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParKappaGrammar where
import AbsKappaGrammar
import LexKappaGrammar
import ErrM
#if __GLASGOW_HASKELL__ >= 503
import Data.Array
#else
import Array
#endif
#if __GLASGOW_HASKELL__ >= 503
import GHC.Exts
#else
import GlaExts
#endif

-- parser produced by Happy Version 1.18.2

newtype HappyAbsSyn  = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = GHC.Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn6 :: (Ident) -> (HappyAbsSyn )
happyIn6 x = unsafeCoerce# x
{-# INLINE happyIn6 #-}
happyOut6 :: (HappyAbsSyn ) -> (Ident)
happyOut6 x = unsafeCoerce# x
{-# INLINE happyOut6 #-}
happyIn7 :: (Double) -> (HappyAbsSyn )
happyIn7 x = unsafeCoerce# x
{-# INLINE happyIn7 #-}
happyOut7 :: (HappyAbsSyn ) -> (Double)
happyOut7 x = unsafeCoerce# x
{-# INLINE happyOut7 #-}
happyIn8 :: (Integer) -> (HappyAbsSyn )
happyIn8 x = unsafeCoerce# x
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn ) -> (Integer)
happyOut8 x = unsafeCoerce# x
{-# INLINE happyOut8 #-}
happyIn9 :: (CFloat) -> (HappyAbsSyn )
happyIn9 x = unsafeCoerce# x
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn ) -> (CFloat)
happyOut9 x = unsafeCoerce# x
{-# INLINE happyOut9 #-}
happyIn10 :: (Boolean) -> (HappyAbsSyn )
happyIn10 x = unsafeCoerce# x
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn ) -> (Boolean)
happyOut10 x = unsafeCoerce# x
{-# INLINE happyOut10 #-}
happyIn11 :: (Program) -> (HappyAbsSyn )
happyIn11 x = unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn ) -> (Program)
happyOut11 x = unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyIn12 :: ([DGlobalDeclaration]) -> (HappyAbsSyn )
happyIn12 x = unsafeCoerce# x
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn ) -> ([DGlobalDeclaration])
happyOut12 x = unsafeCoerce# x
{-# INLINE happyOut12 #-}
happyIn13 :: (DGlobalDeclaration) -> (HappyAbsSyn )
happyIn13 x = unsafeCoerce# x
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn ) -> (DGlobalDeclaration)
happyOut13 x = unsafeCoerce# x
{-# INLINE happyOut13 #-}
happyIn14 :: (Function_def) -> (HappyAbsSyn )
happyIn14 x = unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn ) -> (Function_def)
happyOut14 x = unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyIn15 :: (Dec) -> (HappyAbsSyn )
happyIn15 x = unsafeCoerce# x
{-# INLINE happyIn15 #-}
happyOut15 :: (HappyAbsSyn ) -> (Dec)
happyOut15 x = unsafeCoerce# x
{-# INLINE happyOut15 #-}
happyIn16 :: ([Dec]) -> (HappyAbsSyn )
happyIn16 x = unsafeCoerce# x
{-# INLINE happyIn16 #-}
happyOut16 :: (HappyAbsSyn ) -> ([Dec])
happyOut16 x = unsafeCoerce# x
{-# INLINE happyOut16 #-}
happyIn17 :: (Namespace) -> (HappyAbsSyn )
happyIn17 x = unsafeCoerce# x
{-# INLINE happyIn17 #-}
happyOut17 :: (HappyAbsSyn ) -> (Namespace)
happyOut17 x = unsafeCoerce# x
{-# INLINE happyOut17 #-}
happyIn18 :: ([Function_def]) -> (HappyAbsSyn )
happyIn18 x = unsafeCoerce# x
{-# INLINE happyIn18 #-}
happyOut18 :: (HappyAbsSyn ) -> ([Function_def])
happyOut18 x = unsafeCoerce# x
{-# INLINE happyOut18 #-}
happyIn19 :: (Type_specifier) -> (HappyAbsSyn )
happyIn19 x = unsafeCoerce# x
{-# INLINE happyIn19 #-}
happyOut19 :: (HappyAbsSyn ) -> (Type_specifier)
happyOut19 x = unsafeCoerce# x
{-# INLINE happyOut19 #-}
happyIn20 :: (Struct_spec) -> (HappyAbsSyn )
happyIn20 x = unsafeCoerce# x
{-# INLINE happyIn20 #-}
happyOut20 :: (HappyAbsSyn ) -> (Struct_spec)
happyOut20 x = unsafeCoerce# x
{-# INLINE happyOut20 #-}
happyIn21 :: (Struct_dec) -> (HappyAbsSyn )
happyIn21 x = unsafeCoerce# x
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn ) -> (Struct_dec)
happyOut21 x = unsafeCoerce# x
{-# INLINE happyOut21 #-}
happyIn22 :: ([Struct_dec]) -> (HappyAbsSyn )
happyIn22 x = unsafeCoerce# x
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn ) -> ([Struct_dec])
happyOut22 x = unsafeCoerce# x
{-# INLINE happyOut22 #-}
happyIn23 :: (Struct_declarator) -> (HappyAbsSyn )
happyIn23 x = unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn ) -> (Struct_declarator)
happyOut23 x = unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyIn24 :: ([Struct_declarator]) -> (HappyAbsSyn )
happyIn24 x = unsafeCoerce# x
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn ) -> ([Struct_declarator])
happyOut24 x = unsafeCoerce# x
{-# INLINE happyOut24 #-}
happyIn25 :: (Declarator) -> (HappyAbsSyn )
happyIn25 x = unsafeCoerce# x
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn ) -> (Declarator)
happyOut25 x = unsafeCoerce# x
{-# INLINE happyOut25 #-}
happyIn26 :: (Parameter) -> (HappyAbsSyn )
happyIn26 x = unsafeCoerce# x
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn ) -> (Parameter)
happyOut26 x = unsafeCoerce# x
{-# INLINE happyOut26 #-}
happyIn27 :: ([Parameter]) -> (HappyAbsSyn )
happyIn27 x = unsafeCoerce# x
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn ) -> ([Parameter])
happyOut27 x = unsafeCoerce# x
{-# INLINE happyOut27 #-}
happyIn28 :: (Init_declarator) -> (HappyAbsSyn )
happyIn28 x = unsafeCoerce# x
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn ) -> (Init_declarator)
happyOut28 x = unsafeCoerce# x
{-# INLINE happyOut28 #-}
happyIn29 :: ([Init_declarator]) -> (HappyAbsSyn )
happyIn29 x = unsafeCoerce# x
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn ) -> ([Init_declarator])
happyOut29 x = unsafeCoerce# x
{-# INLINE happyOut29 #-}
happyIn30 :: (Initializer) -> (HappyAbsSyn )
happyIn30 x = unsafeCoerce# x
{-# INLINE happyIn30 #-}
happyOut30 :: (HappyAbsSyn ) -> (Initializer)
happyOut30 x = unsafeCoerce# x
{-# INLINE happyOut30 #-}
happyIn31 :: ([Initializer]) -> (HappyAbsSyn )
happyIn31 x = unsafeCoerce# x
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn ) -> ([Initializer])
happyOut31 x = unsafeCoerce# x
{-# INLINE happyOut31 #-}
happyIn32 :: (Stm) -> (HappyAbsSyn )
happyIn32 x = unsafeCoerce# x
{-# INLINE happyIn32 #-}
happyOut32 :: (HappyAbsSyn ) -> (Stm)
happyOut32 x = unsafeCoerce# x
{-# INLINE happyOut32 #-}
happyIn33 :: ([Stm]) -> (HappyAbsSyn )
happyIn33 x = unsafeCoerce# x
{-# INLINE happyIn33 #-}
happyOut33 :: (HappyAbsSyn ) -> ([Stm])
happyOut33 x = unsafeCoerce# x
{-# INLINE happyOut33 #-}
happyIn34 :: (StmOrDec) -> (HappyAbsSyn )
happyIn34 x = unsafeCoerce# x
{-# INLINE happyIn34 #-}
happyOut34 :: (HappyAbsSyn ) -> (StmOrDec)
happyOut34 x = unsafeCoerce# x
{-# INLINE happyOut34 #-}
happyIn35 :: ([StmOrDec]) -> (HappyAbsSyn )
happyIn35 x = unsafeCoerce# x
{-# INLINE happyIn35 #-}
happyOut35 :: (HappyAbsSyn ) -> ([StmOrDec])
happyOut35 x = unsafeCoerce# x
{-# INLINE happyOut35 #-}
happyIn36 :: (ExpStm) -> (HappyAbsSyn )
happyIn36 x = unsafeCoerce# x
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn ) -> (ExpStm)
happyOut36 x = unsafeCoerce# x
{-# INLINE happyOut36 #-}
happyIn37 :: (DecStm) -> (HappyAbsSyn )
happyIn37 x = unsafeCoerce# x
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn ) -> (DecStm)
happyOut37 x = unsafeCoerce# x
{-# INLINE happyOut37 #-}
happyIn38 :: (If_stm) -> (HappyAbsSyn )
happyIn38 x = unsafeCoerce# x
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn ) -> (If_stm)
happyOut38 x = unsafeCoerce# x
{-# INLINE happyOut38 #-}
happyIn39 :: (Iter_stm) -> (HappyAbsSyn )
happyIn39 x = unsafeCoerce# x
{-# INLINE happyIn39 #-}
happyOut39 :: (HappyAbsSyn ) -> (Iter_stm)
happyOut39 x = unsafeCoerce# x
{-# INLINE happyOut39 #-}
happyIn40 :: (Jump_stm) -> (HappyAbsSyn )
happyIn40 x = unsafeCoerce# x
{-# INLINE happyIn40 #-}
happyOut40 :: (HappyAbsSyn ) -> (Jump_stm)
happyOut40 x = unsafeCoerce# x
{-# INLINE happyOut40 #-}
happyIn41 :: (Exp) -> (HappyAbsSyn )
happyIn41 x = unsafeCoerce# x
{-# INLINE happyIn41 #-}
happyOut41 :: (HappyAbsSyn ) -> (Exp)
happyOut41 x = unsafeCoerce# x
{-# INLINE happyOut41 #-}
happyIn42 :: (Exp) -> (HappyAbsSyn )
happyIn42 x = unsafeCoerce# x
{-# INLINE happyIn42 #-}
happyOut42 :: (HappyAbsSyn ) -> (Exp)
happyOut42 x = unsafeCoerce# x
{-# INLINE happyOut42 #-}
happyIn43 :: (Exp) -> (HappyAbsSyn )
happyIn43 x = unsafeCoerce# x
{-# INLINE happyIn43 #-}
happyOut43 :: (HappyAbsSyn ) -> (Exp)
happyOut43 x = unsafeCoerce# x
{-# INLINE happyOut43 #-}
happyIn44 :: (Exp) -> (HappyAbsSyn )
happyIn44 x = unsafeCoerce# x
{-# INLINE happyIn44 #-}
happyOut44 :: (HappyAbsSyn ) -> (Exp)
happyOut44 x = unsafeCoerce# x
{-# INLINE happyOut44 #-}
happyIn45 :: (Exp) -> (HappyAbsSyn )
happyIn45 x = unsafeCoerce# x
{-# INLINE happyIn45 #-}
happyOut45 :: (HappyAbsSyn ) -> (Exp)
happyOut45 x = unsafeCoerce# x
{-# INLINE happyOut45 #-}
happyIn46 :: (Exp) -> (HappyAbsSyn )
happyIn46 x = unsafeCoerce# x
{-# INLINE happyIn46 #-}
happyOut46 :: (HappyAbsSyn ) -> (Exp)
happyOut46 x = unsafeCoerce# x
{-# INLINE happyOut46 #-}
happyIn47 :: (Exp) -> (HappyAbsSyn )
happyIn47 x = unsafeCoerce# x
{-# INLINE happyIn47 #-}
happyOut47 :: (HappyAbsSyn ) -> (Exp)
happyOut47 x = unsafeCoerce# x
{-# INLINE happyOut47 #-}
happyIn48 :: (Exp) -> (HappyAbsSyn )
happyIn48 x = unsafeCoerce# x
{-# INLINE happyIn48 #-}
happyOut48 :: (HappyAbsSyn ) -> (Exp)
happyOut48 x = unsafeCoerce# x
{-# INLINE happyOut48 #-}
happyIn49 :: (Exp) -> (HappyAbsSyn )
happyIn49 x = unsafeCoerce# x
{-# INLINE happyIn49 #-}
happyOut49 :: (HappyAbsSyn ) -> (Exp)
happyOut49 x = unsafeCoerce# x
{-# INLINE happyOut49 #-}
happyIn50 :: (Exp) -> (HappyAbsSyn )
happyIn50 x = unsafeCoerce# x
{-# INLINE happyIn50 #-}
happyOut50 :: (HappyAbsSyn ) -> (Exp)
happyOut50 x = unsafeCoerce# x
{-# INLINE happyOut50 #-}
happyIn51 :: (Exp) -> (HappyAbsSyn )
happyIn51 x = unsafeCoerce# x
{-# INLINE happyIn51 #-}
happyOut51 :: (HappyAbsSyn ) -> (Exp)
happyOut51 x = unsafeCoerce# x
{-# INLINE happyOut51 #-}
happyIn52 :: (Exp) -> (HappyAbsSyn )
happyIn52 x = unsafeCoerce# x
{-# INLINE happyIn52 #-}
happyOut52 :: (HappyAbsSyn ) -> (Exp)
happyOut52 x = unsafeCoerce# x
{-# INLINE happyOut52 #-}
happyIn53 :: (Exp) -> (HappyAbsSyn )
happyIn53 x = unsafeCoerce# x
{-# INLINE happyIn53 #-}
happyOut53 :: (HappyAbsSyn ) -> (Exp)
happyOut53 x = unsafeCoerce# x
{-# INLINE happyOut53 #-}
happyIn54 :: (Constant) -> (HappyAbsSyn )
happyIn54 x = unsafeCoerce# x
{-# INLINE happyIn54 #-}
happyOut54 :: (HappyAbsSyn ) -> (Constant)
happyOut54 x = unsafeCoerce# x
{-# INLINE happyOut54 #-}
happyIn55 :: (Exp) -> (HappyAbsSyn )
happyIn55 x = unsafeCoerce# x
{-# INLINE happyIn55 #-}
happyOut55 :: (HappyAbsSyn ) -> (Exp)
happyOut55 x = unsafeCoerce# x
{-# INLINE happyOut55 #-}
happyIn56 :: ([Exp]) -> (HappyAbsSyn )
happyIn56 x = unsafeCoerce# x
{-# INLINE happyIn56 #-}
happyOut56 :: (HappyAbsSyn ) -> ([Exp])
happyOut56 x = unsafeCoerce# x
{-# INLINE happyOut56 #-}
happyIn57 :: (Unary_operator) -> (HappyAbsSyn )
happyIn57 x = unsafeCoerce# x
{-# INLINE happyIn57 #-}
happyOut57 :: (HappyAbsSyn ) -> (Unary_operator)
happyOut57 x = unsafeCoerce# x
{-# INLINE happyOut57 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\xc9\x00\xd4\x04\x50\x05\x97\x01\x00\x00\x38\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0c\x00\x00\x00\x00\x00\x27\x00\xb9\x01\x6d\x00\x92\x00\x09\x01\x42\x00\x00\x00\x00\x00\xaf\x01\x00\x00\x00\x00\x00\x00\x50\x05\x00\x00\x00\x05\x8a\x01\x00\x00\x8a\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8a\x01\x00\x00\x76\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6f\x00\x24\x04\x00\x00\x92\x01\x8b\x01\x00\x00\x96\x01\x93\x01\x00\x00\x47\x05\xc0\x00\x8d\x01\x00\x00\x63\x01\x00\x00\xc9\x00\x00\x00\x00\x00\x00\x00\x64\x01\x64\x01\x66\x01\x00\x00\x8e\x01\x7f\x01\x6e\x01\x00\x00\xa8\x04\x50\x05\x4a\x01\x6d\x01\x36\x00\x00\x00\x50\x05\x96\x00\x00\x00\x00\x00\x50\x05\x00\x00\x37\x00\x00\x00\x00\x00\x68\x01\xd2\x00\xd4\x00\x00\x00\x45\x01\x50\x05\x50\x05\x50\x05\x50\x05\x50\x05\x50\x05\x50\x05\x50\x05\x50\x05\x50\x05\x50\x05\x50\x05\x50\x05\x50\x05\x50\x05\x00\x00\x00\x00\x45\x01\x50\x05\x00\x00\x56\x01\x4e\x01\x50\x01\x33\x01\xa6\x00\x6d\x00\x92\x00\x92\x00\x0a\x00\x0a\x00\x0a\x00\x0a\x00\x42\x00\x42\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x50\x05\x6d\x01\x42\x05\x00\x00\x16\x05\x00\x00\xae\x00\x00\x00\xf8\x00\x6d\x01\xf7\x00\x6d\x01\x6a\x00\x7c\x04\x00\x00\x00\x00\x00\x00\x00\x00\xf5\x00\x00\x00\x00\x00\x58\x00\x50\x04\x00\x00\xd4\x04\xe8\x00\x00\x00\x00\x00\x12\x01\xff\x00\xfe\x00\xd4\x04\x50\x05\x00\x00\x00\x00\x00\x00\x09\x05\xc6\x00\xe3\x00\xe1\x00\x00\x00\x50\x05\x00\x00\x50\x05\x50\x05\xdd\x00\x00\x00\x00\x00\x00\x00\x6d\x01\xd6\x00\xd7\x00\xaf\x00\x40\x00\xbb\x00\x00\x00\xa7\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa7\x00\x00\x00\x0e\x00\x00\x00\xd4\x04\xd4\x04\x00\x00\x09\x05\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x58\x05\x05\x01\x39\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf4\x03\x00\x00\x39\x01\xba\x00\x00\x00\xb2\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x1f\x02\xa3\x00\x00\x00\x94\x00\x00\x00\x00\x00\x4c\x01\x00\x00\x00\x00\x00\x00\x67\x00\xa2\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x05\x02\x00\x00\x87\x01\x00\x00\x00\x00\xeb\x01\xff\xff\x00\x00\x00\x00\xd6\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x86\x00\xec\x03\xe4\x03\xd3\x03\x9f\x03\x96\x03\x8d\x03\x7c\x03\x59\x03\x48\x03\x3e\x03\x15\x01\x25\x03\xd1\x01\x0a\x03\xa2\x02\x00\x00\x00\x00\x7c\x00\xbd\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb0\x03\x7a\x01\x89\x02\x00\x00\x4d\x01\x00\x00\x00\x00\x00\x00\x9b\x00\x3c\x01\x00\x00\xfd\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x3b\x00\x56\x00\x08\x00\x03\x00\x01\x00\x00\x00\xd1\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x9d\x00\xb7\x01\x00\x00\x00\x00\x00\x00\x9d\x01\x09\x00\x00\x00\x00\x00\x00\x00\xf1\x02\x00\x00\x6d\x02\x53\x02\x00\x00\x00\x00\x00\x00\x00\x00\x0d\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x00\x00\x00\x00\x00\x00\x00\x69\x00\x35\x00\x00\x00\x81\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\x00\x00\x00\x00\x00\x00\xfc\xff\x92\xff\x8f\xff\x8c\xff\x8e\xff\x8d\xff\x00\x00\x8b\xff\xb4\xff\xb2\xff\xb0\xff\xae\xff\xab\xff\xa6\xff\xa3\xff\x9f\xff\x9d\xff\x99\xff\x93\xff\x91\xff\xb6\xff\x00\x00\x86\xff\x00\x00\x00\x00\x87\xff\x00\x00\xfb\xff\xfa\xff\xf9\xff\xf8\xff\xc0\xff\x00\x00\xe7\xff\x00\x00\xcd\xff\xce\xff\xcc\xff\xcb\xff\xca\xff\x00\x00\xc1\xff\xe8\xff\x00\x00\x00\x00\xe9\xff\x00\x00\x00\x00\xea\xff\x00\x00\x00\x00\x00\x00\xc5\xff\x00\x00\xf7\xff\xf6\xff\xf4\xff\xf3\xff\xf2\xff\x00\x00\x00\x00\x00\x00\xdd\xff\xd7\xff\xd5\xff\x00\x00\xf5\xff\x00\x00\x00\x00\xe4\xff\x00\x00\x00\x00\xb9\xff\x00\x00\x00\x00\xbb\xff\xba\xff\x00\x00\xc2\xff\xd7\xff\x9b\xff\x9c\xff\x00\x00\x00\x00\x92\xff\x9a\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8a\xff\x95\xff\x94\xff\x00\x00\x00\x00\xb5\xff\x00\x00\x89\xff\x00\x00\xb1\xff\x00\x00\xaf\xff\xad\xff\xac\xff\xa7\xff\xa9\xff\xa8\xff\xaa\xff\xa4\xff\xa5\xff\xa1\xff\xa2\xff\xa0\xff\x96\xff\x90\xff\x00\x00\xda\xff\x00\x00\xb7\xff\x00\x00\xc1\xff\x00\x00\xb8\xff\x00\x00\xe2\xff\x00\x00\x00\x00\x00\x00\xc0\xff\xc7\xff\xc4\xff\xcf\xff\xf0\xff\x00\x00\xc5\xff\xec\xff\x00\x00\x00\x00\xd4\xff\x00\x00\x00\x00\xe5\xff\xe1\xff\xdf\xff\x00\x00\xe0\xff\x00\x00\x00\x00\xc3\xff\xd6\xff\xd3\xff\x00\x00\x00\x00\xd9\xff\x00\x00\x9e\xff\x00\x00\x98\xff\x8a\xff\x8a\xff\x00\x00\x88\xff\xb3\xff\xdc\xff\xda\xff\xdb\xff\xd1\xff\x00\x00\x00\x00\xbf\xff\xe3\xff\x00\x00\xe6\xff\xbd\xff\xf1\xff\xeb\xff\x00\x00\xed\xff\x00\x00\xde\xff\x00\x00\x00\x00\xd2\xff\x00\x00\xd8\xff\x97\xff\xd0\xff\xbc\xff\xbe\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x00\x00\x09\x00\x00\x00\x09\x00\x08\x00\x0d\x00\x0e\x00\x0d\x00\x0e\x00\x0d\x00\x0e\x00\x08\x00\x05\x00\x0c\x00\x0b\x00\x0a\x00\x11\x00\x12\x00\x13\x00\x13\x00\x1a\x00\x13\x00\x1c\x00\x1f\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x25\x00\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x2e\x00\x00\x00\x05\x00\x05\x00\x09\x00\x18\x00\x0a\x00\x09\x00\x0d\x00\x0e\x00\x0c\x00\x03\x00\x06\x00\x11\x00\x10\x00\x07\x00\x0a\x00\x14\x00\x14\x00\x26\x00\x13\x00\x1a\x00\x0e\x00\x16\x00\x17\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x00\x00\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x02\x00\x06\x00\x19\x00\x09\x00\x1d\x00\x0a\x00\x1d\x00\x0d\x00\x0e\x00\x20\x00\x0a\x00\x13\x00\x23\x00\x00\x00\x16\x00\x17\x00\x27\x00\x11\x00\x13\x00\x15\x00\x1a\x00\x16\x00\x17\x00\x00\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x00\x00\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x00\x00\x12\x00\x13\x00\x09\x00\x11\x00\x16\x00\x17\x00\x0d\x00\x0e\x00\x11\x00\x12\x00\x13\x00\x19\x00\x0a\x00\x1d\x00\x00\x00\x1d\x00\x06\x00\x0f\x00\x20\x00\x1a\x00\x0a\x00\x23\x00\x00\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x28\x00\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x27\x00\x1c\x00\x06\x00\x05\x00\x09\x00\x05\x00\x0a\x00\x09\x00\x0d\x00\x0e\x00\x0c\x00\x0a\x00\x19\x00\x06\x00\x10\x00\x25\x00\x1d\x00\x06\x00\x28\x00\x20\x00\x21\x00\x1a\x00\x23\x00\x0a\x00\x28\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x05\x00\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x09\x00\x27\x00\x11\x00\x08\x00\x0d\x00\x0e\x00\x0b\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0d\x00\x0e\x00\x0a\x00\x28\x00\x27\x00\x1a\x00\x28\x00\x14\x00\x15\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x04\x00\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x0d\x00\x0e\x00\x33\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x06\x00\x07\x00\x08\x00\x09\x00\x06\x00\x0b\x00\x0a\x00\x0d\x00\x0e\x00\x05\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x1e\x00\x33\x00\x28\x00\x06\x00\x25\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x11\x00\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x19\x00\x0d\x00\x0e\x00\x0a\x00\x1d\x00\x25\x00\x28\x00\x20\x00\x14\x00\x15\x00\x23\x00\x2e\x00\x05\x00\x05\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x05\x00\x18\x00\x19\x00\x05\x00\x11\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x14\x00\x11\x00\x2e\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x28\x00\x25\x00\x33\x00\x18\x00\x19\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0d\x00\x04\x00\xff\xff\x28\x00\xff\xff\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\x32\x00\x33\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\x32\x00\x33\x00\x18\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\x32\x00\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x33\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x01\x00\xff\xff\x33\x00\xff\xff\x05\x00\xff\xff\xff\xff\xff\xff\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\xff\xff\xff\xff\x11\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\x22\x00\x23\x00\x24\x00\x25\x00\xff\xff\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x01\x00\x2e\x00\xff\xff\xff\xff\x05\x00\xff\xff\xff\xff\xff\xff\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\xff\xff\xff\xff\x11\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x19\x00\x1a\x00\x1b\x00\xff\xff\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\x22\x00\x23\x00\x24\x00\x25\x00\xff\xff\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x01\x00\xff\xff\xff\xff\xff\xff\x05\x00\xff\xff\xff\xff\xff\xff\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\xff\xff\xff\xff\x11\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x19\x00\x1a\x00\x1b\x00\xff\xff\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\x22\x00\x23\x00\x24\x00\x25\x00\xff\xff\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x01\x00\xff\xff\xff\xff\xff\xff\x05\x00\xff\xff\xff\xff\xff\xff\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\xff\xff\xff\xff\x11\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x19\x00\x1a\x00\x1b\x00\xff\xff\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\x22\x00\x23\x00\x24\x00\x25\x00\xff\xff\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x01\x00\xff\xff\xff\xff\xff\xff\x05\x00\xff\xff\xff\xff\xff\xff\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\xff\xff\xff\xff\x11\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x19\x00\x1a\x00\x1b\x00\xff\xff\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\x22\x00\x23\x00\x24\x00\x25\x00\xff\xff\xff\xff\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x01\x00\xff\xff\xff\xff\xff\xff\x05\x00\xff\xff\xff\xff\xff\xff\x09\x00\x01\x00\x0b\x00\x0c\x00\xff\xff\x05\x00\xff\xff\xff\xff\xff\xff\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\x01\x00\xff\xff\x19\x00\xff\xff\x05\x00\xff\xff\x1d\x00\xff\xff\x09\x00\x20\x00\x0b\x00\x0c\x00\x23\x00\xff\xff\xff\xff\xff\xff\x11\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\xff\xff\x25\x00\xff\xff\xff\xff\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x01\x00\xff\xff\xff\xff\xff\xff\x05\x00\x01\x00\xff\xff\xff\xff\x09\x00\x05\x00\x0b\x00\x0c\x00\xff\xff\x09\x00\x01\x00\x0b\x00\x0c\x00\xff\xff\x05\x00\xff\xff\xff\xff\x11\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\xff\xff\x0b\x00\xff\xff\x0d\x00\x0e\x00\x25\x00\xff\xff\xff\xff\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\xff\xff\xff\xff\xff\xff\xff\xff\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x42\x00\x42\x00\x23\x00\x42\x00\x8f\x00\xbe\x00\x24\x00\x25\x00\x24\x00\x25\x00\xbf\x00\x25\x00\x5f\x00\x84\x00\x97\x00\x60\x00\x52\x00\x9e\x00\xc2\x00\xa0\x00\xc1\x00\x90\x00\xb4\x00\x91\x00\x86\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x96\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\xff\xff\x42\x00\x84\x00\x6a\x00\x23\x00\x68\x00\x52\x00\x6b\x00\x24\x00\x25\x00\x6c\x00\x5c\x00\xc5\x00\x8a\x00\x6d\x00\x5d\x00\x52\x00\x85\x00\x6e\x00\x69\x00\x53\x00\xca\x00\x5e\x00\x44\x00\x99\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x42\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x42\x00\x65\x00\x9b\x00\x2f\x00\x23\x00\x98\x00\x52\x00\x32\x00\x24\x00\x25\x00\x35\x00\x52\x00\x43\x00\x37\x00\x6f\x00\x44\x00\x45\x00\xc1\x00\x53\x00\x53\x00\x66\x00\xcb\x00\x44\x00\x45\x00\x80\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x42\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x41\x00\x49\x00\x61\x00\x62\x00\x23\x00\x88\x00\x63\x00\x64\x00\x24\x00\x25\x00\x9e\x00\x9f\x00\xa0\x00\x2f\x00\x52\x00\x47\x00\x54\x00\x32\x00\xa2\x00\xac\x00\x35\x00\xb8\x00\x52\x00\x37\x00\x55\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x05\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\xc6\x00\xc4\x00\x82\x00\x6a\x00\x23\x00\x84\x00\x52\x00\x6b\x00\x24\x00\x25\x00\x6c\x00\xc7\x00\x2f\x00\xc9\x00\x6d\x00\x4b\x00\x32\x00\xb3\x00\x05\x00\x35\x00\x41\x00\xbc\x00\x37\x00\xb4\x00\x05\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x84\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x8a\x00\x25\x00\x8b\x00\x9b\x00\x23\x00\xbc\x00\xba\x00\x5f\x00\x24\x00\x25\x00\x60\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\xa7\x00\x25\x00\xbb\x00\x05\x00\x9d\x00\x26\x00\x05\x00\xa8\x00\xc7\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x67\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x75\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x56\x00\x25\x00\x19\x00\x8a\x00\x25\x00\x8b\x00\x9d\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x46\x00\x3b\x00\x3c\x00\x3d\x00\xad\x00\x3e\x00\xae\x00\x3f\x00\x25\x00\xaf\x00\x57\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\xa2\x00\x19\x00\x05\x00\x83\x00\x8e\x00\x2c\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x94\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x2f\x00\xa7\x00\x25\x00\x95\x00\x32\x00\x97\x00\x05\x00\x35\x00\xa8\x00\xa9\x00\x37\x00\xff\xff\x49\x00\x84\x00\x8a\x00\x25\x00\x8b\x00\x8c\x00\x4e\x00\xb5\x00\xc9\x00\x4f\x00\x50\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x85\x00\x51\x00\xff\xff\xa5\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x05\x00\x96\x00\x19\x00\xb5\x00\xb6\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x5b\x00\x67\x00\x00\x00\x05\x00\x00\x00\xa5\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb7\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x73\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x88\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8e\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4b\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x70\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\xaf\x00\x19\x00\x00\x00\x00\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x70\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\xb0\x00\x19\x00\xa4\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa5\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x70\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x71\x00\x19\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6e\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x85\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb1\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x72\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\x74\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x76\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x77\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x78\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x79\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x7a\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x7b\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x7c\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\xaa\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x58\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7d\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7e\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x7f\x00\x14\x00\x15\x00\x16\x00\x17\x00\x00\x00\x00\x00\x19\x00\x59\x00\x14\x00\x15\x00\x16\x00\x17\x00\xc1\xff\x00\x00\x19\x00\x00\x00\xc1\xff\x00\x00\x00\x00\x00\x00\xc1\xff\x00\x00\xc1\xff\xc1\xff\x00\x00\x00\x00\x00\x00\x00\x00\xc1\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc1\xff\xc1\xff\xc1\xff\xc1\xff\xc1\xff\xc1\xff\xc1\xff\xc1\xff\x00\x00\xc1\xff\xc1\xff\xc1\xff\xc1\xff\x00\x00\xc1\xff\xc1\xff\xc1\xff\xc1\xff\xc1\xff\xc1\xff\x1b\x00\xc1\xff\x00\x00\x00\x00\x1c\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x00\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2f\x00\x30\x00\x31\x00\x00\x00\x32\x00\x33\x00\x34\x00\x35\x00\x00\x00\x36\x00\x37\x00\x38\x00\x39\x00\x00\x00\xbe\x00\x05\x00\x20\x00\x21\x00\x22\x00\x23\x00\xc0\xff\x00\x00\x00\x00\x00\x00\xc0\xff\x00\x00\x00\x00\x00\x00\xc0\xff\x00\x00\xc0\xff\xc0\xff\x00\x00\x00\x00\x00\x00\x00\x00\xc0\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc0\xff\xc0\xff\xc0\xff\x00\x00\xc0\xff\xc0\xff\xc0\xff\xc0\xff\x00\x00\xc0\xff\xc0\xff\xc0\xff\xc0\xff\x00\x00\xc0\xff\xc0\xff\xc0\xff\xc0\xff\xc0\xff\xc0\xff\x1b\x00\x00\x00\x00\x00\x00\x00\x1c\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x00\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2f\x00\x30\x00\x31\x00\x00\x00\x32\x00\x33\x00\x34\x00\x35\x00\x00\x00\x36\x00\x37\x00\x38\x00\x39\x00\x00\x00\x93\x00\x05\x00\x20\x00\x21\x00\x22\x00\x23\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1c\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x00\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2f\x00\x30\x00\x31\x00\x00\x00\x32\x00\x33\x00\x34\x00\x35\x00\x00\x00\x36\x00\x37\x00\x38\x00\x39\x00\x00\x00\x00\x00\x05\x00\x20\x00\x21\x00\x22\x00\x23\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1c\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x1b\x00\x1e\x00\x1f\x00\x00\x00\x1c\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x00\x00\x1e\x00\x1f\x00\x00\x00\x1b\x00\x00\x00\x2f\x00\x00\x00\x1c\x00\x00\x00\x32\x00\x00\x00\x1d\x00\x35\x00\x1e\x00\x1f\x00\x37\x00\x00\x00\x00\x00\x00\x00\xa4\x00\x05\x00\x20\x00\x21\x00\x22\x00\x23\x00\x00\x00\xa7\x00\x00\x00\x00\x00\x05\x00\x20\x00\x21\x00\x22\x00\x23\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x20\x00\x21\x00\x22\x00\x23\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1c\x00\x1b\x00\x00\x00\x00\x00\x1d\x00\x1c\x00\x1e\x00\x1f\x00\x00\x00\x1d\x00\x1b\x00\x1e\x00\x1f\x00\x00\x00\x1c\x00\x00\x00\x00\x00\x4d\x00\x1d\x00\x00\x00\x1e\x00\x1f\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x00\x00\x3e\x00\x00\x00\x3f\x00\x25\x00\xa7\x00\x00\x00\x00\x00\x05\x00\x20\x00\x21\x00\x22\x00\x23\x00\x05\x00\x20\x00\x21\x00\x22\x00\x23\x00\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x20\x00\x21\x00\x22\x00\x23\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = array (3, 121) [
	(3 , happyReduce_3),
	(4 , happyReduce_4),
	(5 , happyReduce_5),
	(6 , happyReduce_6),
	(7 , happyReduce_7),
	(8 , happyReduce_8),
	(9 , happyReduce_9),
	(10 , happyReduce_10),
	(11 , happyReduce_11),
	(12 , happyReduce_12),
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57),
	(58 , happyReduce_58),
	(59 , happyReduce_59),
	(60 , happyReduce_60),
	(61 , happyReduce_61),
	(62 , happyReduce_62),
	(63 , happyReduce_63),
	(64 , happyReduce_64),
	(65 , happyReduce_65),
	(66 , happyReduce_66),
	(67 , happyReduce_67),
	(68 , happyReduce_68),
	(69 , happyReduce_69),
	(70 , happyReduce_70),
	(71 , happyReduce_71),
	(72 , happyReduce_72),
	(73 , happyReduce_73),
	(74 , happyReduce_74),
	(75 , happyReduce_75),
	(76 , happyReduce_76),
	(77 , happyReduce_77),
	(78 , happyReduce_78),
	(79 , happyReduce_79),
	(80 , happyReduce_80),
	(81 , happyReduce_81),
	(82 , happyReduce_82),
	(83 , happyReduce_83),
	(84 , happyReduce_84),
	(85 , happyReduce_85),
	(86 , happyReduce_86),
	(87 , happyReduce_87),
	(88 , happyReduce_88),
	(89 , happyReduce_89),
	(90 , happyReduce_90),
	(91 , happyReduce_91),
	(92 , happyReduce_92),
	(93 , happyReduce_93),
	(94 , happyReduce_94),
	(95 , happyReduce_95),
	(96 , happyReduce_96),
	(97 , happyReduce_97),
	(98 , happyReduce_98),
	(99 , happyReduce_99),
	(100 , happyReduce_100),
	(101 , happyReduce_101),
	(102 , happyReduce_102),
	(103 , happyReduce_103),
	(104 , happyReduce_104),
	(105 , happyReduce_105),
	(106 , happyReduce_106),
	(107 , happyReduce_107),
	(108 , happyReduce_108),
	(109 , happyReduce_109),
	(110 , happyReduce_110),
	(111 , happyReduce_111),
	(112 , happyReduce_112),
	(113 , happyReduce_113),
	(114 , happyReduce_114),
	(115 , happyReduce_115),
	(116 , happyReduce_116),
	(117 , happyReduce_117),
	(118 , happyReduce_118),
	(119 , happyReduce_119),
	(120 , happyReduce_120),
	(121 , happyReduce_121)
	]

happy_n_terms = 47 :: Int
happy_n_nonterms = 52 :: Int

happyReduce_3 = happySpecReduce_1  0# happyReduction_3
happyReduction_3 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TV happy_var_1)) -> 
	happyIn6
		 (Ident happy_var_1
	)}

happyReduce_4 = happySpecReduce_1  1# happyReduction_4
happyReduction_4 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn7
		 ((read ( happy_var_1)) :: Double
	)}

happyReduce_5 = happySpecReduce_1  2# happyReduction_5
happyReduction_5 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn8
		 ((read ( happy_var_1)) :: Integer
	)}

happyReduce_6 = happySpecReduce_1  3# happyReduction_6
happyReduction_6 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_CFloat happy_var_1)) -> 
	happyIn9
		 (CFloat (happy_var_1)
	)}

happyReduce_7 = happySpecReduce_1  4# happyReduction_7
happyReduction_7 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_Boolean happy_var_1)) -> 
	happyIn10
		 (Boolean (happy_var_1)
	)}

happyReduce_8 = happySpecReduce_1  5# happyReduction_8
happyReduction_8 happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	happyIn11
		 (Progr happy_var_1
	)}

happyReduce_9 = happySpecReduce_1  6# happyReduction_9
happyReduction_9 happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	happyIn12
		 ((:[]) happy_var_1
	)}

happyReduce_10 = happySpecReduce_2  6# happyReduction_10
happyReduction_10 happy_x_2
	happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_2 of { happy_var_2 -> 
	happyIn12
		 ((:) happy_var_1 happy_var_2
	)}}

happyReduce_11 = happySpecReduce_1  7# happyReduction_11
happyReduction_11 happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	happyIn13
		 (DFunction happy_var_1
	)}

happyReduce_12 = happySpecReduce_1  7# happyReduction_12
happyReduction_12 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn13
		 (DGlobal happy_var_1
	)}

happyReduce_13 = happySpecReduce_1  7# happyReduction_13
happyReduction_13 happy_x_1
	 =  case happyOut17 happy_x_1 of { happy_var_1 -> 
	happyIn13
		 (DNamespace happy_var_1
	)}

happyReduce_14 = happyReduce 5# 8# happyReduction_14
happyReduction_14 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_2 of { happy_var_2 -> 
	case happyOut35 happy_x_4 of { happy_var_4 -> 
	happyIn14
		 (NewFunction happy_var_1 happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest}}}

happyReduce_15 = happySpecReduce_3  9# happyReduction_15
happyReduction_15 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOut29 happy_x_2 of { happy_var_2 -> 
	happyIn15
		 (Declarators happy_var_1 happy_var_2
	)}}

happyReduce_16 = happySpecReduce_1  10# happyReduction_16
happyReduction_16 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn16
		 ((:[]) happy_var_1
	)}

happyReduce_17 = happySpecReduce_2  10# happyReduction_17
happyReduction_17 happy_x_2
	happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	case happyOut16 happy_x_2 of { happy_var_2 -> 
	happyIn16
		 ((:) happy_var_1 happy_var_2
	)}}

happyReduce_18 = happyReduce 5# 11# happyReduction_18
happyReduction_18 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut6 happy_x_2 of { happy_var_2 -> 
	case happyOut18 happy_x_4 of { happy_var_4 -> 
	happyIn17
		 (NSDeclarator happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest}}

happyReduce_19 = happySpecReduce_0  12# happyReduction_19
happyReduction_19  =  happyIn18
		 ([]
	)

happyReduce_20 = happySpecReduce_2  12# happyReduction_20
happyReduction_20 happy_x_2
	happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	case happyOut14 happy_x_2 of { happy_var_2 -> 
	happyIn18
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_21 = happySpecReduce_1  13# happyReduction_21
happyReduction_21 happy_x_1
	 =  happyIn19
		 (Type_specifier_int
	)

happyReduce_22 = happySpecReduce_1  13# happyReduction_22
happyReduction_22 happy_x_1
	 =  happyIn19
		 (Type_specifier_float
	)

happyReduce_23 = happySpecReduce_1  13# happyReduction_23
happyReduction_23 happy_x_1
	 =  happyIn19
		 (Type_specifier_bool
	)

happyReduce_24 = happySpecReduce_1  13# happyReduction_24
happyReduction_24 happy_x_1
	 =  case happyOut20 happy_x_1 of { happy_var_1 -> 
	happyIn19
		 (Type_specifierStruct_spec happy_var_1
	)}

happyReduce_25 = happyReduce 5# 14# happyReduction_25
happyReduction_25 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut6 happy_x_2 of { happy_var_2 -> 
	case happyOut22 happy_x_4 of { happy_var_4 -> 
	happyIn20
		 (Named happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_26 = happyReduce 4# 14# happyReduction_26
happyReduction_26 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut22 happy_x_3 of { happy_var_3 -> 
	happyIn20
		 (Unnamed happy_var_3
	) `HappyStk` happyRest}

happyReduce_27 = happySpecReduce_2  14# happyReduction_27
happyReduction_27 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_2 of { happy_var_2 -> 
	happyIn20
		 (Type happy_var_2
	)}

happyReduce_28 = happySpecReduce_3  15# happyReduction_28
happyReduction_28 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_2 of { happy_var_2 -> 
	happyIn21
		 (Structen happy_var_1 happy_var_2
	)}}

happyReduce_29 = happySpecReduce_1  16# happyReduction_29
happyReduction_29 happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	happyIn22
		 ((:[]) happy_var_1
	)}

happyReduce_30 = happySpecReduce_2  16# happyReduction_30
happyReduction_30 happy_x_2
	happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	case happyOut22 happy_x_2 of { happy_var_2 -> 
	happyIn22
		 ((:) happy_var_1 happy_var_2
	)}}

happyReduce_31 = happySpecReduce_1  17# happyReduction_31
happyReduction_31 happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	happyIn23
		 (StructOnlyDecl happy_var_1
	)}

happyReduce_32 = happySpecReduce_1  18# happyReduction_32
happyReduction_32 happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	happyIn24
		 ((:[]) happy_var_1
	)}

happyReduce_33 = happySpecReduce_3  18# happyReduction_33
happyReduction_33 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_3 of { happy_var_3 -> 
	happyIn24
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_34 = happySpecReduce_1  19# happyReduction_34
happyReduction_34 happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn25
		 (VarName happy_var_1
	)}

happyReduce_35 = happyReduce 4# 19# happyReduction_35
happyReduction_35 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut25 happy_x_1 of { happy_var_1 -> 
	case happyOut27 happy_x_3 of { happy_var_3 -> 
	happyIn25
		 (FunctionName happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_36 = happySpecReduce_2  20# happyReduction_36
happyReduction_36 happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_2 of { happy_var_2 -> 
	happyIn26
		 (SingleParam happy_var_1 happy_var_2
	)}}

happyReduce_37 = happySpecReduce_0  21# happyReduction_37
happyReduction_37  =  happyIn27
		 ([]
	)

happyReduce_38 = happySpecReduce_1  21# happyReduction_38
happyReduction_38 happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	happyIn27
		 ((:[]) happy_var_1
	)}

happyReduce_39 = happySpecReduce_3  21# happyReduction_39
happyReduction_39 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	case happyOut27 happy_x_3 of { happy_var_3 -> 
	happyIn27
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_40 = happySpecReduce_1  22# happyReduction_40
happyReduction_40 happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 (OnlyDecl happy_var_1
	)}

happyReduce_41 = happySpecReduce_3  22# happyReduction_41
happyReduction_41 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	case happyOut30 happy_x_3 of { happy_var_3 -> 
	happyIn28
		 (InitDecl happy_var_1 happy_var_3
	)}}

happyReduce_42 = happySpecReduce_1  23# happyReduction_42
happyReduction_42 happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn29
		 ((:[]) happy_var_1
	)}

happyReduce_43 = happySpecReduce_3  23# happyReduction_43
happyReduction_43 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut29 happy_x_3 of { happy_var_3 -> 
	happyIn29
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_44 = happySpecReduce_1  24# happyReduction_44
happyReduction_44 happy_x_1
	 =  case happyOut42 happy_x_1 of { happy_var_1 -> 
	happyIn30
		 (InitExpr happy_var_1
	)}

happyReduce_45 = happySpecReduce_3  24# happyReduction_45
happyReduction_45 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut31 happy_x_2 of { happy_var_2 -> 
	happyIn30
		 (InitList happy_var_2
	)}

happyReduce_46 = happySpecReduce_1  25# happyReduction_46
happyReduction_46 happy_x_1
	 =  case happyOut30 happy_x_1 of { happy_var_1 -> 
	happyIn31
		 ((:[]) happy_var_1
	)}

happyReduce_47 = happySpecReduce_3  25# happyReduction_47
happyReduction_47 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut30 happy_x_1 of { happy_var_1 -> 
	case happyOut31 happy_x_3 of { happy_var_3 -> 
	happyIn31
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_48 = happySpecReduce_3  26# happyReduction_48
happyReduction_48 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (ListS (reverse happy_var_2)
	)}

happyReduce_49 = happySpecReduce_1  26# happyReduction_49
happyReduction_49 happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (DecS happy_var_1
	)}

happyReduce_50 = happySpecReduce_1  26# happyReduction_50
happyReduction_50 happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (ExprS happy_var_1
	)}

happyReduce_51 = happySpecReduce_1  26# happyReduction_51
happyReduction_51 happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (IfS happy_var_1
	)}

happyReduce_52 = happySpecReduce_1  26# happyReduction_52
happyReduction_52 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (IterS happy_var_1
	)}

happyReduce_53 = happySpecReduce_1  26# happyReduction_53
happyReduction_53 happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (JumpS happy_var_1
	)}

happyReduce_54 = happySpecReduce_1  27# happyReduction_54
happyReduction_54 happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	happyIn33
		 ((:[]) happy_var_1
	)}

happyReduce_55 = happySpecReduce_2  27# happyReduction_55
happyReduction_55 happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	case happyOut33 happy_x_2 of { happy_var_2 -> 
	happyIn33
		 ((:) happy_var_1 happy_var_2
	)}}

happyReduce_56 = happySpecReduce_1  28# happyReduction_56
happyReduction_56 happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	happyIn34
		 (SStm happy_var_1
	)}

happyReduce_57 = happySpecReduce_1  28# happyReduction_57
happyReduction_57 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn34
		 (SDec happy_var_1
	)}

happyReduce_58 = happySpecReduce_0  29# happyReduction_58
happyReduction_58  =  happyIn35
		 ([]
	)

happyReduce_59 = happySpecReduce_2  29# happyReduction_59
happyReduction_59 happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	case happyOut34 happy_x_2 of { happy_var_2 -> 
	happyIn35
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_60 = happySpecReduce_1  30# happyReduction_60
happyReduction_60 happy_x_1
	 =  happyIn36
		 (Sempty
	)

happyReduce_61 = happySpecReduce_2  30# happyReduction_61
happyReduction_61 happy_x_2
	happy_x_1
	 =  case happyOut41 happy_x_1 of { happy_var_1 -> 
	happyIn36
		 (Sexpr happy_var_1
	)}

happyReduce_62 = happySpecReduce_1  31# happyReduction_62
happyReduction_62 happy_x_1
	 =  happyIn37
		 (Dempty
	)

happyReduce_63 = happySpecReduce_1  31# happyReduction_63
happyReduction_63 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn37
		 (Ddec happy_var_1
	)}

happyReduce_64 = happyReduce 5# 32# happyReduction_64
happyReduction_64 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut41 happy_x_3 of { happy_var_3 -> 
	case happyOut32 happy_x_5 of { happy_var_5 -> 
	happyIn38
		 (SIf happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_65 = happyReduce 7# 32# happyReduction_65
happyReduction_65 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut41 happy_x_3 of { happy_var_3 -> 
	case happyOut32 happy_x_5 of { happy_var_5 -> 
	case happyOut32 happy_x_7 of { happy_var_7 -> 
	happyIn38
		 (SIfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest}}}

happyReduce_66 = happyReduce 5# 33# happyReduction_66
happyReduction_66 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut41 happy_x_3 of { happy_var_3 -> 
	case happyOut32 happy_x_5 of { happy_var_5 -> 
	happyIn39
		 (SiterWhile happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_67 = happyReduce 7# 33# happyReduction_67
happyReduction_67 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut37 happy_x_3 of { happy_var_3 -> 
	case happyOut36 happy_x_4 of { happy_var_4 -> 
	case happyOut41 happy_x_5 of { happy_var_5 -> 
	case happyOut32 happy_x_7 of { happy_var_7 -> 
	happyIn39
		 (SiterFor happy_var_3 happy_var_4 happy_var_5 happy_var_7
	) `HappyStk` happyRest}}}}

happyReduce_68 = happySpecReduce_2  34# happyReduction_68
happyReduction_68 happy_x_2
	happy_x_1
	 =  happyIn40
		 (SjumpTwo
	)

happyReduce_69 = happySpecReduce_2  34# happyReduction_69
happyReduction_69 happy_x_2
	happy_x_1
	 =  happyIn40
		 (SjumpThree
	)

happyReduce_70 = happySpecReduce_2  34# happyReduction_70
happyReduction_70 happy_x_2
	happy_x_1
	 =  happyIn40
		 (SjumpFour
	)

happyReduce_71 = happySpecReduce_3  34# happyReduction_71
happyReduction_71 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut41 happy_x_2 of { happy_var_2 -> 
	happyIn40
		 (SjumpFive happy_var_2
	)}

happyReduce_72 = happySpecReduce_3  35# happyReduction_72
happyReduction_72 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut41 happy_x_1 of { happy_var_1 -> 
	case happyOut42 happy_x_3 of { happy_var_3 -> 
	happyIn41
		 (Ecomma happy_var_1 happy_var_3
	)}}

happyReduce_73 = happySpecReduce_1  35# happyReduction_73
happyReduction_73 happy_x_1
	 =  case happyOut55 happy_x_1 of { happy_var_1 -> 
	happyIn41
		 (happy_var_1
	)}

happyReduce_74 = happySpecReduce_3  36# happyReduction_74
happyReduction_74 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	case happyOut42 happy_x_3 of { happy_var_3 -> 
	happyIn42
		 (Eassign happy_var_1 happy_var_3
	)}}

happyReduce_75 = happySpecReduce_1  36# happyReduction_75
happyReduction_75 happy_x_1
	 =  case happyOut43 happy_x_1 of { happy_var_1 -> 
	happyIn42
		 (happy_var_1
	)}

happyReduce_76 = happyReduce 5# 37# happyReduction_76
happyReduction_76 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut44 happy_x_1 of { happy_var_1 -> 
	case happyOut41 happy_x_3 of { happy_var_3 -> 
	case happyOut43 happy_x_5 of { happy_var_5 -> 
	happyIn43
		 (Econdition happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_77 = happySpecReduce_1  37# happyReduction_77
happyReduction_77 happy_x_1
	 =  case happyOut44 happy_x_1 of { happy_var_1 -> 
	happyIn43
		 (happy_var_1
	)}

happyReduce_78 = happySpecReduce_3  38# happyReduction_78
happyReduction_78 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut44 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn44
		 (Elor happy_var_1 happy_var_3
	)}}

happyReduce_79 = happySpecReduce_1  38# happyReduction_79
happyReduction_79 happy_x_1
	 =  case happyOut45 happy_x_1 of { happy_var_1 -> 
	happyIn44
		 (happy_var_1
	)}

happyReduce_80 = happySpecReduce_3  39# happyReduction_80
happyReduction_80 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut45 happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_3 of { happy_var_3 -> 
	happyIn45
		 (Eland happy_var_1 happy_var_3
	)}}

happyReduce_81 = happySpecReduce_1  39# happyReduction_81
happyReduction_81 happy_x_1
	 =  case happyOut46 happy_x_1 of { happy_var_1 -> 
	happyIn45
		 (happy_var_1
	)}

happyReduce_82 = happySpecReduce_3  40# happyReduction_82
happyReduction_82 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut46 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn46
		 (Eeq happy_var_1 happy_var_3
	)}}

happyReduce_83 = happySpecReduce_3  40# happyReduction_83
happyReduction_83 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut46 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn46
		 (Eneq happy_var_1 happy_var_3
	)}}

happyReduce_84 = happySpecReduce_1  40# happyReduction_84
happyReduction_84 happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	happyIn46
		 (happy_var_1
	)}

happyReduce_85 = happySpecReduce_3  41# happyReduction_85
happyReduction_85 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut48 happy_x_3 of { happy_var_3 -> 
	happyIn47
		 (Elthen happy_var_1 happy_var_3
	)}}

happyReduce_86 = happySpecReduce_3  41# happyReduction_86
happyReduction_86 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut48 happy_x_3 of { happy_var_3 -> 
	happyIn47
		 (Egrthen happy_var_1 happy_var_3
	)}}

happyReduce_87 = happySpecReduce_3  41# happyReduction_87
happyReduction_87 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut48 happy_x_3 of { happy_var_3 -> 
	happyIn47
		 (Ele happy_var_1 happy_var_3
	)}}

happyReduce_88 = happySpecReduce_3  41# happyReduction_88
happyReduction_88 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut48 happy_x_3 of { happy_var_3 -> 
	happyIn47
		 (Ege happy_var_1 happy_var_3
	)}}

happyReduce_89 = happySpecReduce_1  41# happyReduction_89
happyReduction_89 happy_x_1
	 =  case happyOut48 happy_x_1 of { happy_var_1 -> 
	happyIn47
		 (happy_var_1
	)}

happyReduce_90 = happySpecReduce_3  42# happyReduction_90
happyReduction_90 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut48 happy_x_1 of { happy_var_1 -> 
	case happyOut49 happy_x_3 of { happy_var_3 -> 
	happyIn48
		 (Eplus happy_var_1 happy_var_3
	)}}

happyReduce_91 = happySpecReduce_3  42# happyReduction_91
happyReduction_91 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut48 happy_x_1 of { happy_var_1 -> 
	case happyOut49 happy_x_3 of { happy_var_3 -> 
	happyIn48
		 (Eminus happy_var_1 happy_var_3
	)}}

happyReduce_92 = happySpecReduce_1  42# happyReduction_92
happyReduction_92 happy_x_1
	 =  case happyOut49 happy_x_1 of { happy_var_1 -> 
	happyIn48
		 (happy_var_1
	)}

happyReduce_93 = happySpecReduce_3  43# happyReduction_93
happyReduction_93 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut49 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 (Etimes happy_var_1 happy_var_3
	)}}

happyReduce_94 = happySpecReduce_3  43# happyReduction_94
happyReduction_94 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut49 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 (Ediv happy_var_1 happy_var_3
	)}}

happyReduce_95 = happySpecReduce_3  43# happyReduction_95
happyReduction_95 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut49 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 (Emod happy_var_1 happy_var_3
	)}}

happyReduce_96 = happySpecReduce_1  43# happyReduction_96
happyReduction_96 happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	happyIn49
		 (happy_var_1
	)}

happyReduce_97 = happyReduce 4# 44# happyReduction_97
happyReduction_97 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut19 happy_x_2 of { happy_var_2 -> 
	case happyOut50 happy_x_4 of { happy_var_4 -> 
	happyIn50
		 (Etypeconv happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_98 = happySpecReduce_1  44# happyReduction_98
happyReduction_98 happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	happyIn50
		 (happy_var_1
	)}

happyReduce_99 = happySpecReduce_2  45# happyReduction_99
happyReduction_99 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_2 of { happy_var_2 -> 
	happyIn51
		 (Epreinc happy_var_2
	)}

happyReduce_100 = happySpecReduce_2  45# happyReduction_100
happyReduction_100 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_2 of { happy_var_2 -> 
	happyIn51
		 (Epredec happy_var_2
	)}

happyReduce_101 = happySpecReduce_2  45# happyReduction_101
happyReduction_101 happy_x_2
	happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_2 of { happy_var_2 -> 
	happyIn51
		 (Epreop happy_var_1 happy_var_2
	)}}

happyReduce_102 = happySpecReduce_1  45# happyReduction_102
happyReduction_102 happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	happyIn51
		 (happy_var_1
	)}

happyReduce_103 = happyReduce 4# 46# happyReduction_103
happyReduction_103 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut6 happy_x_1 of { happy_var_1 -> 
	case happyOut56 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 (Efunk happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_104 = happyReduce 6# 46# happyReduction_104
happyReduction_104 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut6 happy_x_1 of { happy_var_1 -> 
	case happyOut6 happy_x_3 of { happy_var_3 -> 
	case happyOut56 happy_x_5 of { happy_var_5 -> 
	happyIn52
		 (EfunkNS happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_105 = happySpecReduce_3  46# happyReduction_105
happyReduction_105 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	case happyOut6 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 (Eselect happy_var_1 happy_var_3
	)}}

happyReduce_106 = happySpecReduce_2  46# happyReduction_106
happyReduction_106 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn52
		 (Epostinc happy_var_1
	)}

happyReduce_107 = happySpecReduce_2  46# happyReduction_107
happyReduction_107 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn52
		 (Epostdec happy_var_1
	)}

happyReduce_108 = happySpecReduce_1  46# happyReduction_108
happyReduction_108 happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	happyIn52
		 (happy_var_1
	)}

happyReduce_109 = happySpecReduce_1  47# happyReduction_109
happyReduction_109 happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn53
		 (Evar happy_var_1
	)}

happyReduce_110 = happySpecReduce_1  47# happyReduction_110
happyReduction_110 happy_x_1
	 =  case happyOut54 happy_x_1 of { happy_var_1 -> 
	happyIn53
		 (Econst happy_var_1
	)}

happyReduce_111 = happySpecReduce_3  47# happyReduction_111
happyReduction_111 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut41 happy_x_2 of { happy_var_2 -> 
	happyIn53
		 (happy_var_2
	)}

happyReduce_112 = happySpecReduce_1  48# happyReduction_112
happyReduction_112 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn54
		 (Efloat happy_var_1
	)}

happyReduce_113 = happySpecReduce_1  48# happyReduction_113
happyReduction_113 happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	happyIn54
		 (Ecfloat happy_var_1
	)}

happyReduce_114 = happySpecReduce_1  48# happyReduction_114
happyReduction_114 happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	happyIn54
		 (Ebool happy_var_1
	)}

happyReduce_115 = happySpecReduce_1  48# happyReduction_115
happyReduction_115 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn54
		 (Eint happy_var_1
	)}

happyReduce_116 = happySpecReduce_1  49# happyReduction_116
happyReduction_116 happy_x_1
	 =  case happyOut42 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 (happy_var_1
	)}

happyReduce_117 = happySpecReduce_0  50# happyReduction_117
happyReduction_117  =  happyIn56
		 ([]
	)

happyReduce_118 = happySpecReduce_1  50# happyReduction_118
happyReduction_118 happy_x_1
	 =  case happyOut42 happy_x_1 of { happy_var_1 -> 
	happyIn56
		 ((:[]) happy_var_1
	)}

happyReduce_119 = happySpecReduce_3  50# happyReduction_119
happyReduction_119 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut42 happy_x_1 of { happy_var_1 -> 
	case happyOut56 happy_x_3 of { happy_var_3 -> 
	happyIn56
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_120 = happySpecReduce_1  51# happyReduction_120
happyReduction_120 happy_x_1
	 =  happyIn57
		 (Negative
	)

happyReduce_121 = happySpecReduce_1  51# happyReduction_121
happyReduction_121 happy_x_1
	 =  happyIn57
		 (Logicalneg
	)

happyNewToken action sts stk [] =
	happyDoAction 46# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 1#;
	PT _ (TS _ 2) -> cont 2#;
	PT _ (TS _ 3) -> cont 3#;
	PT _ (TS _ 4) -> cont 4#;
	PT _ (TS _ 5) -> cont 5#;
	PT _ (TS _ 6) -> cont 6#;
	PT _ (TS _ 7) -> cont 7#;
	PT _ (TS _ 8) -> cont 8#;
	PT _ (TS _ 9) -> cont 9#;
	PT _ (TS _ 10) -> cont 10#;
	PT _ (TS _ 11) -> cont 11#;
	PT _ (TS _ 12) -> cont 12#;
	PT _ (TS _ 13) -> cont 13#;
	PT _ (TS _ 14) -> cont 14#;
	PT _ (TS _ 15) -> cont 15#;
	PT _ (TS _ 16) -> cont 16#;
	PT _ (TS _ 17) -> cont 17#;
	PT _ (TS _ 18) -> cont 18#;
	PT _ (TS _ 19) -> cont 19#;
	PT _ (TS _ 20) -> cont 20#;
	PT _ (TS _ 21) -> cont 21#;
	PT _ (TS _ 22) -> cont 22#;
	PT _ (TS _ 23) -> cont 23#;
	PT _ (TS _ 24) -> cont 24#;
	PT _ (TS _ 25) -> cont 25#;
	PT _ (TS _ 26) -> cont 26#;
	PT _ (TS _ 27) -> cont 27#;
	PT _ (TS _ 28) -> cont 28#;
	PT _ (TS _ 29) -> cont 29#;
	PT _ (TS _ 30) -> cont 30#;
	PT _ (TS _ 31) -> cont 31#;
	PT _ (TS _ 32) -> cont 32#;
	PT _ (TS _ 33) -> cont 33#;
	PT _ (TS _ 34) -> cont 34#;
	PT _ (TS _ 35) -> cont 35#;
	PT _ (TS _ 36) -> cont 36#;
	PT _ (TS _ 37) -> cont 37#;
	PT _ (TS _ 38) -> cont 38#;
	PT _ (TS _ 39) -> cont 39#;
	PT _ (TV happy_dollar_dollar) -> cont 40#;
	PT _ (TD happy_dollar_dollar) -> cont 41#;
	PT _ (TI happy_dollar_dollar) -> cont 42#;
	PT _ (T_CFloat happy_dollar_dollar) -> cont 43#;
	PT _ (T_Boolean happy_dollar_dollar) -> cont 44#;
	_ -> cont 45#;
	_ -> happyError' (tk:tks)
	}

happyError_ tk tks = happyError' (tk:tks)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => [(Token)] -> Err a
happyError' = happyError

pProgram tks = happySomeParser where
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut11 x))

pStm tks = happySomeParser where
  happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (happyOut32 x))

pExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut41 x))

happySeq = happyDontSeq


returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 28 "templates/GenericTemplate.hs" #-}


data Happy_IntList = HappyCons Int# Happy_IntList





{-# LINE 49 "templates/GenericTemplate.hs" #-}

{-# LINE 59 "templates/GenericTemplate.hs" #-}

{-# LINE 68 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is 0#, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	(happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
	= {- nothing -}


	  case action of
		0#		  -> {- nothing -}
				     happyFail i tk st
		-1# 	  -> {- nothing -}
				     happyAccept i tk st
		n | (n <# (0# :: Int#)) -> {- nothing -}

				     (happyReduceArr ! rule) i tk st
				     where rule = (I# ((negateInt# ((n +# (1# :: Int#))))))
		n		  -> {- nothing -}


				     happyShift new_state i tk st
				     where new_state = (n -# (1# :: Int#))
   where off    = indexShortOffAddr happyActOffsets st
	 off_i  = (off +# i)
	 check  = if (off_i >=# (0# :: Int#))
			then (indexShortOffAddr happyCheck off_i ==#  i)
			else False
 	 action | check     = indexShortOffAddr happyTable off_i
		| otherwise = indexShortOffAddr happyDefActions st

{-# LINE 127 "templates/GenericTemplate.hs" #-}


indexShortOffAddr (HappyA# arr) off =
#if __GLASGOW_HASKELL__ > 500
	narrow16Int# i
#elif __GLASGOW_HASKELL__ == 500
	intToInt16# i
#else
	(i `iShiftL#` 16#) `iShiftRA#` 16#
#endif
  where
#if __GLASGOW_HASKELL__ >= 503
	i = word2Int# ((high `uncheckedShiftL#` 8#) `or#` low)
#else
	i = word2Int# ((high `shiftL#` 8#) `or#` low)
#endif
	high = int2Word# (ord# (indexCharOffAddr# arr (off' +# 1#)))
	low  = int2Word# (ord# (indexCharOffAddr# arr off'))
	off' = off *# 2#





data HappyAddr = HappyA# Addr#




-----------------------------------------------------------------------------
-- HappyState data type (not arrays)

{-# LINE 170 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case unsafeCoerce# x of { (I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k -# (1# :: Int#)) sts of
	 sts1@((HappyCons (st1@(action)) (_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where sts1@((HappyCons (st1@(action)) (_))) = happyDrop k (HappyCons (st) (sts))
             drop_stk = happyDropStk k stk

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
       happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))
       where sts1@((HappyCons (st1@(action)) (_))) = happyDrop k (HappyCons (st) (sts))
             drop_stk = happyDropStk k stk

             off    = indexShortOffAddr happyGotoOffsets st1
             off_i  = (off +# nt)
             new_state = indexShortOffAddr happyTable off_i




happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n -# (1# :: Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n -# (1#::Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off    = indexShortOffAddr happyGotoOffsets st
	 off_i  = (off +# nt)
 	 new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail  0# tk old_st _ stk =
--	trace "failing" $ 
    	happyError_ tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  0# tk old_st (HappyCons ((action)) (sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	happyDoAction 0# tk action sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (action) sts stk =
--      trace "entering error recovery" $
	happyDoAction 0# tk action sts ( (unsafeCoerce# (I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
