if ((count _this != 4) || (typeName (_this select 0) != "STRING")) exitWith { diag_log format["OL_fnc_QueueVar ERROR: %1", _this] };

_index = count OL_VarQueue;
{
  if (_x select 0 == _this select 0) exitWith { _index = _forEachIndex };
} forEach OL_VarQueue;

OL_VarQueue set [(_index), [
  _this select 0,
  _this select 1,
  [time, time + (_this select 2)],
  [(_this select 3) select 0, (_this select 3) select 1]
]];
