//Module Loader

modularSystemComplete = false;

_showActiveJob = true;
_activeModules = [
	"startup",
	"events",
	"admin",
	"bank",
	"fnc",
	"gangs",
	"hud",
	"mdc",
	"checkpoint",
	"cloud",
	"isse",
	"network",
	"misc",
	"phone",
	"player",
	"license",
	"tfar",
	"stats",
	"vehicle",
	"ui",
	"init"
];

DD_Modules = [];

{
	switch (_x) do {
		case ("init"): {
			[_x] spawn {
				waitUntil { modularSystemComplete };
				call compile preprocessFile format["functions\%1\_vars.sqf", (_this select 0)];
				call compile preprocessFile format["functions\%1\_init.sqf", (_this select 0)];
			};
		};
		default {
			call compile preprocessFile format["functions\%1\_vars.sqf", (_x)];
			call compile preprocessFile format["functions\%1\_module.sqf", (_x)];
		};
	};
} forEach _activeModules;

if (isNil "DD_Modules") exitWith {
	server globalChat "Really, really bad error!";
	systemChat "One of the modules is breaking the module builder. Contact a Developer!";
};

{
	call compile format['

	switch (%4) do {
	  	case (0): {
				execVM "functions\%2\%2_%3.sqf";
			};
			case (1): {
				%1_%2_%3 = compile preProcessFile "functions\%2\%2_%3.sqf";
			};
			case (2): {
				%1_%2_%3 = compile preProcessFile "functions\%2\%2_%3.sqf";
				call %1_%2_%3;
			};
		};
	', _x select 0, _x select 1, _x select 2, _x select 3];

	if (_showActiveJob) then { systemChat toUpper format["Loading Module: %1 - %2", _x select 1, _x select 2] };
} forEach DD_Modules;

waitUntil { (isNull (findDisplay 53)) || isServer };
modularSystemComplete = true;
