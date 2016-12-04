_uid = GetPlayerUID player;
{if ((_x getVariable "owner") == _uid) then {
deleteVehicle _x;
["money_del_server", format["Server deleted some cash from %1", _UID]] call fn_RMLogToServer;
};
} forEach allMissionObjects "EvMoney";