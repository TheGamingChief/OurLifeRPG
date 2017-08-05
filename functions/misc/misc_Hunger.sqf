if (INV_hunger < 99) then {
    INV_hunger = INV_hunger + 1;

    if (INV_hunger >= 95) then {    titleText ["You are starving", "plain", 1]; };
    if (!alive player) then {   INV_hunger = 1; };
}   else {
    titleText ["You have starved to death", "plain"];
    player setDamage 1;
    INV_hunger = 0;
};

if ((_this select 0) == "use") exitWith {
    _item             = _this select 1;
    _amount           = _this select 2;
    _maxAmount    = _item call INV_getitemamount;
    _hungerPoints = 0;

    if (_amount >  _maxAmount) then { _amount = _maxAmount };

    switch _item do {
        case "blowfish":    { _hungerPoints = 8  };
        case "perch":       { _hungerPoints = 6  };
        case "walleye":     { _hungerPoints = 7  };
        case "trout":       { _hungerPoints = 7  };
        case "mackerel":    { _hungerPoints = 8  };
        case "herring":     { _hungerPoints = 8  };
        case "bass":        { _hungerPoints = 8  };
        case "straw":       { _hungerPoints = 3  };
        case "Donut":       { _hungerPoints = 10 };
        case "Bread":       { _hungerPoints = 5  };
        case "boar":        { _hungerPoints = 10 };
        case "rabbit":      { _hungerPoints = 10 };
        case "strangemeat": { _hungerPoints = 15 };
        case "bread":       { _hungerPoints = 5  };
        case "apple":       { _hungerPoints = 7  };
        case "coconut":     { _hungerPoints = 10 };
        case "banana":      { _hungerPoints = 7  };
        case "getreide":    { _hungerPoints = 2  };
        case "tcgmp":       { _hungerPoints = 5  };
        case "doshd":       { _hungerPoints = 5  };
        case "gdar":        { _hungerPoints = 5  };
        case "bjerk":       { _hungerPoints = 5  };
        case "Frozens":     { _hungerPoints = 4  };
        case "wulf":        { _hungerPoints = 6  };
        case "fuzz":        { _hungerPoints = 4  };
        case "inby":        { _hungerPoints = 4  };
        default             { _hungerPoints = 2  };
    };

    [_item, -(_amount)] call INV_AddInvItem;
    INV_hunger = INV_hunger - (_hungerPoints * _amount);

    if (INV_hunger < 0) then { INV_hunger = 0 };

    player groupChat format[localize "STRS_inv_item_nahrung_gegessen", ((round (100-INV_hunger)) call OL_ISSE_str_IntToStr)];
};
