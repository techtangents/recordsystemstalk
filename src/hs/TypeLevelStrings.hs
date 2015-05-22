{-# LANGUAGE DataKinds, KindSignatures, MultiParamTypeClasses, FunctionalDependencies, FlexibleInstances #-}

import GHC.TypeLits

--data Record1 (name1::Symbol) type1 = Record1 type1
--data Record2 (name1::Symbol) type1 (name2::Symbol) type2 = Record2 type1 type2

--type Person = Record2 "firstName" String "lastName" String

--bob :: Person
--bob = Record2 "bob" "cuttey"


--class Has r a l b | a l -> b where
--  from :: a -> Label l -> b


--{-
--Kind  | *           | Symbol
--Type  | String      | "firstName"
--Value | "firstName" | -

---}


--instance Has  Record1 (name1::Symbol)


--data Label (l :: Symbol) = Label

--class Has a l b | a l -> b where
--  from :: a -> (Label l) -> b

--data Record1 name1 a = Record1 (Label name1) a

--get1 :: Record1 l a -> a
--get1 (Record1 Label a) = a



--data Record2 (name1::Symbol) type1 (name2::Symbol) type2 = Record2 type1 type2

--get1' :: Record2 name1 type1 name2 type2 -> type1
--get1' (Record2 a _) = a

--get2' :: Record2 name1 type1 name2 type2 -> type2
--get2' (Record2 _ b) = b


--instance Has (Record1 name1 type1) (Label name1) type1 where
--  from = undefined


--data Point = Point Int Int deriving Show

--instance Has Point "x" Int where from (Point x _) _ = x
--instance Has Point "y" Int where from (Point _ y) _ = y

--example = from (Point 1 2) (Get :: Label "x")
