module Main exposing (..)

import Html exposing (text)

ask thing place = "Is there a " ++ thing ++ " in the " ++ place ++ "?"

main =
    text <| ask "rabbit" "garden"
