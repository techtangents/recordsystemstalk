module PartialRecords where

data Shape =
    Circle    { radius :: Int }
  | Rectangle { width :: Int, height :: Int }
  deriving (Eq, Show)

c :: Shape
c = Circle { radius = 3 }

r :: Shape
r = Rectangle {width = 3, height = 4}

-- ok
c_radius = radius c

{-
> c_radius
3
-}


r_radius = case r of (Circle {radius=r}) -> r
                     (Rectangle {}) -> -1



r_radius' = radius r


r_radius'' = case r of (Circle ci) -> radius ci
                       (Rectangle rect) -> -1


{-
> r_radius'
*** Exception: No match in record selector radius
-}

{-
> c { radius = 4 }
Circle {radius = 4}

> r { radius = 5 }
*** Exception: PartialRecord.hs:22:9-24: Non-exhaustive patterns in record update
-}
