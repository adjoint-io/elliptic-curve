module Curve.Weierstrass.BrainpoolP320R1
  ( Fp
  , P
  , _a
  , _b
  , _g
  , _h
  , _n
  , _p
  ) where

import Protolude

import PrimeField (PrimeField)

import Curve.Weierstrass (Point(..), WCurve(..), WPoint)

-------------------------------------------------------------------------------
-- Types
-------------------------------------------------------------------------------

-- | Brainpool-P320R1 curve
data BrainpoolP320R1

-- | Field of Brainpool-P320R1 curve
type Fp = PrimeField 0xd35e472036bc4fb7e13c785ed201e065f98fcfa6f6f40def4f92b9ec7893ec28fcd412b1f1b32e27

-- | Brainpool-P320R1 curve is a Weierstrass curve
instance WCurve BrainpoolP320R1 Fp where
  a_ = const _a
  {-# INLINE a_ #-}
  b_ = const _b
  {-# INLINE b_ #-}
  g_ = _g
  {-# INLINE g_ #-}

-- | Point of Brainpool-P320R1 curve
type P = WPoint BrainpoolP320R1 Fp

-------------------------------------------------------------------------------
-- Parameters
-------------------------------------------------------------------------------

-- | Coefficient @A@ of Brainpool-P320R1 curve
_a :: Fp
_a = 0x3ee30b568fbab0f883ccebd46d3f3bb8a2a73513f5eb79da66190eb085ffa9f492f375a97d860eb4
{-# INLINE _a #-}

-- | Coefficient @B@ of Brainpool-P320R1 curve
_b :: Fp
_b = 0x520883949dfdbc42d3ad198640688a6fe13f41349554b49acc31dccd884539816f5eb4ac8fb1f1a6
{-# INLINE _b #-}

-- | Generator of Brainpool-P320R1 curve
_g :: P
_g = A
     0x43bd7e9afb53d8b85289bcc48ee5bfe6f20137d10a087eb6e7871e2a10a599c710af8d0d39e20611
     0x14fdd05545ec1cc8ab4093247f77275e0743ffed117182eaa9c77877aaac6ac7d35245d1692e8ee1
{-# INLINE _g #-}

-- | Cofactor of Brainpool-P320R1 curve
_h :: Integer
_h = 1
{-# INLINE _h #-}

-- | Order of Brainpool-P320R1 curve
_n :: Integer
_n = 0xd35e472036bc4fb7e13c785ed201e065f98fcfa5b68f12a32d482ec7ee8658e98691555b44c59311
{-# INLINE _n #-}

-- | Characteristic of Brainpool-P320R1 curve
_p :: Integer
_p = 0xd35e472036bc4fb7e13c785ed201e065f98fcfa6f6f40def4f92b9ec7893ec28fcd412b1f1b32e27
{-# INLINE _p #-}
