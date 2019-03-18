if (isServer) exitWith {};
_AFK_Loops = 0;

while {true} do {
  _oldPos = [getPosATL player select 0, getPosATL player select 1, 0];

  uiSleep 15;

  _newPos = [getPosATL player select 0, getPosATL player select 1, 0];

  if ([_oldPos, _newPos] call BIS_fnc_areEqual) then { _AFK_Loops = _AFK_Loops + 1 } else { _AFK_Loops = 0; OL_isAFK = false; };

  if (_AFK_Loops >= 40) then { OL_isAFK = true };

  uiSleep 15;
};
