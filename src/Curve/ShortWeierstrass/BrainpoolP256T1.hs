module Curve.ShortWeierstrass.BrainpoolP256T1
  -- | Types
  ( Fp
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

import PrimeField (PrimeField)

import Curve.ShortWeierstrass (Point(..), SWCurve(..), SWPoint)

-------------------------------------------------------------------------------
-- Types
-------------------------------------------------------------------------------

-- | Brainpool-P256T1 curve
data BrainpoolP256T1

-- | Field of Brainpool-P256T1 curve
type Fp = PrimeField 0xa9fb57dba1eea9bc3e660a909d838d726e3bf623d52620282013481d1f6e5377

-- | Brainpool-P256T1 curve is a short Weierstrass curve
instance SWCurve BrainpoolP256T1 Fp where
  a_ = const _a
  {-# INLINE a_ #-}
  b_ = const _b
  {-# INLINE b_ #-}
  g_ = _g
  {-# INLINE g_ #-}

-- | Point of Brainpool-P256T1 curve
type P = SWPoint BrainpoolP256T1 Fp

-------------------------------------------------------------------------------
-- Parameters
-------------------------------------------------------------------------------

-- | Coefficient @A@ of Brainpool-P256T1 curve
_a :: Fp
_a = 0xa9fb57dba1eea9bc3e660a909d838d726e3bf623d52620282013481d1f6e5374
{-# INLINE _a #-}

-- | Coefficient @B@ of Brainpool-P256T1 curve
_b :: Fp
_b = 0x662c61c430d84ea4fe66a7733d0b76b7bf93ebc4af2f49256ae58101fee92b04
{-# INLINE _b #-}

-- | Generator of Brainpool-P256T1 curve
_g :: P
_g = A
     0xa3e8eb3cc1cfe7b7732213b23a656149afa142c47aafbc2b79a191562e1305f4
     0x2d996c823439c56d7f7b22e14644417e69bcb6de39d027001dabe8f35b25c9be
{-# INLINE _g #-}

-- | Cofactor of Brainpool-P256T1 curve
_h :: Integer
_h = 1
{-# INLINE _h #-}

-- | Order of Brainpool-P256T1 curve
_n :: Integer
_n = 0xa9fb57dba1eea9bc3e660a909d838d718c397aa3b561a6f7901e0e82974856a7
{-# INLINE _n #-}

-- | Characteristic of Brainpool-P256T1 curve
_p :: Integer
_p = 0xa9fb57dba1eea9bc3e660a909d838d726e3bf623d52620282013481d1f6e5377
{-# INLINE _p #-}
