module Curve.Binary.SECT163R2
  ( BCurve(..)
  , BPoint
  , BACurve(..)
  , BAPoint
  , BPCurve(..)
  , BPPoint
  , Curve(..)
  , F2m
  , Fr
  , Group(..)
  , PA
  , PP
  , _a
  , _b
  , _h
  , _p
  , _r
  , _x
  , _y
  , gA
  , gP
  , pattern A
  , pattern P
  ) where

import Protolude

import BinaryField
import PrimeField

import Curve.Binary

-------------------------------------------------------------------------------
-- Types
-------------------------------------------------------------------------------

-- | SECT163R2 curve.
data SECT163R2

-- | Field of points of SECT163R2 curve.
type F2m = BinaryField 0x800000000000000000000000000000000000000c9

-- | Field of coefficients of SECT163R2 curve.
type Fr = PrimeField 0x40000000000000000000292fe77e70c12a4234c33

-- | SECT163R2 curve is a binary curve.
instance Curve 'Binary c SECT163R2 F2m => BCurve c SECT163R2 F2m where
  a_ = const _a
  {-# INLINE a_ #-}
  b_ = const _b
  {-# INLINE b_ #-}
  h_ = const _h
  {-# INLINE h_ #-}
  p_ = const _p
  {-# INLINE p_ #-}
  r_ = const _r
  {-# INLINE r_ #-}
  x_ = const _x
  {-# INLINE x_ #-}
  y_ = const _y
  {-# INLINE y_ #-}

-- | Affine SECT163R2 curve point.
type PA = BAPoint SECT163R2 F2m

-- | Affine SECT163R2 curve is a binary affine curve.
instance BACurve SECT163R2 F2m where
  gA_ = gA
  {-# INLINE gA_ #-}

-- | Projective SECT163R2 point.
type PP = BPPoint SECT163R2 F2m

-- | Projective SECT163R2 curve is a binary projective curve.
instance BPCurve SECT163R2 F2m where
  gP_ = gP
  {-# INLINE gP_ #-}

-------------------------------------------------------------------------------
-- Parameters
-------------------------------------------------------------------------------

-- | Coefficient @A@ of SECT163R2 curve.
_a :: F2m
_a = 0x1
{-# INLINE _a #-}

-- | Coefficient @B@ of SECT163R2 curve.
_b :: F2m
_b = 0x20a601907b8c953ca1481eb10512f78744a3205fd
{-# INLINE _b #-}

-- | Cofactor of SECT163R2 curve.
_h :: Integer
_h = 0x2
{-# INLINE _h #-}

-- | Polynomial of SECT163R2 curve.
_p :: Integer
_p = 0x800000000000000000000000000000000000000c9
{-# INLINE _p #-}

-- | Order of SECT163R2 curve.
_r :: Integer
_r = 0x40000000000000000000292fe77e70c12a4234c33
{-# INLINE _r #-}

-- | Coordinate @X@ of SECT163R2 curve.
_x :: F2m
_x = 0x3f0eba16286a2d57ea0991168d4994637e8343e36
{-# INLINE _x #-}

-- | Coordinate @Y@ of SECT163R2 curve.
_y :: F2m
_y = 0xd51fbc6c71a0094fa2cdd545b11c5c0c797324f1
{-# INLINE _y #-}

-- | Generator of affine SECT163R2 curve.
gA :: PA
gA = fromMaybe (panic "not well-defined.") (point _x _y)
{-# INLINE gA #-}

-- | Generator of projective SECT163R2 curve.
gP :: PP
gP = fromMaybe (panic "not well-defined.") (point _x _y)
{-# INLINE gP #-}
