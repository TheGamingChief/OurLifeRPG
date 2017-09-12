_gang = [OL_PlayerGangID] call OL_gangs_getByKey;
_gangMembers = _gang select 3;
_gangMembers = [_gangMembers] call CP_misc_ArrayStr2Obj;

_seen = false;
{
  if (_x call OL_isse_UnitExists && isPlayer _x) then {
    if (_x isKindOf "Man") then {
      if (_x in _gangMembers || _x == player) exitWith {};
      _seen = true;
    } else {
      _crew = [_x] call OL_misc_getCrew;

      {
        if (!(_x == player) || !(_x in _gangMembers)) exitWith { _seen = true };
      } forEach _crew;
    };
  };
} forEach (nearestObjects [getPosATL player, ["Man", "LandVehicle", "Air", "Boat"], 50]);

_seen;
