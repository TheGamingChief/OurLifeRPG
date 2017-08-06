_player   = _this select 0;
_warrant  = _this select 1;
_current  = _player getVariable ["PlayerWarrants", []];

if (!(_player call OL_ISSE_UnitExists)) exitWith { player groupChat "Warrant Set Failed: Player Not Online" };

if (typeName _warrant != "STRING") exitWith {
  diag_log format ["Error setting %1 with warrant number %2", _player, _warrant];
};

_validWarrant = {
  if (_x select 0 == _warrant) exitWith { true };
} forEach OL_Warrants;
if (isNil "_validWarrant") exitWith { player groupChat "Tell Foster to fix his warrant" };

_found = -1;
{
  if ((_x select 0) == (_warrant)) exitWith {
    _found = _forEachIndex;
  };
} forEach _current;

if (_found == -1) then {
  _current set [count _current, [_warrant, 1]];
} else {
  _current set [_found, [((_current select _found) select 0), ((_current select _found) select 1) + 1]];
};

_player setVariable ["PlayerWarrants", _current, true];
[_player, _current] call OL_player_WarrantToServer;
