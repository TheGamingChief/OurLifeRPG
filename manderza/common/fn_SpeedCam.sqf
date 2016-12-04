
_speedAtOffence = round(speed(vehicle player));
_vehicle = vehicle player;


if(isNil "DD_SpeedLimit")then{
	DD_SpeedLimit = 100;
};

if(_speedAtOffence > DD_SpeedLimit)then{
	if(isCop && vehicle player != player && (vehicle player animationPhase "ani_lightbar" > 0))then{
		player groupChat "== SPEED CAMERA ==";
		format['
			if(isCop)then{
				systemChat "Constable %1 was caught exceeding the speed limit by %1km/h!";
			};
			', name player, (_speedAtOffence - DD_SpeedLimit)] call swag;
	};
	player groupChat "== SPEED CAMERA ==";
	systemChat format["A speed camera has caught you going %1, Exceeding the speed limit by %2. Police have been notified.", _speedAtOffence, (_speedAtOffence - DD_SpeedLimit)];
	format['
		%1_reason set[count(%1_reason), "SPEEDCAM: Exceeding speed by %3km/h(Going %2km/h) | Detected Registration: %4"];
	', player, _speed, (_speedAtOffence - DD_SpeedLimit), _vehicle] call swag;
};