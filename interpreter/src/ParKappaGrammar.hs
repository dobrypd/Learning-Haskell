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
happyIn21 :: (Declarator) -> (HappyAbsSyn )
happyIn21 x = unsafeCoerce# x
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn ) -> (Declarator)
happyOut21 x = unsafeCoerce# x
{-# INLINE happyOut21 #-}
happyIn22 :: (Parameter) -> (HappyAbsSyn )
happyIn22 x = unsafeCoerce# x
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn ) -> (Parameter)
happyOut22 x = unsafeCoerce# x
{-# INLINE happyOut22 #-}
happyIn23 :: ([Parameter]) -> (HappyAbsSyn )
happyIn23 x = unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn ) -> ([Parameter])
happyOut23 x = unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyIn24 :: (Init_declarator) -> (HappyAbsSyn )
happyIn24 x = unsafeCoerce# x
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn ) -> (Init_declarator)
happyOut24 x = unsafeCoerce# x
{-# INLINE happyOut24 #-}
happyIn25 :: ([Init_declarator]) -> (HappyAbsSyn )
happyIn25 x = unsafeCoerce# x
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn ) -> ([Init_declarator])
happyOut25 x = unsafeCoerce# x
{-# INLINE happyOut25 #-}
happyIn26 :: (Initializer) -> (HappyAbsSyn )
happyIn26 x = unsafeCoerce# x
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn ) -> (Initializer)
happyOut26 x = unsafeCoerce# x
{-# INLINE happyOut26 #-}
happyIn27 :: ([Initializer]) -> (HappyAbsSyn )
happyIn27 x = unsafeCoerce# x
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn ) -> ([Initializer])
happyOut27 x = unsafeCoerce# x
{-# INLINE happyOut27 #-}
happyIn28 :: (Stm) -> (HappyAbsSyn )
happyIn28 x = unsafeCoerce# x
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn ) -> (Stm)
happyOut28 x = unsafeCoerce# x
{-# INLINE happyOut28 #-}
happyIn29 :: ([Stm]) -> (HappyAbsSyn )
happyIn29 x = unsafeCoerce# x
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn ) -> ([Stm])
happyOut29 x = unsafeCoerce# x
{-# INLINE happyOut29 #-}
happyIn30 :: (StmOrDec) -> (HappyAbsSyn )
happyIn30 x = unsafeCoerce# x
{-# INLINE happyIn30 #-}
happyOut30 :: (HappyAbsSyn ) -> (StmOrDec)
happyOut30 x = unsafeCoerce# x
{-# INLINE happyOut30 #-}
happyIn31 :: ([StmOrDec]) -> (HappyAbsSyn )
happyIn31 x = unsafeCoerce# x
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn ) -> ([StmOrDec])
happyOut31 x = unsafeCoerce# x
{-# INLINE happyOut31 #-}
happyIn32 :: (ExpStm) -> (HappyAbsSyn )
happyIn32 x = unsafeCoerce# x
{-# INLINE happyIn32 #-}
happyOut32 :: (HappyAbsSyn ) -> (ExpStm)
happyOut32 x = unsafeCoerce# x
{-# INLINE happyOut32 #-}
happyIn33 :: (DecStm) -> (HappyAbsSyn )
happyIn33 x = unsafeCoerce# x
{-# INLINE happyIn33 #-}
happyOut33 :: (HappyAbsSyn ) -> (DecStm)
happyOut33 x = unsafeCoerce# x
{-# INLINE happyOut33 #-}
happyIn34 :: (If_stm) -> (HappyAbsSyn )
happyIn34 x = unsafeCoerce# x
{-# INLINE happyIn34 #-}
happyOut34 :: (HappyAbsSyn ) -> (If_stm)
happyOut34 x = unsafeCoerce# x
{-# INLINE happyOut34 #-}
happyIn35 :: (Iter_stm) -> (HappyAbsSyn )
happyIn35 x = unsafeCoerce# x
{-# INLINE happyIn35 #-}
happyOut35 :: (HappyAbsSyn ) -> (Iter_stm)
happyOut35 x = unsafeCoerce# x
{-# INLINE happyOut35 #-}
happyIn36 :: (Jump_stm) -> (HappyAbsSyn )
happyIn36 x = unsafeCoerce# x
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn ) -> (Jump_stm)
happyOut36 x = unsafeCoerce# x
{-# INLINE happyOut36 #-}
happyIn37 :: ([Ident]) -> (HappyAbsSyn )
happyIn37 x = unsafeCoerce# x
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn ) -> ([Ident])
happyOut37 x = unsafeCoerce# x
{-# INLINE happyOut37 #-}
happyIn38 :: (Exp) -> (HappyAbsSyn )
happyIn38 x = unsafeCoerce# x
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn ) -> (Exp)
happyOut38 x = unsafeCoerce# x
{-# INLINE happyOut38 #-}
happyIn39 :: (Exp) -> (HappyAbsSyn )
happyIn39 x = unsafeCoerce# x
{-# INLINE happyIn39 #-}
happyOut39 :: (HappyAbsSyn ) -> (Exp)
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
happyIn51 :: (Constant) -> (HappyAbsSyn )
happyIn51 x = unsafeCoerce# x
{-# INLINE happyIn51 #-}
happyOut51 :: (HappyAbsSyn ) -> (Constant)
happyOut51 x = unsafeCoerce# x
{-# INLINE happyOut51 #-}
happyIn52 :: (Exp) -> (HappyAbsSyn )
happyIn52 x = unsafeCoerce# x
{-# INLINE happyIn52 #-}
happyOut52 :: (HappyAbsSyn ) -> (Exp)
happyOut52 x = unsafeCoerce# x
{-# INLINE happyOut52 #-}
happyIn53 :: ([Exp]) -> (HappyAbsSyn )
happyIn53 x = unsafeCoerce# x
{-# INLINE happyIn53 #-}
happyOut53 :: (HappyAbsSyn ) -> ([Exp])
happyOut53 x = unsafeCoerce# x
{-# INLINE happyOut53 #-}
happyIn54 :: (Unary_operator) -> (HappyAbsSyn )
happyIn54 x = unsafeCoerce# x
{-# INLINE happyIn54 #-}
happyOut54 :: (HappyAbsSyn ) -> (Unary_operator)
happyOut54 x = unsafeCoerce# x
{-# INLINE happyOut54 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x86\x00\xd7\x04\x91\x05\x7d\x01\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x90\x01\x02\x00\x00\x00\x00\x00\x7a\x00\x9f\x01\x5f\x00\xea\x00\x71\x01\x97\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x91\x05\x00\x00\x03\x05\x65\x01\x00\x00\x65\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x65\x01\x00\x00\x58\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb9\x00\x25\x04\x00\x00\x74\x01\x73\x01\x00\x00\x7e\x01\x7a\x01\x00\x00\x88\x05\x5b\x01\x76\x01\x00\x00\x50\x01\x00\x00\x86\x00\x00\x00\x00\x00\x00\x00\x4d\x01\x4d\x01\x35\x01\x00\x00\x2a\x03\x4f\x01\x47\x01\x00\x00\xab\x04\x91\x05\xb4\x00\x34\x00\x00\x00\x91\x05\x5a\x01\x00\x00\x00\x00\x91\x05\x00\x00\x64\x00\x00\x00\x00\x00\x3d\x01\x6e\x01\x00\x00\x00\x00\x91\x05\x91\x05\x91\x05\x91\x05\x91\x05\x91\x05\x91\x05\x91\x05\x91\x05\x91\x05\x91\x05\x91\x05\x91\x05\x91\x05\x91\x05\x5c\x05\x00\x00\x00\x00\x11\x01\x11\x01\x09\x01\x00\x01\x00\x00\xfb\x00\xf5\x00\x00\x00\xf0\x00\xce\x00\x5f\x00\xea\x00\xea\x00\x71\x01\x71\x01\x71\x01\x71\x01\x97\x00\x97\x00\x00\x00\x00\x00\x00\x00\x00\x00\x91\x05\xb4\x00\x53\x05\x00\x00\x4a\x05\x00\x00\x6c\x01\x00\x00\xb4\x00\xb5\x00\x05\x01\x53\x04\x00\x00\x00\x00\x00\x00\x00\x00\xb6\x00\x00\x00\x00\x00\x24\x00\x7f\x04\x00\x00\xd7\x04\x00\x00\x00\x00\xd7\x04\x91\x05\x00\x00\x00\x00\x00\x00\x45\x05\xb6\x00\x92\x00\xa7\x00\x00\x00\x91\x05\x00\x00\x19\x05\x19\x05\x9e\x00\x00\x00\x00\x00\x00\x00\xb4\x00\x96\x00\x6c\x00\x4e\x00\xf8\x00\x4f\x00\x00\x00\x00\x00\x00\x00\x1b\x00\x00\x00\x13\x00\xd7\x04\xd7\x04\x00\x00\x0c\x05\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x08\x04\xf6\x00\x1a\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf5\x03\x00\x00\x27\x01\x42\x00\x00\x00\x3c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x99\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\xfa\xff\x00\x00\x00\x00\xde\x03\x00\x00\x00\x00\x00\x00\x68\x00\x3a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\xe9\x01\xcc\x00\x00\x00\x00\x00\xcf\x01\x61\x00\x00\x00\x00\x00\xad\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xdb\x03\xd3\x03\xc4\x03\xa2\x03\x8b\x03\x71\x03\x5a\x03\x40\x03\x29\x03\x0f\x03\x06\x01\xf8\x02\xb8\x01\xde\x02\x96\x02\x7c\x02\x00\x00\x00\x00\x1a\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x93\x03\x34\x01\x65\x02\x00\x00\x3c\x01\x00\x00\x00\x00\x00\x00\xc2\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x37\x00\xf2\xff\xfc\xff\x65\x00\x01\x00\x00\x00\xc5\x00\x00\x00\x00\x00\x94\x00\x9e\x01\x00\x00\x00\x00\x00\x00\x87\x01\x07\x00\x00\x00\x00\x00\x00\x00\xc7\x02\x00\x00\x4b\x02\x31\x02\x00\x00\x00\x00\x00\x00\x00\x00\x2a\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x00\x00\x00\x00\x00\x63\x00\x32\x00\x00\x00\x6d\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\xbf\xff\xbf\xff\x00\x00\xfc\xff\xbe\xff\x95\xff\x92\xff\x94\xff\x93\xff\x98\xff\x00\x00\x91\xff\xb9\xff\xb7\xff\xb5\xff\xb3\xff\xb0\xff\xab\xff\xa8\xff\xa4\xff\xa2\xff\x9e\xff\x99\xff\x97\xff\xbb\xff\xbf\xff\x8c\xff\xbf\xff\x00\x00\x8d\xff\x00\x00\xfb\xff\xfa\xff\xf9\xff\xf8\xff\xc8\xff\x00\x00\xe7\xff\x00\x00\xd5\xff\xd6\xff\xd4\xff\xd3\xff\xd2\xff\x00\x00\xc9\xff\xe8\xff\x00\x00\x00\x00\xe9\xff\x00\x00\x00\x00\xea\xff\xbf\xff\x00\x00\x00\x00\xcd\xff\x00\x00\xf7\xff\xf6\xff\xf4\xff\xf3\xff\xf2\xff\x00\x00\x00\x00\x00\x00\xe5\xff\xdf\xff\xdd\xff\x00\x00\xf5\xff\xbf\xff\xbf\xff\x00\x00\x00\x00\xc1\xff\xbf\xff\x00\x00\xc3\xff\xc2\xff\xbf\xff\xca\xff\xdf\xff\xa0\xff\xa1\xff\x00\x00\x00\x00\x98\xff\x9f\xff\xbf\xff\xbf\xff\xbf\xff\xbf\xff\xbf\xff\xbf\xff\xbf\xff\xbf\xff\xbf\xff\xbf\xff\xbf\xff\xbf\xff\xbf\xff\xbf\xff\xbf\xff\xbf\xff\x9b\xff\x9a\xff\xbf\xff\x00\x00\x00\x00\xbe\xff\xbd\xff\x8f\xff\x00\x00\xba\xff\xb6\xff\x00\x00\xb4\xff\xb2\xff\xb1\xff\xac\xff\xae\xff\xad\xff\xaf\xff\xa9\xff\xaa\xff\xa6\xff\xa7\xff\xa5\xff\x96\xff\xbf\xff\xe2\xff\xbf\xff\xbc\xff\xbf\xff\xc9\xff\x00\x00\xc0\xff\xef\xff\x00\x00\x00\x00\xc8\xff\xcf\xff\xcc\xff\xd7\xff\xf0\xff\x00\x00\xcd\xff\xec\xff\x00\x00\xbf\xff\xdc\xff\xbf\xff\xe6\xff\xee\xff\xbf\xff\xbf\xff\xcb\xff\xde\xff\xdb\xff\xbf\xff\x00\x00\xe1\xff\x00\x00\xa3\xff\xbf\xff\x9d\xff\xbf\xff\xbf\xff\x00\x00\x8e\xff\xb8\xff\xe4\xff\xe2\xff\xe3\xff\xd9\xff\x00\x00\x00\x00\xc7\xff\xc5\xff\xf1\xff\xeb\xff\x00\x00\xed\xff\x00\x00\xbf\xff\xbf\xff\xda\xff\xbf\xff\xe0\xff\x9c\xff\xd8\xff\xc4\xff\xc6\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x00\x00\x0c\x00\x05\x00\x09\x00\x19\x00\x0a\x00\x09\x00\x0d\x00\x0e\x00\x0c\x00\x0d\x00\x00\x00\x19\x00\x10\x00\x0f\x00\x0f\x00\x16\x00\x05\x00\x18\x00\x00\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2e\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x25\x00\x1f\x00\x00\x00\x09\x00\x00\x00\x19\x00\x0a\x00\x0d\x00\x0e\x00\x1d\x00\x00\x00\x28\x00\x20\x00\x11\x00\x0f\x00\x23\x00\x16\x00\x12\x00\x13\x00\x27\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x02\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x05\x00\x09\x00\x1c\x00\x09\x00\x08\x00\x0d\x00\x0e\x00\x0d\x00\x0e\x00\x0d\x00\x0e\x00\x15\x00\x27\x00\x0a\x00\x0f\x00\x14\x00\x16\x00\x12\x00\x13\x00\x1b\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x18\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x03\x00\x05\x00\x0a\x00\x09\x00\x07\x00\x19\x00\x26\x00\x0d\x00\x0e\x00\x1d\x00\x06\x00\x0e\x00\x20\x00\x21\x00\x0f\x00\x23\x00\x16\x00\x12\x00\x13\x00\x06\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x0a\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x11\x00\x09\x00\x0a\x00\x19\x00\x09\x00\x0d\x00\x0e\x00\x1d\x00\x0d\x00\x0e\x00\x20\x00\x09\x00\x0a\x00\x23\x00\x0a\x00\x0d\x00\x0e\x00\x16\x00\x27\x00\x0f\x00\x28\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x04\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x06\x00\x12\x00\x13\x00\x06\x00\x09\x00\x16\x00\x17\x00\x0a\x00\x0d\x00\x0e\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x06\x00\x16\x00\x0d\x00\x05\x00\x0a\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x1f\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x0d\x00\x0e\x00\x30\x00\x0d\x00\x0e\x00\x28\x00\x10\x00\x11\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0d\x00\x0e\x00\x06\x00\x10\x00\x11\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x1a\x00\x30\x00\x11\x00\x0a\x00\x25\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x11\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x06\x00\x19\x00\x06\x00\x28\x00\x0a\x00\x1d\x00\x0a\x00\x08\x00\x20\x00\x05\x00\x0b\x00\x23\x00\x2e\x00\x05\x00\x25\x00\x14\x00\x15\x00\x05\x00\x11\x00\x11\x00\x2e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\x28\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x14\x00\x15\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x04\x00\x14\x00\x28\x00\x1f\x00\xff\xff\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\xff\xff\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\x2f\x00\x30\x00\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\xff\xff\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x14\x00\x2f\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x1f\x00\xff\xff\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\xff\xff\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\x2f\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x1f\x00\xff\xff\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\xff\xff\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x1f\x00\xff\xff\xff\xff\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\xff\xff\xff\xff\xff\xff\xff\xff\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x1f\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\x05\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\x14\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x1f\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x25\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x1f\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x1f\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x1f\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x1f\x00\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x1f\x00\x06\x00\x07\x00\x08\x00\x09\x00\xff\xff\x0b\x00\xff\xff\x0d\x00\x0e\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x1f\x00\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\xff\xff\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\xff\xff\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\xff\xff\x0b\x00\x1f\x00\x0d\x00\x0e\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\xff\xff\x30\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\xff\xff\x0e\x00\xff\xff\xff\xff\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\xff\xff\x2e\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\xff\xff\x0e\x00\xff\xff\xff\xff\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\xff\xff\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x01\x00\xff\xff\xff\xff\xff\xff\x05\x00\xff\xff\xff\xff\xff\xff\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\xff\xff\xff\xff\x11\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x19\x00\x1a\x00\x1b\x00\xff\xff\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\x22\x00\x23\x00\x24\x00\x25\x00\xff\xff\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x01\x00\xff\xff\xff\xff\xff\xff\x05\x00\xff\xff\xff\xff\xff\xff\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\xff\xff\xff\xff\x11\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x19\x00\x1a\x00\x1b\x00\xff\xff\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\x22\x00\x23\x00\x24\x00\x25\x00\xff\xff\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x01\x00\xff\xff\xff\xff\xff\xff\x05\x00\xff\xff\xff\xff\xff\xff\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\xff\xff\xff\xff\x11\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x19\x00\x1a\x00\x1b\x00\xff\xff\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\x22\x00\x23\x00\x24\x00\x25\x00\xff\xff\xff\xff\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x01\x00\xff\xff\xff\xff\xff\xff\x05\x00\xff\xff\xff\xff\xff\xff\x09\x00\x01\x00\x0b\x00\x0c\x00\xff\xff\x05\x00\xff\xff\xff\xff\xff\xff\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\x01\x00\xff\xff\x19\x00\xff\xff\x05\x00\x06\x00\x1d\x00\xff\xff\x09\x00\x20\x00\x0b\x00\x0c\x00\x23\x00\xff\xff\xff\xff\xff\xff\xff\xff\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\xff\xff\x25\x00\xff\xff\xff\xff\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x01\x00\xff\xff\xff\xff\xff\xff\x05\x00\x01\x00\xff\xff\xff\xff\x09\x00\x05\x00\x0b\x00\x0c\x00\xff\xff\x09\x00\x01\x00\x0b\x00\x0c\x00\xff\xff\x05\x00\xff\xff\xff\xff\x11\x00\x09\x00\x01\x00\x0b\x00\x0c\x00\xff\xff\x05\x00\x06\x00\xff\xff\xff\xff\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\x25\x00\xff\xff\xff\xff\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\xff\xff\x25\x00\xff\xff\xff\xff\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\xff\xff\xff\xff\xff\xff\xff\xff\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x01\x00\xff\xff\xff\xff\xff\xff\x05\x00\xff\xff\xff\xff\xff\xff\x09\x00\x01\x00\x0b\x00\x0c\x00\xff\xff\x05\x00\xff\xff\xff\xff\x11\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\xff\xff\xff\xff\xff\xff\xff\xff\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x43\x00\x43\x00\x96\x00\x6a\x00\x8e\x00\x97\x00\x52\x00\x6b\x00\x25\x00\x26\x00\x6c\x00\x6d\x00\x6e\x00\x48\x00\x6e\x00\xb9\x00\xaf\x00\x8f\x00\x85\x00\x90\x00\x6f\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0a\x00\x2d\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\xff\xff\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x43\x00\x95\x00\x70\x00\x42\x00\x24\x00\x54\x00\x30\x00\x52\x00\x25\x00\x26\x00\x33\x00\x55\x00\x05\x00\x36\x00\x8b\x00\x53\x00\x38\x00\xc1\x00\x45\x00\x98\x00\xb9\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0a\x00\x2d\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x64\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x43\x00\x85\x00\x24\x00\xbb\x00\x24\x00\xb6\x00\x25\x00\x26\x00\x25\x00\x26\x00\xb7\x00\x26\x00\x65\x00\xbd\x00\xbe\x00\x44\x00\x86\x00\xc2\x00\x45\x00\x46\x00\x87\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0a\x00\x2d\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x67\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x43\x00\x5b\x00\x85\x00\xaf\x00\x24\x00\x5c\x00\x30\x00\x68\x00\x25\x00\x26\x00\x33\x00\xc0\x00\x5d\x00\x36\x00\x42\x00\x53\x00\x38\x00\xb3\x00\x45\x00\x46\x00\xae\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0a\x00\x2d\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x52\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x53\x00\x8b\x00\x9b\x00\x30\x00\x24\x00\x25\x00\x26\x00\x33\x00\x25\x00\x26\x00\x36\x00\x8b\x00\x8c\x00\x38\x00\x52\x00\x25\x00\x26\x00\xb4\x00\x9b\x00\xa7\x00\x05\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0a\x00\x2d\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x66\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\xa8\x00\x60\x00\x61\x00\xbc\x00\x24\x00\x62\x00\x63\x00\x52\x00\x25\x00\x26\x00\xa9\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x9a\x00\x27\x00\x6d\x00\xaa\x00\x52\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x0a\x00\x2d\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x58\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x77\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x56\x00\x26\x00\x1a\x00\xa2\x00\x26\x00\x05\x00\xa3\x00\xbe\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\xa2\x00\x26\x00\x84\x00\xa3\x00\xa4\x00\x0a\x00\x57\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x9d\x00\x1a\x00\x93\x00\x94\x00\x96\x00\x0a\x00\x2d\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x89\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x9d\x00\x30\x00\x83\x00\x05\x00\x52\x00\x33\x00\x52\x00\x5e\x00\x36\x00\x4a\x00\x5f\x00\x38\x00\xff\xff\x4e\x00\x4b\x00\xb0\x00\xc0\x00\x4f\x00\x50\x00\x51\x00\xff\xff\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x05\x00\xa0\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\xb0\x00\xb1\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x66\x00\x69\x00\x05\x00\x0a\x00\x00\x00\xa0\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\xb2\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x0a\x00\x75\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x89\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x0a\x00\x8d\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x4b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x71\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\xaa\x00\x1a\x00\x00\x00\x00\x00\x00\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x71\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x9f\x00\xab\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x0a\x00\x00\x00\xa0\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x71\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x72\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x0a\x00\x00\x00\x73\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x86\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x58\x00\x00\x00\x00\x00\xac\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x58\x00\x00\x00\x00\x00\x00\x00\x00\x00\x74\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x58\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x76\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x58\x00\x85\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x78\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x86\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x58\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x95\x00\x79\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x58\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7a\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x58\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7b\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x58\x00\x00\x00\x00\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x7c\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x58\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x58\x00\x7d\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\xa5\x00\x15\x00\x16\x00\x17\x00\x18\x00\x58\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x7e\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x00\x00\x00\x00\x58\x00\x47\x00\x3c\x00\x3d\x00\x3e\x00\x00\x00\x3f\x00\x00\x00\x40\x00\x26\x00\x7f\x00\x15\x00\x16\x00\x17\x00\x18\x00\x58\x00\x00\x00\x1a\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x58\x00\x00\x00\x80\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\x81\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\x00\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x00\x00\x3f\x00\x58\x00\x40\x00\x26\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x00\x00\x1a\x00\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\x00\x00\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\x00\x00\xc9\xff\x00\x00\x00\x00\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\x00\x00\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\xc9\xff\x00\x00\xc9\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\x00\x00\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\x00\x00\xc8\xff\x00\x00\x00\x00\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\x00\x00\xc8\xff\xc8\xff\xc8\xff\xc8\xff\x00\x00\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\xc8\xff\x1c\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x00\x00\x00\x00\x00\x00\x1e\x00\x00\x00\x1f\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x30\x00\x31\x00\x32\x00\x00\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x00\x00\xb6\x00\x05\x00\x21\x00\x22\x00\x23\x00\x24\x00\x1c\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x00\x00\x00\x00\x00\x00\x1e\x00\x00\x00\x1f\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x30\x00\x31\x00\x32\x00\x00\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x00\x00\x92\x00\x05\x00\x21\x00\x22\x00\x23\x00\x24\x00\x1c\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x00\x00\x00\x00\x00\x00\x1e\x00\x00\x00\x1f\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x30\x00\x31\x00\x32\x00\x00\x00\x33\x00\x34\x00\x35\x00\x36\x00\x00\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x00\x00\x00\x00\x05\x00\x21\x00\x22\x00\x23\x00\x24\x00\x1c\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x00\x00\x00\x00\x00\x00\x1e\x00\x1c\x00\x1f\x00\x20\x00\x00\x00\x1d\x00\x00\x00\x00\x00\x00\x00\x1e\x00\x00\x00\x1f\x00\x20\x00\x00\x00\x1c\x00\x00\x00\x30\x00\x00\x00\x1d\x00\x90\xff\x33\x00\x00\x00\x1e\x00\x36\x00\x1f\x00\x20\x00\x38\x00\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x21\x00\x22\x00\x23\x00\x24\x00\x00\x00\xa2\x00\x00\x00\x00\x00\x05\x00\x21\x00\x22\x00\x23\x00\x24\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x21\x00\x22\x00\x23\x00\x24\x00\x1c\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x1c\x00\x00\x00\x00\x00\x1e\x00\x1d\x00\x1f\x00\x20\x00\x00\x00\x1e\x00\x1c\x00\x1f\x00\x20\x00\x00\x00\x1d\x00\x00\x00\x00\x00\x9f\x00\x1e\x00\x1c\x00\x1f\x00\x20\x00\x00\x00\x1d\x00\x90\xff\x00\x00\x00\x00\x1e\x00\x00\x00\x1f\x00\x20\x00\x00\x00\xa2\x00\x00\x00\x00\x00\x05\x00\x21\x00\x22\x00\x23\x00\x24\x00\x05\x00\x21\x00\x22\x00\x23\x00\x24\x00\x00\x00\xa2\x00\x00\x00\x00\x00\x05\x00\x21\x00\x22\x00\x23\x00\x24\x00\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x21\x00\x22\x00\x23\x00\x24\x00\x1c\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x00\x00\x00\x00\x00\x00\x1e\x00\x1c\x00\x1f\x00\x20\x00\x00\x00\x1d\x00\x00\x00\x00\x00\x4d\x00\x1e\x00\x00\x00\x1f\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x21\x00\x22\x00\x23\x00\x24\x00\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x21\x00\x22\x00\x23\x00\x24\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = array (3, 115) [
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
	(115 , happyReduce_115)
	]

happy_n_terms = 47 :: Int
happy_n_nonterms = 49 :: Int

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
	case happyOut21 happy_x_2 of { happy_var_2 -> 
	case happyOut31 happy_x_4 of { happy_var_4 -> 
	happyIn14
		 (NewFunction happy_var_1 happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest}}}

happyReduce_15 = happySpecReduce_3  9# happyReduction_15
happyReduction_15 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_2 of { happy_var_2 -> 
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

happyReduce_25 = happyReduce 4# 14# happyReduction_25
happyReduction_25 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut16 happy_x_3 of { happy_var_3 -> 
	happyIn20
		 (Unnamed happy_var_3
	) `HappyStk` happyRest}

happyReduce_26 = happySpecReduce_1  15# happyReduction_26
happyReduction_26 happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn21
		 (VarName happy_var_1
	)}

happyReduce_27 = happyReduce 4# 15# happyReduction_27
happyReduction_27 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut21 happy_x_1 of { happy_var_1 -> 
	case happyOut23 happy_x_3 of { happy_var_3 -> 
	happyIn21
		 (FunctionName happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_28 = happySpecReduce_2  16# happyReduction_28
happyReduction_28 happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOut21 happy_x_2 of { happy_var_2 -> 
	happyIn22
		 (SingleParam happy_var_1 happy_var_2
	)}}

happyReduce_29 = happySpecReduce_0  17# happyReduction_29
happyReduction_29  =  happyIn23
		 ([]
	)

happyReduce_30 = happySpecReduce_1  17# happyReduction_30
happyReduction_30 happy_x_1
	 =  case happyOut22 happy_x_1 of { happy_var_1 -> 
	happyIn23
		 ((:[]) happy_var_1
	)}

happyReduce_31 = happySpecReduce_3  17# happyReduction_31
happyReduction_31 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut22 happy_x_1 of { happy_var_1 -> 
	case happyOut23 happy_x_3 of { happy_var_3 -> 
	happyIn23
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_32 = happySpecReduce_1  18# happyReduction_32
happyReduction_32 happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	happyIn24
		 (OnlyDecl happy_var_1
	)}

happyReduce_33 = happySpecReduce_3  18# happyReduction_33
happyReduction_33 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	case happyOut26 happy_x_3 of { happy_var_3 -> 
	happyIn24
		 (InitDecl happy_var_1 happy_var_3
	)}}

happyReduce_34 = happySpecReduce_1  19# happyReduction_34
happyReduction_34 happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	happyIn25
		 ((:[]) happy_var_1
	)}

happyReduce_35 = happySpecReduce_3  19# happyReduction_35
happyReduction_35 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_3 of { happy_var_3 -> 
	happyIn25
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_36 = happySpecReduce_1  20# happyReduction_36
happyReduction_36 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn26
		 (InitExpr happy_var_1
	)}

happyReduce_37 = happySpecReduce_3  20# happyReduction_37
happyReduction_37 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut27 happy_x_2 of { happy_var_2 -> 
	happyIn26
		 (InitList happy_var_2
	)}

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

happyReduce_40 = happySpecReduce_3  22# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut31 happy_x_2 of { happy_var_2 -> 
	happyIn28
		 (ListS (reverse happy_var_2)
	)}

happyReduce_41 = happySpecReduce_1  22# happyReduction_41
happyReduction_41 happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 (DecS happy_var_1
	)}

happyReduce_42 = happySpecReduce_1  22# happyReduction_42
happyReduction_42 happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 (ExprS happy_var_1
	)}

happyReduce_43 = happySpecReduce_1  22# happyReduction_43
happyReduction_43 happy_x_1
	 =  case happyOut34 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 (IfS happy_var_1
	)}

happyReduce_44 = happySpecReduce_1  22# happyReduction_44
happyReduction_44 happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 (IterS happy_var_1
	)}

happyReduce_45 = happySpecReduce_1  22# happyReduction_45
happyReduction_45 happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 (JumpS happy_var_1
	)}

happyReduce_46 = happySpecReduce_1  23# happyReduction_46
happyReduction_46 happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn29
		 ((:[]) happy_var_1
	)}

happyReduce_47 = happySpecReduce_2  23# happyReduction_47
happyReduction_47 happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut29 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 ((:) happy_var_1 happy_var_2
	)}}

happyReduce_48 = happySpecReduce_1  24# happyReduction_48
happyReduction_48 happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn30
		 (SStm happy_var_1
	)}

happyReduce_49 = happySpecReduce_1  24# happyReduction_49
happyReduction_49 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn30
		 (SDec happy_var_1
	)}

happyReduce_50 = happySpecReduce_0  25# happyReduction_50
happyReduction_50  =  happyIn31
		 ([]
	)

happyReduce_51 = happySpecReduce_2  25# happyReduction_51
happyReduction_51 happy_x_2
	happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	case happyOut30 happy_x_2 of { happy_var_2 -> 
	happyIn31
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_52 = happySpecReduce_1  26# happyReduction_52
happyReduction_52 happy_x_1
	 =  happyIn32
		 (Sempty
	)

happyReduce_53 = happySpecReduce_2  26# happyReduction_53
happyReduction_53 happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (Sexpr happy_var_1
	)}

happyReduce_54 = happySpecReduce_1  27# happyReduction_54
happyReduction_54 happy_x_1
	 =  happyIn33
		 (Dempty
	)

happyReduce_55 = happySpecReduce_1  27# happyReduction_55
happyReduction_55 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn33
		 (Ddec happy_var_1
	)}

happyReduce_56 = happyReduce 5# 28# happyReduction_56
happyReduction_56 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut38 happy_x_3 of { happy_var_3 -> 
	case happyOut28 happy_x_5 of { happy_var_5 -> 
	happyIn34
		 (SIf happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_57 = happyReduce 7# 28# happyReduction_57
happyReduction_57 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut38 happy_x_3 of { happy_var_3 -> 
	case happyOut28 happy_x_5 of { happy_var_5 -> 
	case happyOut28 happy_x_7 of { happy_var_7 -> 
	happyIn34
		 (SIfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest}}}

happyReduce_58 = happyReduce 5# 29# happyReduction_58
happyReduction_58 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut38 happy_x_3 of { happy_var_3 -> 
	case happyOut28 happy_x_5 of { happy_var_5 -> 
	happyIn35
		 (SiterWhile happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_59 = happyReduce 7# 29# happyReduction_59
happyReduction_59 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut33 happy_x_3 of { happy_var_3 -> 
	case happyOut32 happy_x_4 of { happy_var_4 -> 
	case happyOut38 happy_x_5 of { happy_var_5 -> 
	case happyOut28 happy_x_7 of { happy_var_7 -> 
	happyIn35
		 (SiterFor happy_var_3 happy_var_4 happy_var_5 happy_var_7
	) `HappyStk` happyRest}}}}

happyReduce_60 = happySpecReduce_2  30# happyReduction_60
happyReduction_60 happy_x_2
	happy_x_1
	 =  happyIn36
		 (SjumpTwo
	)

happyReduce_61 = happySpecReduce_2  30# happyReduction_61
happyReduction_61 happy_x_2
	happy_x_1
	 =  happyIn36
		 (SjumpThree
	)

happyReduce_62 = happySpecReduce_2  30# happyReduction_62
happyReduction_62 happy_x_2
	happy_x_1
	 =  happyIn36
		 (SjumpFour
	)

happyReduce_63 = happySpecReduce_3  30# happyReduction_63
happyReduction_63 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn36
		 (SjumpFive happy_var_2
	)}

happyReduce_64 = happySpecReduce_0  31# happyReduction_64
happyReduction_64  =  happyIn37
		 ([]
	)

happyReduce_65 = happySpecReduce_1  31# happyReduction_65
happyReduction_65 happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn37
		 ((:[]) happy_var_1
	)}

happyReduce_66 = happySpecReduce_3  31# happyReduction_66
happyReduction_66 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	case happyOut37 happy_x_3 of { happy_var_3 -> 
	happyIn37
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_67 = happySpecReduce_3  32# happyReduction_67
happyReduction_67 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	case happyOut39 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (Ecomma happy_var_1 happy_var_3
	)}}

happyReduce_68 = happySpecReduce_1  32# happyReduction_68
happyReduction_68 happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	happyIn38
		 (happy_var_1
	)}

happyReduce_69 = happySpecReduce_3  33# happyReduction_69
happyReduction_69 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	case happyOut39 happy_x_3 of { happy_var_3 -> 
	happyIn39
		 (Eassign happy_var_1 happy_var_3
	)}}

happyReduce_70 = happySpecReduce_1  33# happyReduction_70
happyReduction_70 happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	happyIn39
		 (happy_var_1
	)}

happyReduce_71 = happyReduce 5# 34# happyReduction_71
happyReduction_71 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut41 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	case happyOut40 happy_x_5 of { happy_var_5 -> 
	happyIn40
		 (Econdition happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_72 = happySpecReduce_1  34# happyReduction_72
happyReduction_72 happy_x_1
	 =  case happyOut41 happy_x_1 of { happy_var_1 -> 
	happyIn40
		 (happy_var_1
	)}

happyReduce_73 = happySpecReduce_3  35# happyReduction_73
happyReduction_73 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut41 happy_x_1 of { happy_var_1 -> 
	case happyOut42 happy_x_3 of { happy_var_3 -> 
	happyIn41
		 (Elor happy_var_1 happy_var_3
	)}}

happyReduce_74 = happySpecReduce_1  35# happyReduction_74
happyReduction_74 happy_x_1
	 =  case happyOut42 happy_x_1 of { happy_var_1 -> 
	happyIn41
		 (happy_var_1
	)}

happyReduce_75 = happySpecReduce_3  36# happyReduction_75
happyReduction_75 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut42 happy_x_1 of { happy_var_1 -> 
	case happyOut43 happy_x_3 of { happy_var_3 -> 
	happyIn42
		 (Eland happy_var_1 happy_var_3
	)}}

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
		 (Eeq happy_var_1 happy_var_3
	)}}

happyReduce_78 = happySpecReduce_3  37# happyReduction_78
happyReduction_78 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut43 happy_x_1 of { happy_var_1 -> 
	case happyOut44 happy_x_3 of { happy_var_3 -> 
	happyIn43
		 (Eneq happy_var_1 happy_var_3
	)}}

happyReduce_79 = happySpecReduce_1  37# happyReduction_79
happyReduction_79 happy_x_1
	 =  case happyOut44 happy_x_1 of { happy_var_1 -> 
	happyIn43
		 (happy_var_1
	)}

happyReduce_80 = happySpecReduce_3  38# happyReduction_80
happyReduction_80 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut44 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn44
		 (Elthen happy_var_1 happy_var_3
	)}}

happyReduce_81 = happySpecReduce_3  38# happyReduction_81
happyReduction_81 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut44 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn44
		 (Egrthen happy_var_1 happy_var_3
	)}}

happyReduce_82 = happySpecReduce_3  38# happyReduction_82
happyReduction_82 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut44 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn44
		 (Ele happy_var_1 happy_var_3
	)}}

happyReduce_83 = happySpecReduce_3  38# happyReduction_83
happyReduction_83 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut44 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn44
		 (Ege happy_var_1 happy_var_3
	)}}

happyReduce_84 = happySpecReduce_1  38# happyReduction_84
happyReduction_84 happy_x_1
	 =  case happyOut45 happy_x_1 of { happy_var_1 -> 
	happyIn44
		 (happy_var_1
	)}

happyReduce_85 = happySpecReduce_3  39# happyReduction_85
happyReduction_85 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut45 happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_3 of { happy_var_3 -> 
	happyIn45
		 (Eplus happy_var_1 happy_var_3
	)}}

