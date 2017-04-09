module Main exposing (..)
import Html exposing (..)
import List

num = 23

foo = case num of
    0 -> "HEY"
    1 -> "YO"
    _ -> "BRO"

main =
    text foo
