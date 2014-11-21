{-# LANGUAGE ForeignFunctionInterface #-}
import Foreign
import Foreign.C.Types
import Criterion.Main

foreign import ccall "math.h sin"
     c_sin :: CDouble -> CDouble

treap :: Double -> Double
treap x = realToFrac (c_sin (realToFrac x))


-- The function we're benchmarking.
treap m | m < 0     = error "negative!"
      | otherwise = go m
  where
    go 0 = 0
    go 1 = 1
    go n = go (n-1) + go (n-2)

-- Our benchmark harness.
main = defaultMain [
  bgroup "treap" [ bench "1"  $ whnf treap 1.0
               , bench "5"  $ whnf treap 5.0
               , bench "9"  $ whnf treap 9.0
               , bench "11" $ whnf treap 11.0
               ]
  ]