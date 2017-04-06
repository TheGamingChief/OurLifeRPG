waitUntil {!isNil "RM_fnc_LogToServer"};

{
  if ((_x getVariable "owner") == getPlayerUID player) then {
    deleteVehicle _x;
    ["money_del_server", format["Server deleted some cash from %1", _UID]] call RM_fnc_LogToServer;
  };
} forEach allMissionObjects "EvMoney";
