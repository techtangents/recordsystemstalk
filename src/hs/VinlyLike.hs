{-# LANGUAGE DataKinds, KindSignatures, TypeOperators, GADTs, MultiParamTypeClasses #-}

import GHC.TypeLits

-- (c) Jon Sterling

data (s :: Symbol) ::: (t :: *) = Field

-- '[] means the list type

data Rec :: [*] -> * where
  RNil :: Rec '[]
  (:&) :: !t -> !(Rec rs) -> Rec ((s ::: t) ': rs)

class s ∈ (rs :: [*])

