module View exposing (view)

import NativeUi exposing (Node)
import NativeUi.Elements as Elements
import NativeUi.Style as Style
import Message exposing (Msg)
import Model exposing (Model)


view : Model -> Node Msg
view model =
    Elements.view
        [ NativeUi.style [ Style.flex 1, Style.justifyContent "center", Style.alignItems "center" ] ]
        [ Elements.text [] [ NativeUi.string model ] ]
