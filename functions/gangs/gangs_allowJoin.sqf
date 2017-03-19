if (_this select 1 == "") exitWith { player groupchat "You must select either yes or no!" };

_allowJoin = call compile format ["%1", _this select 1];

for "_c" from 0 to (count OL_Gangs - 1) do {
  if (name player in ((OL_Gangs select _c) select 1)) exitWith {
    _gangArray = OL_Gangs select _c;
    _gangArray set [2, _allowJoin];

    OL_Gangs set [_c, _gangArray];
    publicVariable "OL_Gangs";

    if (_allowJoin) then {
      player groupChat "Civilians can now join your gang."
    } else {
      player groupChat "Civilians can no longer join your gang."
    };
  };
};
