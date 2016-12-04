DD_EventLogging = true;
DD_fnc_MPPacket = [];

"DD_fnc_MPPacket" addPublicVariableEventHandler {
	_packet = _this select 1;
	_packet call DD_Network_MPexec;
	diag_log format["== SERVER MP SYSTEM LOGGING == Packet %1 sent by %2", _packet, _packet select 1];
};

//systemChat "Event Handler created.";