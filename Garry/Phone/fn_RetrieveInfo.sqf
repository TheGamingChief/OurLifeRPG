[[], "Server_Phone_RefreshNumbers", false, false, true] call OL_Network_MP;

_ret = [];

{
  switch (_this select 0) do {
    case ("PLAYERID"):    { if ((_x select 1) == (_this select 1)) exitWith { _ret = _x } };
    case ("PHONENUMBER"): { if ((_x select 3) == (_this select 1)) exitWith { _ret = _x } };
  };
} forEach OL_PhoneNumbers;

_ret;
