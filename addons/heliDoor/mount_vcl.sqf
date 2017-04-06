// mount_vcl.sqf
// © AUGUST 2009 - norrin (norrin@iinet.net.au)

_vcl 			= _this select 0;
_caller			= _this select 1;
_dir			= getdir _vcl; 

_vcl setVariable ["NORRN_mountOn_vcl_pos0", true, true];
sleep 1;
titletext ["Moving to skid PRESS INSERT OR I TO SIT BACK DOWN","BLACK FADED", 0.1];
if (vehicle _caller != _caller) then {_caller action ["GetOut", vehicle _caller]; sleep 0.5};

switch (typeOf _vcl) do {
		
		case "MH6J_EP1":  {_caller attachTo [_vcl,[1.25,0.8,-1.2]]; _caller setDir 90;};
}; 

_caller setpos getpos _caller;
_caller setVehicleInit "this switchMove 'aidlpknlmstpslowwrfldnon_player_idlesteady02'";
processInitCommands; 
_caller disableAI "anim";
sleep 0.1;
titletext ["","BLACK IN", 0.1];

call compile format ["_caller setVehicleInit 'nul = [this,%1] execVM ''heliDoor\while_atDoor.sqf'''", _vcl];
processInitCommands;

if (true) exitWith {};


