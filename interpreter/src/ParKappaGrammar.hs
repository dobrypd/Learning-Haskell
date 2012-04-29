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
happyIn36 :: (Expression_stm) -> (HappyAbsSyn )
happyIn36 x = unsafeCoerce# x
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn ) -> (Expression_stm)
happyOut36 x = unsafeCoerce# x
{-# INLINE happyOut36 #-}
happyIn37 :: (If_stm) -> (HappyAbsSyn )
happyIn37 x = unsafeCoerce# x
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn ) -> (If_stm)
happyOut37 x = unsafeCoerce# x
{-# INLINE happyOut37 #-}
happyIn38 :: (Iter_stm) -> (HappyAbsSyn )
happyIn38 x = unsafeCoerce# x
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn ) -> (Iter_stm)
happyOut38 x = unsafeCoerce# x
{-# INLINE happyOut38 #-}
happyIn39 :: (Jump_stm) -> (HappyAbsSyn )
happyIn39 x = unsafeCoerce# x
{-# INLINE happyIn39 #-}
happyOut39 :: (HappyAbsSyn ) -> (Jump_stm)
happyOut39 x = unsafeCoerce# x
{-# INLINE happyOut39 #-}
happyIn40 :: (Exp) -> (HappyAbsSyn )
happyIn40 x = unsafeCoerce# x
{-# INLINE happyIn40 #-}
happyOut40 :: (HappyAbsSyn ) -> (Exp)
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
happyIn54 :: (Exp) -> (HappyAbsSyn )
happyIn54 x = unsafeCoerce# x
{-# INLINE happyIn54 #-}
happyOut54 :: (HappyAbsSyn ) -> (Exp)
happyOut54 x = unsafeCoerce# x
{-# INLINE happyOut54 #-}
happyIn55 :: (Exp) -> (HappyAbsSyn )
happyIn55 x = unsafeCoerce# x
{-# INLINE happyIn55 #-}
happyOut55 :: (HappyAbsSyn ) -> (Exp)
happyOut55 x = unsafeCoerce# x
{-# INLINE happyOut55 #-}
happyIn56 :: (Exp) -> (HappyAbsSyn )
happyIn56 x = unsafeCoerce# x
{-# INLINE happyIn56 #-}
happyOut56 :: (HappyAbsSyn ) -> (Exp)
happyOut56 x = unsafeCoerce# x
{-# INLINE happyOut56 #-}
happyIn57 :: (Constant) -> (HappyAbsSyn )
happyIn57 x = unsafeCoerce# x
{-# INLINE happyIn57 #-}
happyOut57 :: (HappyAbsSyn ) -> (Constant)
happyOut57 x = unsafeCoerce# x
{-# INLINE happyOut57 #-}
happyIn58 :: (Constant_expression) -> (HappyAbsSyn )
happyIn58 x = unsafeCoerce# x
{-# INLINE happyIn58 #-}
happyOut58 :: (HappyAbsSyn ) -> (Constant_expression)
happyOut58 x = unsafeCoerce# x
{-# INLINE happyOut58 #-}
happyIn59 :: (Exp) -> (HappyAbsSyn )
happyIn59 x = unsafeCoerce# x
{-# INLINE happyIn59 #-}
happyOut59 :: (HappyAbsSyn ) -> (Exp)
happyOut59 x = unsafeCoerce# x
{-# INLINE happyOut59 #-}
happyIn60 :: ([Exp]) -> (HappyAbsSyn )
happyIn60 x = unsafeCoerce# x
{-# INLINE happyIn60 #-}
happyOut60 :: (HappyAbsSyn ) -> ([Exp])
happyOut60 x = unsafeCoerce# x
{-# INLINE happyOut60 #-}
happyIn61 :: (Unary_operator) -> (HappyAbsSyn )
happyIn61 x = unsafeCoerce# x
{-# INLINE happyIn61 #-}
happyOut61 :: (HappyAbsSyn ) -> (Unary_operator)
happyOut61 x = unsafeCoerce# x
{-# INLINE happyOut61 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x64\x02\xf3\x05\x78\x06\x92\x01\x00\x00\x9e\x01\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x04\x01\xb9\x01\x89\x01\x96\x01\xa3\x01\x05\x00\xf8\x01\xa1\x01\x63\x01\x54\x01\x00\x00\x00\x00\x98\x01\x00\x00\x00\x00\x00\x00\x78\x06\x00\x00\x24\x06\x78\x01\x00\x00\x78\x01\x00\x00\x00\x00\x00\x00\x00\x00\x3a\x01\x00\x00\x00\x00\x00\x00\x00\x00\x20\x01\x00\x00\x8b\x01\x75\x01\x5e\x01\x50\x01\x6e\x06\x30\x01\x00\x00\x25\x01\x00\x00\x64\x02\x00\x00\x00\x00\x00\x00\x42\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe8\x00\x12\x02\x03\x01\xb1\x02\xee\x00\x00\x00\x47\x01\xf2\x00\xec\x00\x00\x00\x00\x00\xc2\x05\x78\x06\xd4\x00\x00\x00\x78\x06\x3d\x06\x00\x00\x00\x00\x78\x06\x00\x00\x00\x00\x00\x00\xf5\x00\x33\x02\x28\x02\x00\x00\xc7\x00\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x78\x06\x00\x00\x00\x00\xc7\x00\x78\x06\x00\x00\xed\x00\xdd\x00\xeb\x00\xe2\x00\x24\x02\xb3\x00\xaa\x00\xc1\x00\x05\x00\xf8\x01\xf8\x01\xa1\x01\xa1\x01\xa1\x01\xa1\x01\x63\x01\x63\x01\x54\x01\x54\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x78\x06\x00\x00\x3d\x06\xe3\x01\x00\x00\xb5\x01\x00\x00\x42\x00\x00\x00\x00\x00\x00\x00\x00\x00\x97\x00\xb1\x02\x2e\x06\x00\x00\x00\x00\x97\x00\xb1\x02\x90\x00\xb1\x02\x8f\x00\x00\x00\x00\x00\xa4\x00\x9c\x00\x03\x00\x63\x02\x91\x05\x00\x00\x00\x00\x2e\x06\x78\x00\x82\x00\x87\x00\x1a\x01\x00\x00\xf3\x05\xf3\x05\x78\x06\x00\x00\x78\x06\x00\x00\x78\x06\x78\x06\x85\x00\x00\x00\x00\x00\x23\x01\x64\x00\x00\x00\x00\x00\xb1\x02\x7c\x00\x6b\x00\x57\x00\x00\x00\x00\x00\x40\x00\x00\x00\x78\x06\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0e\x00\x00\x00\x2e\x06\x00\x00\xf3\x05\xf3\x05\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x18\x03\x19\x01\xdf\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5e\x05\x00\x00\x51\x01\x56\x00\x00\x00\x55\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc9\x02\x00\x00\x2f\x00\x00\x00\x00\x00\x2b\x03\x00\x00\x00\x00\x00\x00\x5b\x01\x00\x00\x00\x00\x00\x00\x00\x00\x4b\x00\x4a\x00\x00\x00\x54\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x91\x02\x00\x00\x00\x00\x7b\x02\x9f\x01\x00\x00\x00\x00\x02\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x15\x00\x55\x05\x1d\x05\x14\x05\x02\x05\xf8\x04\xc0\x04\xb5\x04\xaa\x04\x9e\x04\x66\x04\x5a\x04\xf6\x00\xbe\x00\x86\x00\x4e\x00\x16\x00\x4e\x04\x43\x02\xb6\x01\x7d\x03\x00\x00\x00\x00\x10\x00\xca\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0b\x05\x00\x00\x67\x01\x00\x00\x00\x00\x00\x00\x00\x00\x4f\x01\x00\x00\x00\x00\x00\x00\x00\x00\x1e\x01\x9c\x01\x64\x03\xeb\xff\xfa\xff\x25\x02\x3b\x02\x00\x00\xe9\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x01\x00\x00\x00\x00\x00\x29\x02\xa7\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe1\x00\xa9\x00\xf1\x01\x00\x00\x16\x04\x00\x00\x2c\x03\x17\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4c\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x00\x00\xb5\x03\x00\x00\x9b\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd7\x01\x00\x00\x71\x00\x39\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\x00\x00\x00\x00\x00\x00\xfc\xff\x8a\xff\x87\xff\x84\xff\x86\xff\x85\xff\x00\x00\x82\xff\xb5\xff\xb3\xff\xb1\xff\xaf\xff\xad\xff\xab\xff\xa9\xff\xa6\xff\xa1\xff\x9e\xff\x9b\xff\x97\xff\x95\xff\x91\xff\x8b\xff\x89\xff\xb7\xff\x00\x00\x7d\xff\x00\x00\x00\x00\x7e\xff\x00\x00\xfb\xff\xfa\xff\xf9\xff\xf8\xff\x00\x00\xcc\xff\xcb\xff\xca\xff\xc9\xff\x00\x00\xc2\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc4\xff\x00\x00\xf7\xff\xf6\xff\xf4\xff\xf3\xff\xf2\xff\x00\x00\xe6\xff\xe7\xff\xe8\xff\xe9\xff\x00\x00\x00\x00\xe3\xff\x00\x00\x00\x00\xdb\xff\xd5\xff\xd3\xff\x00\x00\xf0\xff\xf5\xff\x00\x00\x00\x00\x00\x00\xba\xff\x00\x00\x00\x00\xbc\xff\xbb\xff\x00\x00\xc1\xff\x93\xff\x94\xff\x00\x00\x00\x00\x8a\xff\x92\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x81\xff\x8d\xff\x8c\xff\x00\x00\x00\x00\xb6\xff\x00\x00\x80\xff\x00\x00\xb2\xff\x00\x00\xb0\xff\xae\xff\xac\xff\xaa\xff\xa8\xff\xa7\xff\xa2\xff\xa4\xff\xa3\xff\xa5\xff\x9f\xff\xa0\xff\x9c\xff\x9d\xff\x99\xff\x9a\xff\x98\xff\x8e\xff\x88\xff\x00\x00\xb8\xff\x00\x00\x00\x00\xb9\xff\x00\x00\xc5\xff\x00\x00\xc6\xff\xc3\xff\xcd\xff\xef\xff\x00\x00\xd8\xff\x00\x00\xc4\xff\xeb\xff\x00\x00\xe1\xff\x00\x00\x00\x00\x00\x00\xe4\xff\xe0\xff\xdd\xff\x00\x00\xdf\xff\x00\x00\x00\x00\xd4\xff\xd1\xff\x00\x00\x00\x00\xd7\xff\x00\x00\xd5\xff\xd2\xff\x00\x00\x00\x00\x00\x00\x96\xff\x00\x00\x90\xff\x81\xff\x81\xff\x00\x00\x7f\xff\xb4\xff\x00\x00\xc0\xff\xbe\xff\xda\xff\xd8\xff\xd9\xff\xcf\xff\x00\x00\xf1\xff\xea\xff\x00\x00\xec\xff\x00\x00\xe2\xff\x00\x00\xe5\xff\xdc\xff\x83\xff\xde\xff\x00\x00\xd0\xff\x00\x00\xd6\xff\x00\x00\x00\x00\x8f\xff\xbd\xff\xbf\xff\xce\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0c\x00\x02\x00\x1d\x00\x06\x00\x09\x00\x00\x00\x08\x00\x0b\x00\x0d\x00\x0e\x00\x00\x00\x0d\x00\x0e\x00\x10\x00\x06\x00\x00\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1a\x00\x17\x00\x1c\x00\x13\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x33\x00\x35\x00\x29\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x00\x00\x00\x00\x1d\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1a\x00\x12\x00\x00\x00\x00\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x2d\x00\x35\x00\x2d\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0b\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x06\x00\x2c\x00\x20\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1a\x00\x07\x00\x0b\x00\x07\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x2d\x00\x35\x00\x00\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x12\x00\x0b\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x13\x00\x2c\x00\x2c\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1a\x00\x2d\x00\x04\x00\x1c\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x2a\x00\x35\x00\x0b\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x12\x00\x05\x00\x0b\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x07\x00\x06\x00\x2d\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1a\x00\x07\x00\x0b\x00\x12\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x2d\x00\x35\x00\x29\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x1b\x00\x06\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x07\x00\x0b\x00\x29\x00\x37\x00\x0b\x00\x2b\x00\x16\x00\x13\x00\x12\x00\x1a\x00\x16\x00\x17\x00\x06\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x06\x00\x35\x00\x00\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x06\x00\x03\x00\x33\x00\x0d\x00\x0e\x00\x00\x00\x08\x00\x16\x00\x0d\x00\x0e\x00\x14\x00\x15\x00\x13\x00\x0f\x00\x06\x00\x16\x00\x17\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x09\x00\x33\x00\x13\x00\x0c\x00\x29\x00\x16\x00\x17\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x1e\x00\x35\x00\x12\x00\x37\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x00\x00\x35\x00\x12\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x06\x00\x2d\x00\x0e\x00\x04\x00\x0a\x00\x0d\x00\x0e\x00\x0d\x00\x11\x00\x12\x00\x13\x00\x11\x00\x14\x00\x15\x00\x1c\x00\x2a\x00\x16\x00\x14\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1a\x00\x07\x00\x1e\x00\x05\x00\x2d\x00\x0b\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\x35\x00\xff\xff\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x07\x00\xff\xff\xff\xff\x37\x00\x0b\x00\x18\x00\x19\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x13\x00\xff\xff\x15\x00\x37\x00\xff\xff\x18\x00\x19\x00\xff\xff\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x00\x00\x35\x00\xff\xff\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x06\x00\x0b\x00\xff\xff\xff\xff\x0a\x00\xff\xff\x10\x00\x0d\x00\x11\x00\x12\x00\x13\x00\x11\x00\x07\x00\x29\x00\xff\xff\xff\xff\x0b\x00\x2d\x00\xff\xff\x18\x00\x19\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\x35\x00\xff\xff\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1d\x00\x1d\x00\xff\xff\xff\xff\x21\x00\x21\x00\xff\xff\x24\x00\x24\x00\x25\x00\x27\x00\x27\x00\xff\xff\xff\xff\xff\xff\x2c\x00\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\x35\x00\xff\xff\x37\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\x35\x00\xff\xff\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1d\x00\xff\xff\xff\xff\xff\xff\x21\x00\xff\xff\xff\xff\x24\x00\xff\xff\xff\xff\x27\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\x35\x00\xff\xff\x37\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\x35\x00\xff\xff\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\xff\xff\x0b\x00\xff\xff\x0d\x00\x0e\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x06\x00\x07\x00\x08\x00\x09\x00\xff\xff\x0b\x00\xff\xff\x0d\x00\x0e\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\x36\x00\x37\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\x36\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x18\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\xff\xff\xff\xff\xff\xff\xff\xff\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\x36\x00\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x34\x00\xff\xff\xff\xff\x37\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\xff\xff\xff\xff\xff\xff\x37\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x01\x00\xff\xff\xff\xff\x37\x00\xff\xff\x06\x00\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\x0c\x00\x0d\x00\xff\xff\xff\xff\xff\xff\xff\xff\x12\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x1d\x00\x1e\x00\x1f\x00\xff\xff\x21\x00\x22\x00\x23\x00\x24\x00\xff\xff\x26\x00\x27\x00\x28\x00\x29\x00\xff\xff\xff\xff\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x01\x00\xff\xff\xff\xff\xff\xff\xff\xff\x06\x00\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\x0c\x00\x0d\x00\xff\xff\xff\xff\xff\xff\xff\xff\x12\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x1d\x00\x1e\x00\x1f\x00\xff\xff\x21\x00\x22\x00\x23\x00\x24\x00\xff\xff\x26\x00\x27\x00\x28\x00\x29\x00\xff\xff\xff\xff\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x01\x00\xff\xff\xff\xff\xff\xff\xff\xff\x06\x00\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\x0c\x00\x0d\x00\xff\xff\xff\xff\xff\xff\xff\xff\x12\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x1e\x00\x1f\x00\xff\xff\xff\xff\x22\x00\x23\x00\xff\xff\xff\xff\x26\x00\xff\xff\x28\x00\x29\x00\xff\xff\xff\xff\xff\xff\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x01\x00\xff\xff\xff\xff\xff\xff\xff\xff\x06\x00\xff\xff\xff\xff\xff\xff\x0a\x00\x01\x00\x0c\x00\x0d\x00\xff\xff\xff\xff\x06\x00\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\x0c\x00\x0d\x00\xff\xff\xff\xff\x01\x00\xff\xff\xff\xff\x1d\x00\xff\xff\x06\x00\xff\xff\x21\x00\xff\xff\x0a\x00\x24\x00\x0c\x00\x0d\x00\x27\x00\xff\xff\xff\xff\xff\xff\x12\x00\xff\xff\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\xff\xff\x29\x00\xff\xff\xff\xff\xff\xff\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x01\x00\xff\xff\xff\xff\xff\xff\xff\xff\x06\x00\xff\xff\xff\xff\xff\xff\x0a\x00\x01\x00\x0c\x00\x0d\x00\xff\xff\xff\xff\x06\x00\xff\xff\x12\x00\xff\xff\x0a\x00\xff\xff\x0c\x00\x0d\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\xa8\x00\x68\x00\xa9\x00\x9b\x00\x93\x00\x45\x00\xc6\x00\x54\x00\x94\x00\x3c\x00\x75\x00\xc7\x00\x3c\x00\xca\x00\x9b\x00\x8b\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x95\x00\x69\x00\x96\x00\xd0\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\xff\xff\x1c\x00\x9d\x00\x1d\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x7b\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x42\x00\x44\x00\x4b\x00\x1d\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\xd7\x00\x4a\x00\x55\x00\x56\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x05\x00\x1c\x00\x05\x00\x1d\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\xd3\x00\x7c\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x9b\x00\xd2\x00\xd5\x00\x1d\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\xd8\x00\xd7\x00\xc2\x00\xc1\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x05\x00\x1c\x00\x45\x00\x1d\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\xcb\x00\xcc\x00\x7d\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\xc2\x00\xcd\x00\xa4\x00\x1d\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\xbe\x00\x05\x00\x6a\x00\x6b\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x6c\x00\x1c\x00\x54\x00\x1d\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x92\x00\x6d\x00\xb9\x00\x7e\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\xb8\x00\xba\x00\x05\x00\x1d\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\xbf\x00\x8e\x00\x9a\x00\x99\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x05\x00\x1c\x00\x9e\x00\x1d\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x45\x00\x6e\x00\x9b\x00\x7f\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\xd6\x00\x54\x00\xa2\x00\x1d\x00\x54\x00\x6f\x00\x9c\x00\xb0\x00\x55\x00\x27\x00\x47\x00\xb1\x00\x4d\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x9b\x00\x1c\x00\x45\x00\x1d\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x50\x00\x5d\x00\xff\xff\xad\x00\x3c\x00\x45\x00\x5e\x00\x9c\x00\x57\x00\x3c\x00\xae\x00\xd3\x00\xb0\x00\x5f\x00\x51\x00\x47\x00\x48\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x60\x00\xff\xff\x46\x00\x61\x00\x9d\x00\x47\x00\x48\x00\x58\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\xb4\x00\x1c\x00\x52\x00\x1d\x00\x2c\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x45\x00\x1c\x00\x53\x00\x1d\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x70\x00\x05\x00\x5c\x00\x6a\x00\x71\x00\xad\x00\x3c\x00\x72\x00\xa5\x00\xcd\x00\xa7\x00\x73\x00\xae\x00\xaf\x00\x6b\x00\x6c\x00\x74\x00\x62\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x63\x00\xb3\x00\x8f\x00\x6d\x00\x05\x00\x54\x00\x2c\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x1c\x00\x00\x00\x1d\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x78\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\xb4\x00\x00\x00\x00\x00\x1d\x00\x54\x00\xc3\x00\xd9\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x9e\x00\x3c\x00\x9f\x00\xa2\x00\xab\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x64\x00\x00\x00\x65\x00\x1d\x00\x00\x00\x66\x00\x67\x00\x00\x00\xbd\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x45\x00\x1c\x00\x00\x00\x1d\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x70\x00\x54\x00\x00\x00\x00\x00\x71\x00\x00\x00\xb7\x00\x72\x00\xa5\x00\xa6\x00\xa7\x00\x73\x00\x8d\x00\x44\x00\x00\x00\x00\x00\x54\x00\x05\x00\x00\x00\xc3\x00\xc4\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x9e\x00\x3c\x00\x9f\x00\xa4\x00\xab\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x9e\x00\x3c\x00\x9f\x00\xa0\x00\x79\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x1c\x00\x00\x00\x1d\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x3e\x00\x3e\x00\x00\x00\x00\x00\x3f\x00\x3f\x00\x00\x00\x40\x00\x40\x00\x41\x00\x42\x00\x42\x00\x00\x00\x00\x00\x00\x00\xc9\x00\x00\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x90\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x1c\x00\x00\x00\x1d\x00\x92\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x1c\x00\x00\x00\x1d\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x3e\x00\x00\x00\x00\x00\x00\x00\x3f\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x42\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4d\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x1c\x00\x00\x00\x1d\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x1c\x00\x00\x00\x1d\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x35\x00\x36\x00\x37\x00\x38\x00\x39\x00\x00\x00\x3a\x00\x00\x00\x3b\x00\x3c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x4a\x00\x37\x00\x38\x00\x39\x00\x00\x00\x3a\x00\x00\x00\x3b\x00\x3c\x00\x76\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\xba\x00\x1d\x00\x76\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\xbb\x00\x1d\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xaa\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xab\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x76\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x77\x00\x1d\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xce\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\xcf\x00\x00\x00\x00\x00\x1d\x00\x74\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8e\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\xbc\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7a\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x80\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x81\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x82\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x83\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x84\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x85\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x86\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x87\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\xb5\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x88\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x89\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8a\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x5a\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1f\x00\x00\x00\x00\x00\x1d\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x21\x00\x00\x00\x22\x00\x23\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x3e\x00\x2f\x00\x30\x00\x00\x00\x3f\x00\x31\x00\x32\x00\x40\x00\x00\x00\x33\x00\x42\x00\x34\x00\x35\x00\x00\x00\x00\x00\xc6\x00\x05\x00\x24\x00\x25\x00\x26\x00\x27\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x21\x00\x00\x00\x22\x00\x23\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x3e\x00\x2f\x00\x30\x00\x00\x00\x3f\x00\x31\x00\x32\x00\x40\x00\x00\x00\x33\x00\x42\x00\x34\x00\x35\x00\x00\x00\x00\x00\x98\x00\x05\x00\x24\x00\x25\x00\x26\x00\x27\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x21\x00\x00\x00\x22\x00\x23\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2f\x00\x30\x00\x00\x00\x00\x00\x31\x00\x32\x00\x00\x00\x00\x00\x33\x00\x00\x00\x34\x00\x35\x00\x00\x00\x00\x00\x00\x00\x05\x00\x24\x00\x25\x00\x26\x00\x27\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x21\x00\x1f\x00\x22\x00\x23\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x21\x00\x00\x00\x22\x00\x23\x00\x00\x00\x00\x00\x1f\x00\x00\x00\x00\x00\x3e\x00\x00\x00\x20\x00\x00\x00\x3f\x00\x00\x00\x21\x00\x40\x00\x22\x00\x23\x00\x42\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x00\x00\x05\x00\x24\x00\x25\x00\x26\x00\x27\x00\x00\x00\xad\x00\x00\x00\x00\x00\x00\x00\x05\x00\x24\x00\x25\x00\x26\x00\x27\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x24\x00\x25\x00\x26\x00\x27\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x21\x00\x1f\x00\x22\x00\x23\x00\x00\x00\x00\x00\x20\x00\x00\x00\x4f\x00\x00\x00\x21\x00\x00\x00\x22\x00\x23\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x24\x00\x25\x00\x26\x00\x27\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x24\x00\x25\x00\x26\x00\x27\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = array (3, 130) [
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
	(121 , happyReduce_121),
	(122 , happyReduce_122),
	(123 , happyReduce_123),
	(124 , happyReduce_124),
	(125 , happyReduce_125),
	(126 , happyReduce_126),
	(127 , happyReduce_127),
	(128 , happyReduce_128),
	(129 , happyReduce_129),
	(130 , happyReduce_130)
	]

happy_n_terms = 52 :: Int
happy_n_nonterms = 56 :: Int

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

happyReduce_15 = happySpecReduce_2  9# happyReduction_15
happyReduction_15 happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	happyIn15
		 (JustType happy_var_1
	)}

happyReduce_16 = happySpecReduce_3  9# happyReduction_16
happyReduction_16 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOut29 happy_x_2 of { happy_var_2 -> 
	happyIn15
		 (Declarators happy_var_1 happy_var_2
	)}}

happyReduce_17 = happySpecReduce_1  10# happyReduction_17
happyReduction_17 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn16
		 ((:[]) happy_var_1
	)}

happyReduce_18 = happySpecReduce_2  10# happyReduction_18
happyReduction_18 happy_x_2
	happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	case happyOut16 happy_x_2 of { happy_var_2 -> 
	happyIn16
		 ((:) happy_var_1 happy_var_2
	)}}

happyReduce_19 = happyReduce 5# 11# happyReduction_19
happyReduction_19 (happy_x_5 `HappyStk`
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

happyReduce_20 = happySpecReduce_0  12# happyReduction_20
happyReduction_20  =  happyIn18
		 ([]
	)

happyReduce_21 = happySpecReduce_2  12# happyReduction_21
happyReduction_21 happy_x_2
	happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	case happyOut14 happy_x_2 of { happy_var_2 -> 
	happyIn18
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_22 = happySpecReduce_1  13# happyReduction_22
happyReduction_22 happy_x_1
	 =  happyIn19
		 (Type_specifier_int
	)

happyReduce_23 = happySpecReduce_1  13# happyReduction_23
happyReduction_23 happy_x_1
	 =  happyIn19
		 (Type_specifier_float
	)

happyReduce_24 = happySpecReduce_1  13# happyReduction_24
happyReduction_24 happy_x_1
	 =  happyIn19
		 (Type_specifier_bool
	)

happyReduce_25 = happySpecReduce_1  13# happyReduction_25
happyReduction_25 happy_x_1
	 =  case happyOut20 happy_x_1 of { happy_var_1 -> 
	happyIn19
		 (Type_specifierStruct_spec happy_var_1
	)}

happyReduce_26 = happyReduce 5# 14# happyReduction_26
happyReduction_26 (happy_x_5 `HappyStk`
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

happyReduce_27 = happyReduce 4# 14# happyReduction_27
happyReduction_27 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut22 happy_x_3 of { happy_var_3 -> 
	happyIn20
		 (Unnamed happy_var_3
	) `HappyStk` happyRest}

happyReduce_28 = happySpecReduce_2  14# happyReduction_28
happyReduction_28 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_2 of { happy_var_2 -> 
	happyIn20
		 (Type happy_var_2
	)}

happyReduce_29 = happySpecReduce_3  15# happyReduction_29
happyReduction_29 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_2 of { happy_var_2 -> 
	happyIn21
		 (Structen happy_var_1 happy_var_2
	)}}

happyReduce_30 = happySpecReduce_1  16# happyReduction_30
happyReduction_30 happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	happyIn22
		 ((:[]) happy_var_1
	)}

happyReduce_31 = happySpecReduce_2  16# happyReduction_31
happyReduction_31 happy_x_2
	happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	case happyOut22 happy_x_2 of { happy_var_2 -> 
	happyIn22
		 ((:) happy_var_1 happy_var_2
	)}}

happyReduce_32 = happySpecReduce_1  17# happyReduction_32
happyReduction_32 happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	happyIn23
		 (StructOnlyDecl happy_var_1
	)}

happyReduce_33 = happySpecReduce_3  17# happyReduction_33
happyReduction_33 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	case happyOut58 happy_x_3 of { happy_var_3 -> 
	happyIn23
		 (StructInitDecl happy_var_1 happy_var_3
	)}}

happyReduce_34 = happySpecReduce_1  18# happyReduction_34
happyReduction_34 happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	happyIn24
		 ((:[]) happy_var_1
	)}

happyReduce_35 = happySpecReduce_3  18# happyReduction_35
happyReduction_35 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_3 of { happy_var_3 -> 
	happyIn24
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_36 = happySpecReduce_1  19# happyReduction_36
happyReduction_36 happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn25
		 (VarName happy_var_1
	)}

happyReduce_37 = happyReduce 4# 19# happyReduction_37
happyReduction_37 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut25 happy_x_1 of { happy_var_1 -> 
	case happyOut27 happy_x_3 of { happy_var_3 -> 
	happyIn25
		 (FunctionName happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_38 = happySpecReduce_2  20# happyReduction_38
happyReduction_38 happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_2 of { happy_var_2 -> 
	happyIn26
		 (SingleParam happy_var_1 happy_var_2
	)}}

happyReduce_39 = happySpecReduce_0  21# happyReduction_39
happyReduction_39  =  happyIn27
		 ([]
	)

happyReduce_40 = happySpecReduce_1  21# happyReduction_40
happyReduction_40 happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	happyIn27
		 ((:[]) happy_var_1
	)}

happyReduce_41 = happySpecReduce_3  21# happyReduction_41
happyReduction_41 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	case happyOut27 happy_x_3 of { happy_var_3 -> 
	happyIn27
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_42 = happySpecReduce_1  22# happyReduction_42
happyReduction_42 happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 (OnlyDecl happy_var_1
	)}

happyReduce_43 = happySpecReduce_3  22# happyReduction_43
happyReduction_43 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	case happyOut30 happy_x_3 of { happy_var_3 -> 
	happyIn28
		 (InitDecl happy_var_1 happy_var_3
	)}}

happyReduce_44 = happySpecReduce_1  23# happyReduction_44
happyReduction_44 happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn29
		 ((:[]) happy_var_1
	)}

happyReduce_45 = happySpecReduce_3  23# happyReduction_45
happyReduction_45 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut29 happy_x_3 of { happy_var_3 -> 
	happyIn29
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_46 = happySpecReduce_1  24# happyReduction_46
happyReduction_46 happy_x_1
	 =  case happyOut41 happy_x_1 of { happy_var_1 -> 
	happyIn30
		 (InitExpr happy_var_1
	)}

happyReduce_47 = happySpecReduce_3  24# happyReduction_47
happyReduction_47 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut31 happy_x_2 of { happy_var_2 -> 
	happyIn30
		 (InitList happy_var_2
	)}

happyReduce_48 = happySpecReduce_1  25# happyReduction_48
happyReduction_48 happy_x_1
	 =  case happyOut30 happy_x_1 of { happy_var_1 -> 
	happyIn31
		 ((:[]) happy_var_1
	)}

happyReduce_49 = happySpecReduce_3  25# happyReduction_49
happyReduction_49 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut30 happy_x_1 of { happy_var_1 -> 
	case happyOut31 happy_x_3 of { happy_var_3 -> 
	happyIn31
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_50 = happySpecReduce_3  26# happyReduction_50
happyReduction_50 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (ListS (reverse happy_var_2)
	)}

happyReduce_51 = happySpecReduce_1  26# happyReduction_51
happyReduction_51 happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (ExprS happy_var_1
	)}

happyReduce_52 = happySpecReduce_1  26# happyReduction_52
happyReduction_52 happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (IfS happy_var_1
	)}

happyReduce_53 = happySpecReduce_1  26# happyReduction_53
happyReduction_53 happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (IterS happy_var_1
	)}

happyReduce_54 = happySpecReduce_1  26# happyReduction_54
happyReduction_54 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (JumpS happy_var_1
	)}

happyReduce_55 = happySpecReduce_1  27# happyReduction_55
happyReduction_55 happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	happyIn33
		 ((:[]) happy_var_1
	)}

happyReduce_56 = happySpecReduce_2  27# happyReduction_56
happyReduction_56 happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	case happyOut33 happy_x_2 of { happy_var_2 -> 
	happyIn33
		 ((:) happy_var_1 happy_var_2
	)}}

happyReduce_57 = happySpecReduce_1  28# happyReduction_57
happyReduction_57 happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	happyIn34
		 (SStm happy_var_1
	)}

happyReduce_58 = happySpecReduce_1  28# happyReduction_58
happyReduction_58 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn34
		 (SDec happy_var_1
	)}

happyReduce_59 = happySpecReduce_0  29# happyReduction_59
happyReduction_59  =  happyIn35
		 ([]
	)

happyReduce_60 = happySpecReduce_2  29# happyReduction_60
happyReduction_60 happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	case happyOut34 happy_x_2 of { happy_var_2 -> 
	happyIn35
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_61 = happySpecReduce_1  30# happyReduction_61
happyReduction_61 happy_x_1
	 =  happyIn36
		 (Sempty
	)

happyReduce_62 = happySpecReduce_2  30# happyReduction_62
happyReduction_62 happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	happyIn36
		 (Sexpr happy_var_1
	)}

happyReduce_63 = happyReduce 5# 31# happyReduction_63
happyReduction_63 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut40 happy_x_3 of { happy_var_3 -> 
	case happyOut32 happy_x_5 of { happy_var_5 -> 
	happyIn37
		 (SIf happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_64 = happyReduce 7# 31# happyReduction_64
happyReduction_64 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut40 happy_x_3 of { happy_var_3 -> 
	case happyOut32 happy_x_5 of { happy_var_5 -> 
	case happyOut32 happy_x_7 of { happy_var_7 -> 
	happyIn37
		 (SIfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest}}}

happyReduce_65 = happyReduce 5# 32# happyReduction_65
happyReduction_65 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut40 happy_x_3 of { happy_var_3 -> 
	case happyOut32 happy_x_5 of { happy_var_5 -> 
	happyIn38
		 (SiterWhile happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_66 = happyReduce 7# 32# happyReduction_66
happyReduction_66 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut36 happy_x_3 of { happy_var_3 -> 
	case happyOut36 happy_x_4 of { happy_var_4 -> 
	case happyOut40 happy_x_5 of { happy_var_5 -> 
	case happyOut32 happy_x_7 of { happy_var_7 -> 
	happyIn38
		 (SiterFor happy_var_3 happy_var_4 happy_var_5 happy_var_7
	) `HappyStk` happyRest}}}}

happyReduce_67 = happySpecReduce_2  33# happyReduction_67
happyReduction_67 happy_x_2
	happy_x_1
	 =  happyIn39
		 (SjumpTwo
	)

happyReduce_68 = happySpecReduce_2  33# happyReduction_68
happyReduction_68 happy_x_2
	happy_x_1
	 =  happyIn39
		 (SjumpThree
	)

happyReduce_69 = happySpecReduce_2  33# happyReduction_69
happyReduction_69 happy_x_2
	happy_x_1
	 =  happyIn39
		 (SjumpFour
	)

happyReduce_70 = happySpecReduce_3  33# happyReduction_70
happyReduction_70 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_2 of { happy_var_2 -> 
	happyIn39
		 (SjumpFive happy_var_2
	)}

happyReduce_71 = happySpecReduce_3  34# happyReduction_71
happyReduction_71 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	case happyOut41 happy_x_3 of { happy_var_3 -> 
	happyIn40
		 (Ecomma happy_var_1 happy_var_3
	)}}

happyReduce_72 = happySpecReduce_1  34# happyReduction_72
happyReduction_72 happy_x_1
	 =  case happyOut59 happy_x_1 of { happy_var_1 -> 
	happyIn40
		 (happy_var_1
	)}

happyReduce_73 = happySpecReduce_3  35# happyReduction_73
happyReduction_73 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	case happyOut41 happy_x_3 of { happy_var_3 -> 
	happyIn41
		 (Eassign happy_var_1 happy_var_3
	)}}

happyReduce_74 = happySpecReduce_1  35# happyReduction_74
happyReduction_74 happy_x_1
	 =  case happyOut42 happy_x_1 of { happy_var_1 -> 
	happyIn41
		 (happy_var_1
	)}

happyReduce_75 = happyReduce 5# 36# happyReduction_75
happyReduction_75 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut43 happy_x_1 of { happy_var_1 -> 
	case happyOut40 happy_x_3 of { happy_var_3 -> 
	case happyOut42 happy_x_5 of { happy_var_5 -> 
	happyIn42
		 (Econdition happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_76 = happySpecReduce_1  36# happyReduction_76
happyReduction_76 happy_x_1
	 =  case happyOut43 happy_x_1 of { happy_var_1 -> 
	happyIn42
		 (happy_var_1
	)}

happyReduce_77 = happySpecReduce_3  37# happyReduction_77
happyReduction_77 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut43 happy_x_1 of { happy_var_1 -> 
	case happyOut44 happy_x_3 of { happy_var_3 -> 
	happyIn43
		 (Elor happy_var_1 happy_var_3
	)}}

happyReduce_78 = happySpecReduce_1  37# happyReduction_78
happyReduction_78 happy_x_1
	 =  case happyOut44 happy_x_1 of { happy_var_1 -> 
	happyIn43
		 (happy_var_1
	)}

happyReduce_79 = happySpecReduce_3  38# happyReduction_79
happyReduction_79 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut44 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn44
		 (Eland happy_var_1 happy_var_3
	)}}

happyReduce_80 = happySpecReduce_1  38# happyReduction_80
happyReduction_80 happy_x_1
	 =  case happyOut45 happy_x_1 of { happy_var_1 -> 
	happyIn44
		 (happy_var_1
	)}

happyReduce_81 = happySpecReduce_3  39# happyReduction_81
happyReduction_81 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut45 happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_3 of { happy_var_3 -> 
	happyIn45
		 (Ebitor happy_var_1 happy_var_3
	)}}

happyReduce_82 = happySpecReduce_1  39# happyReduction_82
happyReduction_82 happy_x_1
	 =  case happyOut46 happy_x_1 of { happy_var_1 -> 
	happyIn45
		 (happy_var_1
	)}

happyReduce_83 = happySpecReduce_3  40# happyReduction_83
happyReduction_83 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut46 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn46
		 (Ebitexor happy_var_1 happy_var_3
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
		 (Ebitand happy_var_1 happy_var_3
	)}}

happyReduce_86 = happySpecReduce_1  41# happyReduction_86
happyReduction_86 happy_x_1
	 =  case happyOut48 happy_x_1 of { happy_var_1 -> 
	happyIn47
		 (happy_var_1
	)}

happyReduce_87 = happySpecReduce_3  42# happyReduction_87
happyReduction_87 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut48 happy_x_1 of { happy_var_1 -> 
	case happyOut49 happy_x_3 of { happy_var_3 -> 
	happyIn48
		 (Eeq happy_var_1 happy_var_3
	)}}

happyReduce_88 = happySpecReduce_3  42# happyReduction_88
happyReduction_88 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut48 happy_x_1 of { happy_var_1 -> 
	case happyOut49 happy_x_3 of { happy_var_3 -> 
	happyIn48
		 (Eneq happy_var_1 happy_var_3
	)}}

happyReduce_89 = happySpecReduce_1  42# happyReduction_89
happyReduction_89 happy_x_1
	 =  case happyOut49 happy_x_1 of { happy_var_1 -> 
	happyIn48
		 (happy_var_1
	)}

happyReduce_90 = happySpecReduce_3  43# happyReduction_90
happyReduction_90 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut49 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 (Elthen happy_var_1 happy_var_3
	)}}

happyReduce_91 = happySpecReduce_3  43# happyReduction_91
happyReduction_91 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut49 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 (Egrthen happy_var_1 happy_var_3
	)}}

happyReduce_92 = happySpecReduce_3  43# happyReduction_92
happyReduction_92 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut49 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 (Ele happy_var_1 happy_var_3
	)}}

happyReduce_93 = happySpecReduce_3  43# happyReduction_93
happyReduction_93 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut49 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 (Ege happy_var_1 happy_var_3
	)}}

happyReduce_94 = happySpecReduce_1  43# happyReduction_94
happyReduction_94 happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	happyIn49
		 (happy_var_1
	)}

happyReduce_95 = happySpecReduce_3  44# happyReduction_95
happyReduction_95 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	case happyOut51 happy_x_3 of { happy_var_3 -> 
	happyIn50
		 (Eleft happy_var_1 happy_var_3
	)}}

