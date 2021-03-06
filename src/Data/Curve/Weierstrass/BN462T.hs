module Data.Curve.Weierstrass.BN462T
  ( module Data.Curve.Weierstrass
  , Point(..)
  -- * BN462 curve
  , module Data.Curve.Weierstrass.BN462T
  ) where

import Protolude

import Data.Field.Galois
import GHC.Natural (Natural)

import Data.Curve.Weierstrass
import Data.Curve.Weierstrass.BN462 (BN462, Fq, Fr)

-------------------------------------------------------------------------------
-- Types
-------------------------------------------------------------------------------

-- | Field of points of BN462 curve over @Fq2@.
type Fq2 = Extension U Fq
data U
instance IrreducibleMonic U Fq where
  poly _ = [1, 0, 1]
  {-# INLINABLE poly #-}

-- BN462 curve is a Weierstrass curve.
instance Curve 'Weierstrass c BN462 Fq2 Fr => WCurve c BN462 Fq2 Fr where
  a_ = const _a
  {-# INLINABLE a_ #-}
  b_ = const _b
  {-# INLINABLE b_ #-}
  h_ = const _h
  {-# INLINABLE h_ #-}
  q_ = const _q
  {-# INLINABLE q_ #-}
  r_ = const _r
  {-# INLINABLE r_ #-}

-- | Affine BN462 curve point.
type PA = WAPoint BN462 Fq2 Fr

-- Affine BN462 curve is a Weierstrass affine curve.
instance WACurve BN462 Fq2 Fr where
  gA_ = gA
  {-# INLINABLE gA_ #-}

-- | Jacobian BN462 point.
type PJ = WJPoint BN462 Fq2 Fr

-- Jacobian BN462 curve is a Weierstrass Jacobian curve.
instance WJCurve BN462 Fq2 Fr where
  gJ_ = gJ
  {-# INLINABLE gJ_ #-}

-- | Projective BN462 point.
type PP = WPPoint BN462 Fq2 Fr

-- Projective BN462 curve is a Weierstrass projective curve.
instance WPCurve BN462 Fq2 Fr where
  gP_ = gP
  {-# INLINABLE gP_ #-}

-------------------------------------------------------------------------------
-- Parameters
-------------------------------------------------------------------------------

-- | Coefficient @A@ of BN462 curve.
_a :: Fq2
_a = toE' [
          ]
{-# INLINABLE _a #-}

-- | Coefficient @B@ of BN462 curve.
_b :: Fq2
_b = toE' [ 0x2
          , 0x240480360120023ffffffffff6ff0cf6b7d9bfca0000000000d812908f41c8020ffffffffff6ff66fc6ff687f640000000002401b00840138012
          ]
{-# INLINABLE _b #-}

-- | Cofactor of BN462 curve.
_h :: Natural
_h = 0x240480360120023ffffffffff6ff0cf6b7d9bfca0000000000d812908fa1ce0227fffffffff6ff66fc63f5f7f4c0000000002401b008a0168019
{-# INLINABLE _h #-}

-- | Characteristic of BN462 curve.
_q :: Natural
_q = 0x240480360120023ffffffffff6ff0cf6b7d9bfca0000000000d812908f41c8020ffffffffff6ff66fc6ff687f640000000002401b00840138013
{-# INLINABLE _q #-}

-- | Order of BN462 curve.
_r :: Natural
_r = 0x240480360120023ffffffffff6ff0cf6b7d9bfca0000000000d812908ee1c201f7fffffffff6ff66fc7bf717f7c0000000002401b007e010800d
{-# INLINABLE _r #-}

-- | Coordinate @X@ of BN462 curve.
_x :: Fq2
_x = toE' [ 0x257ccc85b58dda0dfb38e3a8cbdc5482e0337e7c1cd96ed61c913820408208f9ad2699bad92e0032ae1f0aa6a8b48807695468e3d934ae1e4df
          , 0x1d2e4343e8599102af8edca849566ba3c98e2a354730cbed9176884058b18134dd86bae555b783718f50af8b59bf7e850e9b73108ba6aa8cd283
          ]
{-# INLINABLE _x #-}

-- | Coordinate @Y@ of BN462 curve.
_y :: Fq2
_y = toE' [ 0xa0650439da22c1979517427a20809eca035634706e23c3fa7a6bb42fe810f1399a1f41c9ddae32e03695a140e7b11d7c3376e5b68df0db7154e
          , 0x73ef0cbd438cbe0172c8ae37306324d44d5e6b0c69ac57b393f1ab370fd725cc647692444a04ef87387aa68d53743493b9eba14cc552ca2a93a
          ]
{-# INLINABLE _y #-}

-- | Generator of affine BN462 curve.
gA :: PA
gA = A _x _y
{-# INLINABLE gA #-}

-- | Generator of Jacobian BN462 curve.
gJ :: PJ
gJ = J _x _y 1
{-# INLINABLE gJ #-}

-- | Generator of projective BN462 curve.
gP :: PP
gP = P _x _y 1
{-# INLINABLE gP #-}
