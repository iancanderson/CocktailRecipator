module Model exposing (..)

import Types exposing (..)


type alias Model =
    Maybe Recipe


generateRecipe : Model
generateRecipe =
    let
        amount =
            Amount 2.0 FluidOunce

        additions =
            [ Addition "Rye Whiskey" amount
            ]
    in
        Just <| Recipe additions


initialModel : Model
initialModel =
    Nothing
