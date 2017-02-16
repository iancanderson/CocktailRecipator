module Model exposing (..)

import Types exposing (..)


type alias Model =
    Maybe Recipe



-- https://en.wikipedia.org/wiki/The_Fine_Art_of_Mixing_Drinks#Components_of_a_cocktail


ounces : Float -> Amount
ounces value =
    Amount value FluidOunce


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


generateRecipe : Model
generateRecipe =
    Just generateEmburyRecipe


initialModel : Model
initialModel =
    Nothing
