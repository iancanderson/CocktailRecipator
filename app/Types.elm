module Types exposing (..)


type alias Recipe =
    { spiritAddition : SpiritAddition
    , modifyingAgentAddition : ModifyingAgentAddition
    , specialFlavorAddition : SpecialFlavorAddition
    }


type alias SpiritAddition =
    { spirit : Spirit
    , amount : Amount
    }


type alias ModifyingAgentAddition =
    { modifyingAgent : ModifyingAgent
    , amount : Amount
    }


type alias SpecialFlavorAddition =
    { specialFlavor : SpecialFlavor
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


type Spirit
    = Gin
    | Rum
    | Whiskey


type ModifyingAgent
    = DryVermouth
    | EggWhite
    | FernetBranca
    | LemonJuice
    | LimeJuice
    | SimpleSyrup
    | SweetVermouth


type SpecialFlavor
    = AngosturaBitters
    | GrandMarnier
    | GreenChartreuse
    | Grenadine
    | OrgeatSyrup
