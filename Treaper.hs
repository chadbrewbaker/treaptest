{-# LANGUAGE ForeignFunctionInterface #-}
import Foreign
import Foreign.C.Types
import Criterion.Main

foreign import ccall unsafe "trp_criterion foobar"
     cfoo :: CInt -> CInt

treap :: Int -> Int
treap x = fromIntegral (cfoo (fromIntegral x))




-- Our benchmark harness.
main = defaultMain [
  bgroup "treap" [ bench "1"  $ whnf treap 1
               ]
  ]