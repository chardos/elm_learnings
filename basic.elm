module Main exposing (..)

import Html exposing (..)

politely: String -> String
politely phrase =
    "Excuse me, " ++ phrase

askPolitelyAboutFish : String -> String
askPolitelyAboutFish = politely << (ask "fish") -- << is compose

ask : String -> String -> String
ask thing place = "Is there a " ++ thing ++ " in the " ++ place ++ "?"

main =
    div []
    [ div [] [text <| askPolitelyAboutFish "water"]
    , div [] [text
                <| politely
                <| ask "snake" "Tree"
             ]
    ]
