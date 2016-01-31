// mount_vcl_init.sqf
// © AUGUST 2009 - norrin (norrin@iinet.net.au)

if (!local player) exitWith {};

_vcl 				= _this select 0;
_c 					= 0;
_load 				= _vcl addAction ["Move to rear door position", "heliDoor\mount_vcl.sqf","", 0, false, true];

_vcl removeAction _load;
sleep 1;

while {alive _vcl} do
{ 	
		if (!(_vcl getVariable "NORRN_mountOn_vcl_pos0") && count (crew _vcl) == 0 || !(_vcl getVariable "NORRN_mountOn_vcl_pos0") && count (crew _vcl) == 1 && (driver _vcl) != objnull) then
		{
			_vcl removeAction _load;
			_c = 0;
		};
		if (!(_vcl getVariable "NORRN_mountOn_vcl_pos0") && _c == 0 && count (crew _vcl) == 1 && (driver _vcl) == objnull || !(_vcl getVariable "NORRN_mountOn_vcl_pos0") && _c == 0 && count (crew _vcl) > 1 && player != (driver _vcl)) then
		{	
			switch (typeOf _vcl) do {
				case "MH6J_EP1":  {_load = _vcl addAction ["Move to right door", "heliDoor\mount_vcl.sqf", "", 0, false, true];};
			};
			_c = 1;
		};
		
		if ((_vcl getVariable "NORRN_mountOn_vcl_pos0") && _c == 1) then
		{	
			_vcl removeAction _load;
			_c = 0;
		};
		if (!(player in (crew _vcl)) && _c == 1) then 
		{
			_vcl removeAction _load;
			_c = 0;
		};
		sleep 2;
};
_vcl removeAction _load;
if (!alive _vcl) exitWith {};
