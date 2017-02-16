module View exposing (view)

import NativeUi as Ui exposing (Node)
import NativeUi.Elements exposing (..)
import NativeUi.Events exposing (..)
import NativeUi.Style as Style
import Message exposing (Msg(..))
import Model exposing (Model)


view : Model -> Node Msg
view model =
    NativeUi.Elements.view
        [ Ui.style [ Style.flex 1, Style.justifyContent "center", Style.alignItems "center" ] ]
        [ text [] [ Ui.string model ]
        , touchableOpacity
            [ onPress GenerateRecipe ]
            [ text [] [ Ui.string "Make me a drink" ] ]
        ]