happyReduce_96 = happySpecReduce_3  44# happyReduction_96
happyReduction_96 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	case happyOut51 happy_x_3 of { happy_var_3 -> 
	happyIn50
		 (Eright happy_var_1 happy_var_3
	)}}

happyReduce_97 = happySpecReduce_1  44# happyReduction_97
happyReduction_97 happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	happyIn50
		 (happy_var_1
	)}

happyReduce_98 = happySpecReduce_3  45# happyReduction_98
happyReduction_98 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	happyIn51
		 (Eplus happy_var_1 happy_var_3
	)}}

happyReduce_99 = happySpecReduce_3  45# happyReduction_99
happyReduction_99 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	happyIn51
		 (Eminus happy_var_1 happy_var_3
	)}}

happyReduce_100 = happySpecReduce_1  45# happyReduction_100
happyReduction_100 happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	happyIn51
		 (happy_var_1
	)}

happyReduce_101 = happySpecReduce_3  46# happyReduction_101
happyReduction_101 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	case happyOut53 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 (Etimes happy_var_1 happy_var_3
	)}}

happyReduce_102 = happySpecReduce_3  46# happyReduction_102
happyReduction_102 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	case happyOut53 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 (Ediv happy_var_1 happy_var_3
	)}}

happyReduce_103 = happySpecReduce_3  46# happyReduction_103
happyReduction_103 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	case happyOut53 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 (Emod happy_var_1 happy_var_3
	)}}

