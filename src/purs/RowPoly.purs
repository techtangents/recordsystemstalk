module RowPoly where

type House = {color::String,rooms::Number}
type Car = {color::String,model::String}

myhouse :: House
myhouse = {color:"pink",rooms:3}

mycar :: Car
mycar = {color:"red",model:"Corolla"}

getColor :: forall r t. {color::t | r} -> t
getColor x = x.color

lighten :: forall r. {color::String | r} -> {color::String | r}
lighten x = x { color = "light " ++ x.color }
