// while_atDoor.sqf
// © MARCH 2010 - norrin (norrin@iinet.net.au)

_unit 			= _this select 0;
_vcl 			= _this select 1;
player setVariable ["NORRN_heliDoor", false, true];

if (!local _unit) exitWith {};

// Add key functions
NORRN_heliDoor_keyDownEHId = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call NORRN_heliDoor_keyDown"];

while {true} do
{
	if ((player getVariable "NORRN_heliDoor") || !alive player) exitWith 
	{	
		_unit moveInCargo _vcl;
		sleep 1;
		titletext ["","BLACK IN", 0.1];
		if (!alive player) then {detach player}; 
		_vcl setVariable ["NORRN_mountOn_vcl_pos0", false, true];
		(findDisplay 46) displayRemoveEventHandler ["KeyDown", NORRN_heliDoor_keyDownEHId];
	};
	sleep 2;
};

if (true) exitWith {};