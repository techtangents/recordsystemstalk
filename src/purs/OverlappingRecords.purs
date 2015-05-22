module OverlappingRecords where

data Key =
    StringKey  { key :: String }
  | NumericKey { key :: Number }
