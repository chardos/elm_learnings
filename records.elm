module Main exposing (..)

import Html exposing (..)

type alias Dog =
    { name: String
    , age: Int
    }

dog =
    { name = "Spock"
    , age = 3
    }

renderDog : Dog -> String
renderDog dog =
    dog.name ++ ", " ++ (toString dog.age)

main =
    div [] [ text <| dog.name
    , text <| renderDog dog
    ]
