module Main exposing (..)

import NativeUi
import Message exposing (Msg)


type alias Model =
    String


init : ( Model, Cmd Msg )
init =
    ( "Initial Model"
    , Cmd.none
    )


view : Model -> Node Msg
view model =
    Elements.view
        []
        [ text [] [ Ui.string model ] ]


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
