module Main exposing (..)
import Html exposing (..)
import List


nums = [1,2,5,4,6]
sum = List.foldl
    (\a b ->
        a * b
    ) 1 nums


main =
    text <| toString <|sum
