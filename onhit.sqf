private ["_unit","_rolenum"];
_unit = (_this select 0) select 0;
_rolenum = _unit getvariable "rolenum";

if ((!isNil "_rolenum") and (count(crew _unit) == 0) and (time >= (_unit getvariable "nextalarmtime"))) then {
 	call compile format['SFXPvEh_%1 = ["%2","caralarm1sfx",16];',_rolenum,_unit];
	publicVariable format["SFXPvEh_%1", rolenumber];
	_unit say ["caralarm1sfx",100];
	_unit setVariable ["nextalarmtime", (time + 16), true];
	_unit spawn {
		for "_i" from 1 to 16 do {
			impoundbuy action["LIGHTON",_this];
			sleep 0.5;
			impoundbuy action["LIGHTOFF",_this];
			sleep 0.5;
		};
	};
};