happyReduce_104 = happySpecReduce_1  46# happyReduction_104
happyReduction_104 happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	happyIn52
		 (happy_var_1
	)}

happyReduce_105 = happyReduce 4# 47# happyReduction_105
happyReduction_105 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut19 happy_x_2 of { happy_var_2 -> 
	case happyOut53 happy_x_4 of { happy_var_4 -> 
	happyIn53
		 (Etypeconv happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_106 = happySpecReduce_1  47# happyReduction_106
happyReduction_106 happy_x_1
	 =  case happyOut54 happy_x_1 of { happy_var_1 -> 
	happyIn53
		 (happy_var_1
	)}

happyReduce_107 = happySpecReduce_2  48# happyReduction_107
happyReduction_107 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_2 of { happy_var_2 -> 
	happyIn54
		 (Epreinc happy_var_2
	)}

happyReduce_108 = happySpecReduce_2  48# happyReduction_108
happyReduction_108 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_2 of { happy_var_2 -> 
	happyIn54
		 (Epredec happy_var_2
	)}

happyReduce_109 = happySpecReduce_2  48# happyReduction_109
happyReduction_109 happy_x_2
	happy_x_1
	 =  case happyOut61 happy_x_1 of { happy_var_1 -> 
	case happyOut53 happy_x_2 of { happy_var_2 -> 
	happyIn54
		 (Epreop happy_var_1 happy_var_2
	)}}

happyReduce_110 = happySpecReduce_1  48# happyReduction_110
happyReduction_110 happy_x_1
	 =  case happyOut55 happy_x_1 of { happy_var_1 -> 
	happyIn54
		 (happy_var_1
	)}

happyReduce_111 = happyReduce 4# 49# happyReduction_111
happyReduction_111 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut6 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	happyIn55
		 (Efunk happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_112 = happyReduce 6# 49# happyReduction_112
happyReduction_112 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut6 happy_x_1 of { happy_var_1 -> 
	case happyOut6 happy_x_3 of { happy_var_3 -> 
	case happyOut60 happy_x_5 of { happy_var_5 -> 
	happyIn55
		 (EfunkNS happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_113 = happySpecReduce_3  49# happyReduction_113
happyReduction_113 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut55 happy_x_1 of { happy_var_1 -> 
	case happyOut6 happy_x_3 of { happy_var_3 -> 
	happyIn55
		 (Eselect happy_var_1 happy_var_3
	)}}

happyReduce_114 = happySpecReduce_2  49# happyReduction_114
happyReduction_114 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 (Epostinc happy_var_1
	)}

happyReduce_115 = happySpecReduce_2  49# happyReduction_115
happyReduction_115 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 (Epostdec happy_var_1
	)}

happyReduce_116 = happySpecReduce_1  49# happyReduction_116
happyReduction_116 happy_x_1
	 =  case happyOut56 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 (happy_var_1
	)}

happyReduce_117 = happySpecReduce_1  50# happyReduction_117
happyReduction_117 happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn56
		 (Evar happy_var_1
	)}

happyReduce_118 = happySpecReduce_1  50# happyReduction_118
happyReduction_118 happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn56
		 (Econst happy_var_1
	)}

happyReduce_119 = happySpecReduce_3  50# happyReduction_119
happyReduction_119 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_2 of { happy_var_2 -> 
	happyIn56
		 (happy_var_2
	)}

happyReduce_120 = happySpecReduce_1  51# happyReduction_120
happyReduction_120 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn57
		 (Efloat happy_var_1
	)}

happyReduce_121 = happySpecReduce_1  51# happyReduction_121
happyReduction_121 happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	happyIn57
		 (Ecfloat happy_var_1
	)}

happyReduce_122 = happySpecReduce_1  51# happyReduction_122
happyReduction_122 happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	happyIn57
		 (Ebool happy_var_1
	)}

