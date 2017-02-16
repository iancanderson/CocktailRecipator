module Main exposing (..)

import NativeUi exposing (Node)
import NativeUi.Elements as Elements
import NativeUi.Style as Style
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
        [ NativeUi.style [ Style.flex 1, Style.justifyContent "center", Style.alignItems "center" ] ]
        [ Elements.text [] [ NativeUi.string model ] ]


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
