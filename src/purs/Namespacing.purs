module Namespacing where

data Pos2D =
  Pos2D {x::Number,y::Number}

data Pos3D =
  Pos3D {x::Number,y::Number,z::Number}

pos2a = Pos2D { x : 3, y : 4 }

pos2b = case pos2a of (Pos2D p) -> Pos2D (p {x = 3})

area :: Pos2D -> Number
area (Pos2D p) = p.x * p.y

{- compile error
area' : Pos2D -> Number
area' p = p.x * p.y
-}

area'' :: Pos2D -> Number
area'' (Pos2D {x = x, y = y}) = x * y

