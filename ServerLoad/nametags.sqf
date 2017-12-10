private ["_searchRadius", "_control2", "_car", "_faceTP", "_tag", "_vcls", "_stn", "_distTP", "_distCP", "_distSP"];

call disableserialization;

waitUntil {!isNil "OL_InteractionMenu_Key"};

while {true} do {
  for [{_i=1}, {_i < 25}, {_i=_i+2}] do {
    _range 	 = _i;
    _dirV    = vectorDir vehicle player;
    _pos     = player modelToWorld [0,0,0];
    _posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];

    if (vehicle player == player) then {
      _searchRadius = 1
    } else {
      _searchRadius = 0
    };

    _objs = nearestObjects [_posFind, ["Man", "RUSpecialWeaponsBox", "RUBasicAmmunitionBox","UNBasicAmmunitionBox_EP1","Barrels","Infostand_2_EP1"], _searchRadius];
    _vcls = nearestobjects [_posFind, ["LandVehicle", "Air", "ship", "LocalBasicWeaponsBox"], 2];
    _atms = nearestObjects [_posFind, ["Man", "tcg_ATM"], 2];

    if (count _vcls > 0 and INV_shortcuts) then {
      _car    = _vcls select 0;
      _distCP = _car distance player;

      if (typeof _car != "LocalBasicWeaponsBox" and !(isnull _car) and alive _car and !(locked _car) and vehicle player == player and _distCP < 3) then {
        titleRsc ["Rtags", "PLAIN"];
        _control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
        _control ctrlSetText format ["GET IN (%1)", [OL_InteractionMenu_Key] call OL_misc_getCustomKeyName];
      };

      if ((_car in INV_VehicleArray) and typeof _car == "LocalBasicWeaponsBox" and !(isnull _car) and vehicle player == player and _distCP < 3) then {
        titleRsc ["Rtags", "PLAIN"];
        _control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
        _control ctrlSetText "STORAGE (T)";
      };
    };

    if (count _atms > 0 and INV_shortcuts) then {
      _atm    = _atms select 0;
      _distTP = _atm distance player;

      if (_atm in bankflagarray and _distTP < 3) then {
        titleRsc ["Rtags", "PLAIN"];
        _control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
        _control ctrlSetText format ["BANK (%1)", [OL_InteractionMenu_Key] call OL_misc_getCustomKeyName];
      };
    };

    if (count _objs > 0 and INV_shortcuts) then {
      _tag    = _objs select 0;
      _distTP = (_tag distance player);

      if (_tag in shopusearray and _distTP < 3) then {
        _text = (missionNamespace getVariable format ["%1_Array", _tag]) select 1;
        titleRsc ["Rtags", "PLAIN"];
        _control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
        if (iscop and _tag in drugsellarray) exitwith {
          _control ctrlSetText format ["Drug Search (%1)", [OL_InteractionMenu_Key] call OL_misc_getCustomKeyName];
          _control ctrlSetTextColor [0, 0, 1, 0.8]
        };
        _control ctrlSetText format["%1 (%2)", _text, [OL_InteractionMenu_Key] call OL_misc_getCustomKeyName];
        _control ctrlSetTextColor [1, 1, 1, 0.8];
      };
      if ((_distTP < 3) && (_tag in playerarray) && (_tag != player) && (alive _tag) && (!(ismedic))) then {
        titleRsc ["Rtags", "PLAIN"];
        _control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
        _control ctrlSetText format ["PLAYER MENU (%1)", [OL_InteractionMenu_Key] call OL_misc_getCustomKeyName];
      };

      if (_distTP < 3 and _tag in civarray and _tag != player and alive _tag) then {
        if (_tag getVariable "Gagged") then {
          titleRsc ["Rtags", "PLAIN"];
          _control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
          _control ctrlSetText "Gagged";
          _control ctrlSetTextColor [1, 0, 0, 0.8];
        };
      };
    };
  };
  uiSleep 0.003;
};
