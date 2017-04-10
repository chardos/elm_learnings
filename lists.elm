module Main exposing (..)
import Html exposing (..)
import List
import Maybe

type alias Person =
    { name: String
    , age: Int
    }

people = [
    { name = "Legolas", age = 2931 }
    , {name = "Gimli", age = 129 }
    ]

names : List Person -> List String
names peeps = List.map (\peep -> peep.name) peeps

findPerson : String -> List Person -> Maybe Person
findPerson name peeps = List.foldl
    (\a b -> case b of
        Just _ -> b
        Nothing -> if a.name == name then
            Just a
            else Nothing
    ) Nothing peeps


main =
    text <| toString <| findPerson "Legolas" people
