data Pos2D = Pos2D { x :: Int, y :: Int }
data Pos3D = Pos3D { x :: Int, y :: Int, z :: Int }

{-

Namespacing.hs:2:22:
    Multiple declarations of ‘x’
    Declared at: Namespacing.hs:1:22
                 Namespacing.hs:2:22

Namespacing.hs:2:32:
    Multiple declarations of ‘y’
    Declared at: Namespacing.hs:1:32
                 Namespacing.hs:2:32

-}
