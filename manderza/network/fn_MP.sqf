private["_params", "_function", "_target", "_scheduled"];

_params = _this select 0;
_function = _this select 1;

_target = _this select 2;
if(isNil "_target")then{
	_target = true;
};


_scheduled = _this select 3;
if(isNil "_scheduled")then{
	_scheduled = true;
};

_packetToSend = [player, _params, _function, _target, _scheduled];
DD_Network_MPPacket = _packetToSend;
publicVariable "DD_fnc_MPPacket";