_vcl = _this select 0;
_art = _this select 1;
 
if(_art == "impound") then
{
	if(not(_vcl iskindof "landvehicle"))exitwith{player groupchat "You cannot impound this vehicle!"};

	_owner = _vcl getVariable "vcl_owner";
	_type = typeOf _vcl;
	_CrewCount = (count crew _vcl);
	_RIP = 0;

	for "_i" from 0 to (count crew _vcl) do
	{
		_Crew = (crew _vcl) select _i;
		if ((_CrewCount > 0) && (alive _Crew)) then {_RIP = 1};
	};
	if (_RIP == 1) exitWith {player groupChat "The vehicle is not empty!"};
	['geld', 2500] call INV_AddInvItem;
	player groupChat "You have been paid $2500 for cleaning up the streets";

	if (not(alive _vcl))exitWith{deleteVehicle _vcl};
	
	//if (not(isNil _owner)) then {
		SpeedyServerImpound = SpeedyServerImpound + [[_owner,_type]];
		publicVariable "SpeedyServerImpound";
	//};
	
	format['hint format[localize "STRS_inventar_impound_gesehen", %1, %2]', player, _vcl] call swag;

	deleteVehicle _vcl;
};

if(_art == "fedimpound") then
{
	format['hint format[localize "STRS_inventar_impound_gesehen", %1, %2]', player, _vcl] call swag;
    format['server globalChat "%1 Has Federally Impounded a Vehicle. Vehicle VIN #: %2";', name player, _vcl] call broadcast;
	deleteVehicle _vcl;
};
 
if(_art == "buy")then
{
	if(isciv)then {
		
		INV_UsingCarshop = 1;
		player groupChat format["Please wait 5 seconds until your vehicle spawns."];
		sleep 5;
		INV_UsingCarshop = 0;														
		if (not(alive player)) exitWith {};																																																										
		[_this select 0, impoundarea2] spawn INV_CreateVehicle;
	};
	if(iscop)then {
	 
		_INV_UsingCarshop = 1;
		player groupChat format["Please wait 5 seconds until your vehicle spawns."];
		sleep 5;
		INV_UsingCarshop = 0;														
		if (not(alive player)) exitWith {};																																																										
		[_this select 0, ctrafficspawn] spawn INV_CreateVehicle;
	};
	
	player groupchat format["You payed the $%1 fine and retrieved your vehicle!", impoundpay];
};