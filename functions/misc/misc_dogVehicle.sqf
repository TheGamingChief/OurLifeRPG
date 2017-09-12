_dog = player getVariable "CLAY_DogUnit";
switch (_this select 0) do
{
	case 1: {
		player setVariable ["CLAY_DogStatus", "Boarding"];
		_vehicle = _this select 1;
		systemChat str _vehicle;
		if (_vehicle iskindof "all") then {
			_pos = [0,-2.5, 0];
			_dir = 270;
	 		{ if (typeOf _vehicle == _x select 0) then { _pos = _x select 1 }; } forEach OL_DogPositions;

			while {alive _dog && _dog distance _vehicle > 10 && player getVariable "CLAY_DogStatus" == "Boarding"} do {
				_dog doMove getPos _vehicle;
			};
			if (alive _dog && _dog distance _vehicle <= 10 && player getVariable "CLAY_DogStatus" == "Boarding") then {
				_dog attachTo [_vehicle, _pos];
				_dog setDir _dir;
				_dog switchMove "Dog_Stop";
				_dog disableAI "ANIM";
				uiSleep 1;
				player setVariable ["CLAY_DogStatus", "InVehicle"];
				_dog setVariable ["CLAY_DogVehicle", _vehicle];
				(DOGCTRL_MENU select 1)  set [6, "0"];
				(DOGCTRL_MENU select 2)  set [6, "0"];
				(DOGCTRL_MENU select 3)  set [6, "0"];
				(DOGCTRL_MENU select 6)  set [6, "0"];
				(DOGCTRL_MENU select 7)  set [6, "0"];
				(DOGCTRL_MENU select 10) set [6, "1"];
			};
		} else {
			hint "Invalid Vehicle Type!";
			uiSleep 1;
			player setVariable ["CLAY_DogStatus", "Waiting"];
		};
	};
	case 2: {
		_vehicle = _dog getVariable "CLAY_DogVehicle";
		detach _dog;
		_dog setPos [(getPos _vehicle select 0) + (-5 * sin (getDir _vehicle)), (getPos _vehicle select 1) + (-5 * cos (getDir _vehicle)), 0.5];
		_dog setDir (getDir _vehicle + 180);
		_dog enableAI "ANIM";
		_dog playMove "Dog_Run";
		uiSleep 1;
		player setVariable ["CLAY_DogStatus", "Waiting"];
		(DOGCTRL_MENU select 1) set [6, "1"];
		(DOGCTRL_MENU select 3) set [6, "1"];
		(DOGCTRL_MENU select 6) set [6, "1"];
		(DOGCTRL_MENU select 7) set [6, "1"];
		(DOGCTRL_MENU select 10) set [6, "0"];
	};
};
