_vcl = _this select 0;
_art = _this select 1;

if(_art == "impound") then
{
	if(!(_vcl iskindof "landvehicle"))exitwith{player groupchat "You cannot impound this vehicle!"};

	_owner = _vcl getVariable "vcl_owner";
	_type = typeOf _vcl;
	_gridPos = mapGridPosition getpos player;
	_CrewCount = (count crew _vcl);
	_RIP = 0;
	_percent = 0;
	_WaitedTime = false;

	for "_i" from 0 to (count crew _vcl) do
	{
		_Crew = (crew _vcl) select _i;
		if !(isNil "_Crew") then {
			if ((_CrewCount > 0) && (alive _Crew)) then {_RIP = 1};
		};
	};
	if (_RIP == 1) exitWith {player groupChat "The vehicle is not empty!"};

	22254 cutRsc["RL_Dialog_loading", "plain"];

	while {player distance _vcl <= 10} do {
		["Impounding Vehicle, Move to stop!",_percent] call OL_Misc_LoadingSetText;
		uiSleep 0.5;
		_percent = _percent + 5;
		if (_percent == 100) exitWith {_WaitedTime = true};
	};

	22254 cutRsc["Default", "plain"];

	if !(_WaitedTime) exitWith {player groupChat "You stepped away from the vehicle!"};

	['geld', 2500] call INV_AddInvItem;
	player groupChat "You have been paid $2500 for cleaning up the streets";

	if (!(alive _vcl))exitWith{deleteVehicle _vcl};

	if (!(isNil "_owner")) then {
		SpeedyServerImpound = SpeedyServerImpound + [[_owner,_type]];
		publicVariable "SpeedyServerImpound";
	};

	format['hint format[localize "STRS_inventar_impound_gesehen", %1, %2]', player, _vcl] call swag;

	deleteVehicle _vcl;
};

if(_art == "fedimpound") then
{
	format['hint format[localize "STRS_inventar_impound_gesehen", %1, %2]', player, _vcl] call swag;
    format['server globalChat "%1 Has Federally Impounded a Vehicle. Vehicle VIN #: %2";', name player, _vcl] call swag;
	deleteVehicle _vcl;
};

if(_art == "buy")then
{
	_gridPos = mapGridPosition getpos player;
	_SpawnLocation = 0;
	if(isciv)then {

		INV_UsingCarshop = 1;
		player groupChat format["Please wait 5 seconds until your vehicle spawns."];
		sleep 5;
		INV_UsingCarshop = 0;
		if (!(alive player)) exitWith {};
		[_this select 0, impoundarea2] spawn INV_CreateVehicle;
	};
	if(iscop)then {

		INV_UsingCarshop = 1;
		player groupChat format["Please wait 5 seconds until your vehicle spawns."];
		sleep 5;
		INV_UsingCarshop = 0;
		if (!(alive player)) exitWith {};

		if ((_gridPos == "048049") || (_gridPos == "049049") || (_gridPos == "048048")) then
		{
			_SpawnLocation = 1;
		};

		if ((_gridPos == "035070") || (_gridPos == "035071") || (_gridPos == "036071") || (_gridPos == "036070")) then
		{
			_SpawnLocation = 2;
		};

		if(_SpawnLocation > 0) then {

			if (_SpawnLocation == 1) then {
				[_this select 0, ctrafficspawn] spawn INV_CreateVehicle;
			};

			if (_SpawnLocation == 2) then {
				[_this select 0, simpoundspawn] spawn INV_CreateVehicle;
			};

		}
		else
		{
			systemChat "Whoops! Something broke, Please screenshot the below debug message and submit a bug report on the forums!";
			systemChat format["Debug Message: Vehicle: %1 Location: %2 Player: %3 Player UID: %4", _this select 0, _gridPos, name player, getPlayerUID player];
		};

	};

	player groupchat format["You payed the $%1 fine and retrieved your vehicle!", impoundpay];
};
