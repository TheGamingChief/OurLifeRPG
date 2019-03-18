waitUntil {!isNil "RM_fnc_LogToServer"};

_uid = _this select 0;

{
  if ((_x getVariable "owner") == _uid) then {
    ["money_del_server", format["Server deleted some cash from %1", (_x getVariable "owner")]] call RM_fnc_LogToServer;
    deleteVehicle _x;
  };
} forEach (allMissionObjects "EvMoney");
