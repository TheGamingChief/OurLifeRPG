private["_player"];
_player = _this select 0;
if (isNil "_player") exitWith {false};
if (typeName _player != "OBJECT") exitWith {false};
if (isNull _player) exitWith {false};
true
