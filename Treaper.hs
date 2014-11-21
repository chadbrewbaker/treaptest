{-# LANGUAGE ForeignFunctionInterface #-}
import Foreign
import Foreign.C.Types
import Criterion.Main

foreign import ccall "trp_criterion.h foobar"
     cfoo :: CInt -> CInt

treap :: Int -> Int
treap x = fromIntegral (cfoo (fromIntegral x))




-- Our benchmark harness.
main = defaultMain [
  bgroup "treap" [ bench "1"  $ whnf treap 1
               , bench "5"  $ whnf treap 5
               , bench "9"  $ whnf treap 9
               , bench "11" $ whnf treap 11
               ]
  ]