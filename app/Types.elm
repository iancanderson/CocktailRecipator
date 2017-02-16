module Types exposing (..)


type alias Recipe =
    { additions : List Addition
    }


type alias Addition =
    { ingredient : Ingredient
    , amount : Amount
    }


type alias Ingredient =
    String


type alias Amount =
    { value : Float
    , unit : Unit
    }


type Unit
    = FluidOunce
