module Main exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)


numbers = [1,2,3,4,5]

printThings : thing -> Html msg  -- thing could be anything, cos its lowercase
printThings int = ul [] [text <| toString int]

fruits = [{name = "Orange"}, {name = "Banana"}]

main =
    ul [] (List.map printThings numbers)
