module Update exposing (update)

import Message exposing (Msg(..))
import Model exposing (Model, generateRecipe, spiritGenerator)
import Random
import Types exposing (SpiritAddition)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GenerateRecipe ->
            ( generateRecipe, Random.generate NewSpirit spiritGenerator )

        NewSpirit newSpirit ->
            let
                newSpiritAddition =
                    SpiritAddition newSpirit model.spiritAddition.amount
            in
                ( { model | spiritAddition = newSpiritAddition }, Cmd.none )
