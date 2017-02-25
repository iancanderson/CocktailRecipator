module View exposing (view)

import NativeUi as Ui exposing (Node)
import NativeUi.Elements exposing (..)
import NativeUi.Events exposing (..)
import NativeUi.Style as Style
import Message exposing (Msg(..))
import Model exposing (Model)
import Types exposing (..)


view : Model -> Node Msg
view model =
    NativeUi.Elements.view
        [ Ui.style [ Style.flex 1, Style.justifyContent "center", Style.alignItems "center" ] ]
        [ recipeView model
        , touchableOpacity
            [ onPress GenerateRecipe ]
            [ text [] [ Ui.string "Make me a drink" ] ]
        ]


recipeView : Recipe -> Node Msg
recipeView recipe =
    NativeUi.Elements.view
        []
        [ spiritAdditionView recipe.spiritAddition
        , modifyingAgentAdditionView recipe.modifyingAgentAddition
        , specialFlavorAdditionView recipe.specialFlavorAddition
        ]


spiritAdditionView : SpiritAddition -> Node Msg
spiritAdditionView { spirit, amount } =
    NativeUi.Elements.view
        []
        [ amountView amount
        , text [] [ Ui.string <| toString spirit ]
        ]


modifyingAgentAdditionView : ModifyingAgentAddition -> Node Msg
modifyingAgentAdditionView { modifyingAgent, amount } =
    NativeUi.Elements.view
        []
        [ amountView amount
        , text [] [ Ui.string <| toString modifyingAgent ]
        ]


specialFlavorAdditionView : SpecialFlavorAddition -> Node Msg
specialFlavorAdditionView { specialFlavor, amount } =
    NativeUi.Elements.view
        []
        [ amountView amount
        , text [] [ Ui.string <| toString specialFlavor ]
        ]


amountView : Amount -> Node Msg
amountView { value, unit } =
    NativeUi.Elements.view
        []
        [ text [] [ Ui.string <| toString value ]
        , text [] [ Ui.string <| toString unit ]
        ]
