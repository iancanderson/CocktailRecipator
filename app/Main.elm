module Main exposing (..)

import NativeUi
import Message exposing (Msg(..))
import Model exposing (Model, generateRecipe, initialModel)
import View exposing (view)


init : ( Model, Cmd Msg )
init =
    ( initialModel
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GenerateRecipe ->
            ( generateRecipe, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


main : Program Never Model Msg
main =
    NativeUi.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
