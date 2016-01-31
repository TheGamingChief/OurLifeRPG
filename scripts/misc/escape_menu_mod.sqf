// Taken from DOMINATION
// Edited for RL By Speedy

disableSerialization;
sleep 10;

while {true} do {
	waitUntil {not(isnull (findDisplay 49))};

	_ctrl = (findDisplay 49) displayCtrl 1010;
	_ctrl ctrlEnable false;
	_title = (findDisplay 49) displayCtrl 523;
	//escape menu opened
	_enCtrl = [_ctrl] spawn {
		disableSerialization;
		_ctrl = _this select 0;
		_stext = ctrlText _ctrl;
		private["_i"];
		_ctrl buttonSetAction "respawnButtonPressed = true;";
		for "_i" from 120 to 1 step -1 do {
			if (isnull (findDisplay 49)) exitWith {};
			_text2 = format ["Please Wait: (%1)",_i]; _ctrl ctrlSetText _text2;
			sleep 1;
		};
			
		if (!isnull (findDisplay 49)) then {
			_ctrl ctrlSetText _stext; 
			_ctrl ctrlEnable true;
		};
	};
	_enTitle = [_title] spawn {
		disableSerialization;
		_ctrl3 = _this select 0;
		_sText2 = ctrlText _ctrl3;
		_text3 = format ["Our Life RPG"]; _ctrl3 ctrlSetText _text3;
	};

	waitUntil {isNull (findDisplay 49)};
	//escape menu closed
	if (!scriptDone _enCtrl) then {
		terminate _enCtrl;
		terminate _enTitle;
	};
};