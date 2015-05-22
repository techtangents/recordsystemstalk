module PartialRecords where

data Shape
  = Circle    { radius :: Number }
  | Rectangle { width :: Number, height :: Number }


c :: Shape
c = Circle { radius : 3 }

r :: Shape
r = Rectangle {width : 3, height : 4}

-- ok
c_radius = case c of (Circle c') -> c'.radius
                     (Rectangle r') -> 0


r_radius = case r of (Circle {radius=rad}) -> rad
                     (Rectangle {}) -> -1


r_radius' = case r of (Circle c) -> c.radius
                      (Rectangle r') -> -1


-- compile error
-- r_radius = case r of (Rectangle r') -> r'.radius

{-
> c_radius
3

> radius r
*** Exception: No match in record selector radius

> c { radius = 4 }
Circle {radius = 4}

> r { radius = 5 }
*** Exception: PartialRecord.hs:22:9-24: Non-exhaustive patterns in record update
-}
