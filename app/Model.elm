module Model exposing (..)

import Types exposing (..)
import Random


type alias Model =
    Recipe



-- https://en.wikipedia.org/wiki/The_Fine_Art_of_Mixing_Drinks#Components_of_a_cocktail


ounces : Float -> Amount
ounces value =
    Amount value FluidOunce


spiritFromInt : Int -> Spirit
spiritFromInt int =
    case int of
        1 ->
            Gin

        2 ->
            Rum

        _ ->
            Whiskey


spiritGenerator : Random.Generator Spirit
spiritGenerator =
    Random.map spiritFromInt (Random.int 1 3)


generateEmburyRecipe : Recipe
generateEmburyRecipe =
    let
        spiritAddition =
            SpiritAddition Whiskey <| ounces 2.0

        modifyingAgentAddition =
            ModifyingAgentAddition SweetVermouth <| ounces 0.5

        specialFlavorAddition =
            SpecialFlavorAddition AngosturaBitters <| ounces 0.1
    in
        Recipe spiritAddition modifyingAgentAddition specialFlavorAddition


manhattan : Recipe
manhattan =
    let
        spiritAddition =
            SpiritAddition Whiskey <| ounces 2.0

        modifyingAgentAddition =
            ModifyingAgentAddition SweetVermouth <| ounces 0.5

        specialFlavorAddition =
            SpecialFlavorAddition AngosturaBitters <| ounces 0.1
    in
        Recipe spiritAddition modifyingAgentAddition specialFlavorAddition


generateRecipe : Model
generateRecipe =
    generateEmburyRecipe


initialModel : Model
initialModel =
    manhattan
