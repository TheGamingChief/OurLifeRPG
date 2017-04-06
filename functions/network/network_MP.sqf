private["_params", "_function", "_target", "_scheduled"];

_params = _this select 0;
_function = _this select 1;
_target = _this select 2;
_scheduled = _this select 3;

if (isNil "_target") then {
	_target = true;
};
if (isNil "_scheduled") then {
	_scheduled = true;
};

_packetToSend = [player, _params, _function, _target, _scheduled];
OL_fnc_MPPacket = _packetToSend;
publicVariable "OL_fnc_MPPacket";
OL_fnc_MPPacket call OL_Network_MPExec;
