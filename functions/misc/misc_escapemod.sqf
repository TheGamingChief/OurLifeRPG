disableSerialization;

waitUntil {not(isnull (findDisplay 49))};

_Respawn = (findDisplay 49) displayCtrl 1010;
_Abort = (findDisplay 49) displayCtrl 104;
_title = (findDisplay 49) displayCtrl 523;
_Respawn ctrlEnable false;
_abort ctrlEnable false;

//escape menu opened
_enCtrl = [_abort] spawn {
	disableSerialization;
	_abort = _this select 0;
	_stext = ctrlText _abort;
	private["_i"];
	if ((getPlayerUID player) in OL_SwagDevs || (getPlayerUID player) in adminlevel4) exitWith {_abort ctrlEnable true;};

	for "_i" from 10 to 1 step -1 do {
		if (isnull (findDisplay 49)) exitWith {};
		_abort ctrlSetText format ["Please Wait: (%1)", _i];
		uiSleep 1;
	};

	if (!isnull (findDisplay 49)) then {
		_abort ctrlSetText _stext;
		_abort ctrlEnable true;
	};

};

_enTitle = [_title] spawn {
	disableSerialization;
	_ctrl3 = _this select 0;
	_sText2 = ctrlText _ctrl3;
	_text3 = format ["Our Life RPG"];
	_ctrl3 ctrlSetText _text3;
};

_enRespawn = [_Respawn] spawn {
	disableSerialization;
	_ctrl4 = _this select 0;
	_text2 = format ["Respawn Disabled"];
	_ctrl4 ctrlSetText _text2;
};

if (player getVariable "KOED") then {
	if ((getPlayerUID player) in OL_SwagDevs || (getPlayerUID player) in adminlevel4) exitWith {};
	_DeadText = format ["Currently Unconscious"];
	_abort ctrlSetText _DeadText;
	_abort ctrlEnable false;
	terminate _enCtrl;
};

waitUntil {isNull (findDisplay 49)};
//escape menu closed
if (!scriptDone _enCtrl) then {
	terminate _enCtrl;
	terminate _enTitle;
	terminate _enRespawn;
};
