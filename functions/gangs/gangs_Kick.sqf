_playerToKick = call compile format ["%1", _this select 0];

if (player == _playerToKick) exitwith { player groupchat "You can't kick yourself, silly!" };

for "_c" from 0 to (count OL_Gangs - 1) do {
    if (name _playerToKick in ((OL_Gangs select _c) select 1) && name player in ((OL_Gangs select _c) select 1)) exitWith {
      _gangArray = OL_Gangs select _c;
      _gangMembers = _gangArray select 1;
      _gangMembers = _gangMembers - [name _playerToKick];

      _gangArray set [1, _gangMembers];

      OL_Gangs set [_c, _gangArray];
      publicVariable "OL_Gangs";

      _playerToKick setVariable ["OL_Gang", "None", true];
      [[3, "You have been kicked out of your gang!"], "OL_misc_ChatMessage", _playerToKick, false] call OL_Network_MP;
    };
};
