// Revive begining
waituntil {alive player};
dooconsciousevent = {
	//if not (local _this or alive _this) exitwith {candie = false};
	_healerstring = format ["%1", _this];
	format ['if (player == %1) then {candie = false;uncontime = 0;};', _healerstring] call broadcast;
	_this setunconscious false;
	_this playaction "agonyStop";
};
"dooconscious" addpublicvariableeventhandler {_this select 1 spawn dooconsciousevent};
doohandleheal = 
{
	if not (_this select 2) then {
		(_this select 1) playmove "ainvpknlmstpslaywrfldnon_medic";
	};
	_this spawn {
	_victim = _this select 0;
	_healer = _this select 1;
		sleep 8;
		if alive (_this select 1) then {uncontime = 0;
		if (_healer in medicarray) then {_healerstring = format ["%1", _healer];format ['if (player == %1) then {player execVM "medicreward.sqf";};', _healerstring] call broadcast; _victim setdamage 0;};
		if (_victim in coparray) then {_victim setdamage 0};
			dooconscious = _this select 0;
			publicvariable "dooconscious";
			if local (_this select 0) then {_this select 0 spawn dooconsciousevent};
		};
	};
};

"doounconscious" addpublicvariableeventhandler {_this select 1 spawn doounconsciousevent};
doounconsciousevent = {
	if not (local player and alive _this) exitwith {};
	_this removealleventhandlers "handleheal";
	_this addeventhandler ["handleheal", "_this call doohandleheal"];
	if (_this in coparray or _this in pmcarray) then
	{_this sidechat (switch floor random 2 do {case 0: {"[ugh]"}; case 1: {"[aaah]"}; default {"[arrrrrrrghhhhhh]"}})};
	_this spawn {
		if (vehicle _this != _this) then {
			
					_this action ["eject", vehicle _this];
				
			
			waituntil {vehicle _this == _this};
			_this playActionNow "GestureNod";
		};
		
		if not alive _this exitwith {};
		_this switchmove "normal";
		sleep 0.2;
		_this playActionNow "agonyStart";
		waituntil {not alive _this};
		if not (alive _this) then 
		{_this switchmove "normal";
		_healerstring = format ["%1", _this];
	    format ['if (player == %1) then {candie = false;uncontime = 0;};', _healerstring] call broadcast;
		};
	};
	if (isnil {vehicle _this getvariable "dootakeout"} and vehicle _this != _this) then {
		vehicle _this setvariable ["dootakeout", true];
		vehicle _this addaction [localize "str_agonyTakeOutAction", "takeout.sqf", nil, 0, true, true, "", "{lifestate _x == ""UNCONSCIOUS""} count crew _target > 0"];
	};
};