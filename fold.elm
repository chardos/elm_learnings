module Main exposing (..)
import Html exposing (..)
import List


nums = [1,2,5,4,6]

sum = List.foldl
    (\a b ->
        a * b
    ) 1 nums

sum2 = List.foldl
    (\a b ->
        Debug.log(toString <| a*b)
        a * b
    ) 0 nums


main =
    text <| toString <| sum2
