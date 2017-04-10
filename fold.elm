module Main exposing (..)
import Html exposing (..)
import List


nums = [1,2,5,4,6]
words = ["mate", "bro", "bruv"]

sum = List.foldl
    (\a b ->
        a * b
    ) 1 nums

sum2 = List.foldl
    (\a b ->
        let
            logA = Debug.log "a" a
            logB = Debug.log "b" b
        in
            a
    ) "guv" words


main =
    text <| toString <| sum2
