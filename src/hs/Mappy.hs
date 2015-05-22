import Data.Map

data Person =
  Person {firstName::String, lastName::String}

bob :: Person
bob =
  Person {firstName="bob", lastName="cuttey"}

bobFirstName = firstName bob
bobLastName = lastName bob


bob' :: Map String String
bob' =
  fromList [("firstName", "bob"), ("lastName", "cuttey")]

bobFirstName' = bob' ! "firstName"
bobLastName' = bob' ! "lastName"

