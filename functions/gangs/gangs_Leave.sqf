if (player getVariable ["OL_Gang", "None"] == "None") exitWith { player groupChat "You are currently not in a gang." };

for "_c" from 0 to (count OL_Gangs - 1) do {
  if (name player in ((OL_Gangs select _c) select 1)) exitWith {
    _gangArray = OL_Gangs select _c;
    _gangName = _gangArray select 0;
    _gangMembers = _gangArray select 1;

    _gangMembers = _gangMembers - [name player];
    _gangArray set [1, _gangMembers];
    OL_Gangs set [_c, _gangArray];
    publicVariable "OL_Gangs";

    player setVariable ["OL_Gang", "None", true];

    player groupChat "You left your gang.";
  };
};
