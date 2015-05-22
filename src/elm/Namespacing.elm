  type Pos2D = Pos2D { x : Int, y : Int }
  type Pos3D = Pos3D { x : Int, y : Int, z : Int }

  pos2a = Pos2D { x = 3, y = 4 }

  area : Pos2D -> Int
  area (Pos2D p) = p.x * p.y

  {- compile error
  area' : Pos2D -> Int
  area' p = p.x * p.y
  -}

  area'' : Pos2D -> Int
  area'' (Pos2D {x,y}) = x * y

