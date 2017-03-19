"OL_fnc_MPPacket" addPublicVariableEventHandler {
	_packet = _this select 1;
	_packet call OL_Network_MPexec;

	_sender = name (_packet select 0);
	if (isNull (_packet select 0)) then {
		_sender = "SERVER";
	};

	if (isServer) then { diag_log format["== SERVER MP SYSTEM LOGGING == Packet %1 sent by %2", _packet, _sender] };
};
