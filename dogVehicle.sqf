_dog = player getVariable "CLAY_DogUnit";
switch (_this select 0) do
{
	case 1:
	{
		player setVariable ["CLAY_DogStatus", "Boarding"];
		_vehicle = _this select 1;

		if (_vehicle iskindof "all") then
		{
			_pos = [0,-2.5, 0];
			_dir = 270;
			
			if (_vehicle isKindOf "olrpg_pdk9cv_slick_fpb") then {
				_pos = [0.07, -0.7, 0.4];
			};
			if (_vehicle isKindOf "olrpg_pdk9cv_fpb") then {
				_pos = [0.07,-0.7, 0.4];
			};
			if (_vehicle isKindOf "olrpg_pdk9taurusfpb") then {
				_pos = [0.1,-0.6, 0.35];
			};
			if (_vehicle isKindOf "olrpg_pdk9charger") then {
				_pos = [0.1,-1, -0.2];
			};
			if (_vehicle isKindOf "olrpg_pdk9suburban") then {
				_pos = [0.1,-2.55, -0.65];
			};
			if (_vehicle isKindOf "olrpg_pdk9suburban_slick") then {
				_pos = [0.1,-2.6, -0.55];
			};

			while {alive _dog && _dog distance _vehicle > 10 && player getVariable "CLAY_DogStatus" == "Boarding"} do
			{
				_dog doMove getPos _vehicle;
				sleep 2;
			};
			if (alive _dog && _dog distance _vehicle <= 10 && player getVariable "CLAY_DogStatus" == "Boarding") then
			{
				_dog attachTo [_vehicle, _pos];
				_dog setDir _dir;
				_dog switchMove "Dog_Stop";
				_dog disableAI "ANIM";
				sleep 1;
				player setVariable ["CLAY_DogStatus", "InVehicle"];
				_dog setVariable ["CLAY_DogVehicle", _vehicle];
				(DOGCTRL_MENU select 1)  set [6, "0"];
				(DOGCTRL_MENU select 2)  set [6, "0"];
				(DOGCTRL_MENU select 3)  set [6, "0"];
				(DOGCTRL_MENU select 6)  set [6, "0"];
				(DOGCTRL_MENU select 7)  set [6, "0"];
				(DOGCTRL_MENU select 10) set [6, "1"];
			};
		}
		else
		{
			Hint "Invalid Vehicle Type!";
			_dog doMove getPos _dog;
			sleep 1;
			//_dog playMove "Dog_Siting";
			player setVariable ["CLAY_DogStatus", "Waiting"];
		};
	};
	case 2:
	{
		_vehicle = _dog getVariable "CLAY_DogVehicle";
		detach _dog;
		_dog setPos [(getPos _vehicle select 0) + (-5 * sin (getDir _vehicle)), (getPos _vehicle select 1) + (-5 * cos (getDir _vehicle)), 0.5];
		_dog setDir (getDir _vehicle + 180);
		_dog enableAI "ANIM";
		_dog playMove "Dog_Run";
		sleep 1;
		player setVariable ["CLAY_DogStatus", "Waiting"];
		(DOGCTRL_MENU select 1) set [6, "1"];
		(DOGCTRL_MENU select 3) set [6, "1"];
		(DOGCTRL_MENU select 6) set [6, "1"];
		(DOGCTRL_MENU select 7) set [6, "1"];
		(DOGCTRL_MENU select 10) set [6, "0"];
	};
};

/*
	if (_vehicle isKindOf "DD_FOR06CV_P_K9" || _vehicle isKindOf "DD_FOR06CV_P_SK9") then {
		_pos = [0.07,-0.6,0.5];
	};
	if (_vehicle isKindOf "DD_DOD12Charger_P_P_K9" || _vehicle isKindOf "DD_DOD12Charger_P_SK9") then {
		_pos = [0.07,-0.6,-0.9];
	};
	if (_vehicle isKindOf "DD_CHE08Tahoe_P_K9" || _vehicle isKindOf "DD_CHE08Tahoe_P_SK9") then {
		_pos = [0.07,-0.7,0.9];
	};
	if (_vehicle isKindOf "DD_FOR13Taurus_P_K9") then {
		_pos = [0,-0.7,-0.2];
	};
*/
