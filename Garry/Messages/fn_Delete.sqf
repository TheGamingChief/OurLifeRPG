_this        = call compile (_this select 0);
_MessageID   = _this select 0;
_PhoneNumber = _this select 2;

[[_MessageID, _PhoneNumber], "Server_Messages_DeleteByID", false, false, true] call OL_Network_MP;

_index = {
  if ((_x select 0) == _MessageID) exitWith { _forEachIndex }
} forEach OL_Messages;

OL_Messages set [_index, -1];
OL_Messages = OL_Messages - [-1];

[] call Messages_fnc_Refresh;
