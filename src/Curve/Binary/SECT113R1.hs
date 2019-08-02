module Curve.Binary.SECT113R1
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

-- | SECT113R1 curve.
data SECT113R1

-- | Field of points of SECT113R1 curve.
type F2m = BinaryField 0x20000000000000000000000000201

-- | Field of coefficients of SECT113R1 curve.
type Fr = PrimeField 0x100000000000000d9ccec8a39e56f

-- | SECT113R1 curve is a binary curve.
instance Curve 'Binary c SECT113R1 F2m => BCurve c SECT113R1 F2m where
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

-- | Affine SECT113R1 curve point.
type PA = BAPoint SECT113R1 F2m

-- | Affine SECT113R1 curve is a binary affine curve.
instance BACurve SECT113R1 F2m where
  gA_ = gA
  {-# INLINE gA_ #-}

-- | Projective SECT113R1 point.
type PP = BPPoint SECT113R1 F2m

-- | Projective SECT113R1 curve is a binary projective curve.
instance BPCurve SECT113R1 F2m where
  gP_ = gP
  {-# INLINE gP_ #-}

-------------------------------------------------------------------------------
-- Parameters
-------------------------------------------------------------------------------

-- | Coefficient @A@ of SECT113R1 curve.
_a :: F2m
_a = 0x3088250ca6e7c7fe649ce85820f7
{-# INLINE _a #-}

-- | Coefficient @B@ of SECT113R1 curve.
_b :: F2m
_b = 0xe8bee4d3e2260744188be0e9c723
{-# INLINE _b #-}

-- | Cofactor of SECT113R1 curve.
_h :: Integer
_h = 0x2
{-# INLINE _h #-}

-- | Polynomial of SECT113R1 curve.
_p :: Integer
_p = 0x20000000000000000000000000201
{-# INLINE _p #-}

-- | Order of SECT113R1 curve.
_r :: Integer
_r = 0x100000000000000d9ccec8a39e56f
{-# INLINE _r #-}

-- | Coordinate @X@ of SECT113R1 curve.
_x :: F2m
_x = 0x9d73616f35f4ab1407d73562c10f
{-# INLINE _x #-}

-- | Coordinate @Y@ of SECT113R1 curve.
_y :: F2m
_y = 0xa52830277958ee84d1315ed31886
{-# INLINE _y #-}

-- | Generator of affine SECT113R1 curve.
gA :: PA
gA = fromMaybe (panic "not well-defined.") (point _x _y)
{-# INLINE gA #-}

-- | Generator of projective SECT113R1 curve.
gP :: PP
gP = fromMaybe (panic "not well-defined.") (point _x _y)
{-# INLINE gP #-}
