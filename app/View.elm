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


recipeView : Maybe Recipe -> Node Msg
recipeView maybeRecipe =
    case maybeRecipe of
        Nothing ->
            NativeUi.Elements.text [] [ Ui.string "No recipe generated yet" ]

        Just recipe ->
            NativeUi.Elements.view [] (List.map additionView recipe.additions)


additionView : Addition -> Node Msg
additionView { ingredient, amount } =
    NativeUi.Elements.view
        []
        [ amountView amount
        , text [] [ Ui.string ingredient ]
        ]


amountView : Amount -> Node Msg
amountView { value, unit } =
    NativeUi.Elements.view
        []
        [ text [] [ Ui.string <| toString value ]
        , text [] [ Ui.string <| toString unit ]
        ]