happyReduce_86 = happySpecReduce_3  39# happyReduction_86
happyReduction_86 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut45 happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_3 of { happy_var_3 -> 
	happyIn45
		 (Eminus happy_var_1 happy_var_3
	)}}

happyReduce_87 = happySpecReduce_1  39# happyReduction_87
happyReduction_87 happy_x_1
	 =  case happyOut46 happy_x_1 of { happy_var_1 -> 
	happyIn45
		 (happy_var_1
	)}

happyReduce_88 = happySpecReduce_3  40# happyReduction_88
happyReduction_88 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut46 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn46
		 (Etimes happy_var_1 happy_var_3
	)}}

happyReduce_89 = happySpecReduce_3  40# happyReduction_89
happyReduction_89 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut46 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn46
		 (Ediv happy_var_1 happy_var_3
	)}}

happyReduce_90 = happySpecReduce_3  40# happyReduction_90
happyReduction_90 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut46 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn46
		 (Emod happy_var_1 happy_var_3
	)}}

happyReduce_91 = happySpecReduce_1  40# happyReduction_91
happyReduction_91 happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	happyIn46
		 (happy_var_1
	)}

happyReduce_92 = happyReduce 4# 41# happyReduction_92
happyReduction_92 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut19 happy_x_2 of { happy_var_2 -> 
	case happyOut47 happy_x_4 of { happy_var_4 -> 
	happyIn47
		 (Etypeconv happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_93 = happySpecReduce_1  41# happyReduction_93
happyReduction_93 happy_x_1
	 =  case happyOut48 happy_x_1 of { happy_var_1 -> 
	happyIn47
		 (happy_var_1
	)}

happyReduce_94 = happySpecReduce_2  42# happyReduction_94
happyReduction_94 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_2 of { happy_var_2 -> 
	happyIn48
		 (Epreinc happy_var_2
	)}

happyReduce_95 = happySpecReduce_2  42# happyReduction_95
happyReduction_95 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_2 of { happy_var_2 -> 
	happyIn48
		 (Epredec happy_var_2
	)}

happyReduce_96 = happySpecReduce_2  42# happyReduction_96
happyReduction_96 happy_x_2
	happy_x_1
	 =  case happyOut54 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_2 of { happy_var_2 -> 
	happyIn48
		 (Epreop happy_var_1 happy_var_2
	)}}

happyReduce_97 = happySpecReduce_1  42# happyReduction_97
happyReduction_97 happy_x_1
	 =  case happyOut49 happy_x_1 of { happy_var_1 -> 
	happyIn48
		 (happy_var_1
	)}

happyReduce_98 = happyReduce 4# 43# happyReduction_98
happyReduction_98 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut6 happy_x_1 of { happy_var_1 -> 
	case happyOut53 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 (Efunk happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_99 = happyReduce 6# 43# happyReduction_99
happyReduction_99 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut6 happy_x_1 of { happy_var_1 -> 
	case happyOut6 happy_x_3 of { happy_var_3 -> 
	case happyOut53 happy_x_5 of { happy_var_5 -> 
	happyIn49
		 (EfunkNS happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_100 = happySpecReduce_2  43# happyReduction_100
happyReduction_100 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn49
		 (Epostinc happy_var_1
	)}

happyReduce_101 = happySpecReduce_2  43# happyReduction_101
happyReduction_101 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn49
		 (Epostdec happy_var_1
	)}

happyReduce_102 = happySpecReduce_1  43# happyReduction_102
happyReduction_102 happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	happyIn49
		 (happy_var_1
	)}

happyReduce_103 = happySpecReduce_1  44# happyReduction_103
happyReduction_103 happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	happyIn50
		 (Evar happy_var_1
	)}

happyReduce_104 = happySpecReduce_1  44# happyReduction_104
happyReduction_104 happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	happyIn50
		 (Econst happy_var_1
	)}

happyReduce_105 = happySpecReduce_3  44# happyReduction_105
happyReduction_105 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn50
		 (happy_var_2
	)}

happyReduce_106 = happySpecReduce_1  45# happyReduction_106
happyReduction_106 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn51
		 (Efloat happy_var_1
	)}

happyReduce_107 = happySpecReduce_1  45# happyReduction_107
happyReduction_107 happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	happyIn51
		 (Ecfloat happy_var_1
	)}

happyReduce_108 = happySpecReduce_1  45# happyReduction_108
happyReduction_108 happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	happyIn51
		 (Ebool happy_var_1
	)}

happyReduce_109 = happySpecReduce_1  45# happyReduction_109
happyReduction_109 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn51
		 (Eint happy_var_1
	)}

happyReduce_110 = happySpecReduce_1  46# happyReduction_110
happyReduction_110 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn52
		 (happy_var_1
	)}

happyReduce_111 = happySpecReduce_0  47# happyReduction_111
happyReduction_111  =  happyIn53
		 ([]
	)

happyReduce_112 = happySpecReduce_1  47# happyReduction_112
happyReduction_112 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn53
		 ((:[]) happy_var_1
	)}

happyReduce_113 = happySpecReduce_3  47# happyReduction_113
happyReduction_113 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	case happyOut53 happy_x_3 of { happy_var_3 -> 
	happyIn53
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_114 = happySpecReduce_1  48# happyReduction_114
happyReduction_114 happy_x_1
	 =  happyIn54
		 (Negative
	)

happyReduce_115 = happySpecReduce_1  48# happyReduction_115
happyReduction_115 happy_x_1
	 =  happyIn54
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
  happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (happyOut28 x))

pExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut38 x))

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
