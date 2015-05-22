module Extensible where

bob : {name:String}
bob = {name="Bob"}

bob' : {name:String,age:number}
bob' = {bob | age=33}

bob'' : {name:String}
bob'' = {bob' - age}

{-

> bob  = {name="bob"}
{ name = "bob" } : { name : String }

> bob' = {bob | age=33}
{ name = "bob", age = 33 } : { name : String, age : number }

> bob'' = {bob' - age}
{ name = "bob" } : { name : String }

  -}