happyReduce_123 = happySpecReduce_1  51# happyReduction_123
happyReduction_123 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn57
		 (Eint happy_var_1
	)}

happyReduce_124 = happySpecReduce_1  52# happyReduction_124
happyReduction_124 happy_x_1
	 =  case happyOut42 happy_x_1 of { happy_var_1 -> 
	happyIn58
		 (Especial happy_var_1
	)}

happyReduce_125 = happySpecReduce_1  53# happyReduction_125
happyReduction_125 happy_x_1
	 =  case happyOut41 happy_x_1 of { happy_var_1 -> 
	happyIn59
		 (happy_var_1
	)}

happyReduce_126 = happySpecReduce_0  54# happyReduction_126
happyReduction_126  =  happyIn60
		 ([]
	)

happyReduce_127 = happySpecReduce_1  54# happyReduction_127
happyReduction_127 happy_x_1
	 =  case happyOut41 happy_x_1 of { happy_var_1 -> 
	happyIn60
		 ((:[]) happy_var_1
	)}

happyReduce_128 = happySpecReduce_3  54# happyReduction_128
happyReduction_128 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut41 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	happyIn60
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_129 = happySpecReduce_1  55# happyReduction_129
happyReduction_129 happy_x_1
	 =  happyIn61
		 (Negative
	)

happyReduce_130 = happySpecReduce_1  55# happyReduction_130
happyReduction_130 happy_x_1
	 =  happyIn61
		 (Logicalneg
	)

happyNewToken action sts stk [] =
	happyDoAction 51# notHappyAtAll action sts stk []

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
	PT _ (TS _ 40) -> cont 40#;
	PT _ (TS _ 41) -> cont 41#;
	PT _ (TS _ 42) -> cont 42#;
	PT _ (TS _ 43) -> cont 43#;
	PT _ (TS _ 44) -> cont 44#;
	PT _ (TV happy_dollar_dollar) -> cont 45#;
	PT _ (TD happy_dollar_dollar) -> cont 46#;
	PT _ (TI happy_dollar_dollar) -> cont 47#;
	PT _ (T_CFloat happy_dollar_dollar) -> cont 48#;
	PT _ (T_Boolean happy_dollar_dollar) -> cont 49#;
	_ -> cont 50#;
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
  happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut40 x))

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
