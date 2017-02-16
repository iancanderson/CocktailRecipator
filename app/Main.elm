module Main exposing (..)

import NativeUi
import Message exposing (Msg)
import Model exposing (Model)
import View exposing (view)


init : ( Model, Cmd Msg )
init =
    ( "Initial Model"
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


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
