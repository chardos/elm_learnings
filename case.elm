module Main exposing (..)
import Html exposing (..)
import List

num = Just 23

foo = case num of
    Just 0 -> "Hey"
    Just 1 -> "YO"
    Just _ -> "Anything else"
    Nothing -> "NUTTIN"

main =
    text foo
