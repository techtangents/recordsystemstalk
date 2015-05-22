module OverlappingRecords where

data Key =
    StringKey  { key :: String }
  | NumericKey { key :: Int }

{-

Compile error:

OverlappingRecords.hs:1:1:
    Constructors StringKey and NumericKey
    give different types for field
    ‘key’
    In the data declaration for ‘Key’

-}

