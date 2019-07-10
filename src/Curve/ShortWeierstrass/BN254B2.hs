module Curve.ShortWeierstrass.BN254B2
  -- | Types
  ( Fp2
  , P
  -- | Parameters
  , _a
  , _b
  , _g
  , _h
  , _n
  , _p
  ) where

import Protolude

import ExtensionField (ExtensionField, IrreducibleMonic(..), fromList, x)

import Curve.ShortWeierstrass (Point(..), SWCurve(..), SWPoint)
import Curve.ShortWeierstrass.BN254B (Fp)

-------------------------------------------------------------------------------
-- Types
-------------------------------------------------------------------------------

-- | BN254B2 curve
data BN254B2

-- | Field of BN254B2 curve
data PolynomialU
instance IrreducibleMonic Fp PolynomialU where
  split _ = x ^ (2 :: Int) + 1
type Fp2 = ExtensionField Fp PolynomialU

-- | BN254B2 curve is a short Weierstrass curve
instance SWCurve BN254B2 Fp2 where
  a_ = const _a
  {-# INLINE a_ #-}
  b_ = const _b
  {-# INLINE b_ #-}
  g_ = _g
  {-# INLINE g_ #-}

-- | Point of BN254B2 curve
type P = SWPoint BN254B2 Fp2

-------------------------------------------------------------------------------
-- Parameters
-------------------------------------------------------------------------------

-- | Coefficient @A@ of BN254B2 curve
_a :: Fp2
_a = 0
{-# INLINE _a #-}

-- | Coefficient @B@ of BN254B2 curve
_b :: Fp2
_b = fromList [1, -1]
{-# INLINE _b #-}

-- | Generator of BN254B2 curve
_g :: P
_g = A
  ( fromList
   [ 0x061a10bb519eb62feb8d8c7e8c61edb6a4648bbb4898bf0d91ee4224c803fb2b
   , 0x0516aaf9ba737833310aa78c5982aa5b1f4d746bae3784b70d8c34c1e7d54cf3
   ]
  )
  ( fromList
   [ 0x021897a06baf93439a90e096698c822329bd0ae6bdbe09bd19f0e07891cd2b9a
   , 0x0ebb2b0e7c8b15268f6d4456f5f38d37b09006ffd739c9578a2d1aec6b3ace9b
   ]
  )
{-# INLINE _g #-}

-- | Cofactor of BN254B2 curve
_h :: Integer
_h = 0x2523648240000001ba344d8000000008c2a2800000000016ad00000000000019
{-# INLINE _h #-}

-- | Order of BN254B2 curve
_n :: Integer
_n = 0x2523648240000001ba344d8000000007ff9f800000000010a10000000000000d
{-# INLINE _n #-}

-- | Characteristic of BN254B2 curve
_p :: Integer
_p = 0x2523648240000001ba344d80000000086121000000000013a700000000000013
{-# INLINE _p #-}
