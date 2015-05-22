{-# LANGUAGE DataKinds, KindSignatures, TypeOperators, GADTs, MultiParamTypeClasses #-}

import Data.Vinyl

get key rec = getField (rget key rec)

firstName = SField :: SField '("firstName", String)
lastName = SField :: SField '("lastName", Int)

bob = firstName =: "bob" <+> lastName =: 3

bobFirstName = get firstName bob
bobLastName = get lastName bob

dog = firstName =: "doggie"

dogFirstName = get firstName dog
