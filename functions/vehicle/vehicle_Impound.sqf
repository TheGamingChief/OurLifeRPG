_veh = _this select 0;
if(!(_veh iskindof "landvehicle"))exitwith{player groupchat "You cannot impound this vehicle!"};

_gridPos = mapGridPosition getpos player;
_CrewCount = (count crew _veh);
_RIP = 0;
_percent = 0;
_waitedTime = false;

for "_i" from 0 to (count crew _veh) do
{
	_Crew = (crew _veh) select _i;
	if !(isNil "_Crew") then {
		if ((_CrewCount > 0) && (alive _Crew)) then {_RIP = 1};
	};
};
if (_RIP == 1) exitWith {player groupChat "The vehicle is not empty!"};

22254 cutRsc["RL_Dialog_loading", "plain"];

while {player distance _veh <= 10} do {
	["Impounding Vehicle, Move to stop!",_percent] call OL_Misc_LoadingSetText;
	uiSleep 0.5;
	_percent = _percent + 5;
	if (_percent == 100) exitWith {_waitedTime = true};
};

22254 cutRsc["Default", "plain"];

if !(_waitedTime) exitWith {player groupChat "You stepped away from the vehicle!"};

['geld', 2500] call INV_AddInvItem;
player groupChat "You have been paid $2500 for cleaning up the streets";

/////////////////////////////////////////////////////////////////////////////////////////////////
_veh    = _this select 0;
_owner  = _veh getVariable ["OL_Owner", nil];
_id     = _veh getVariable ["DatabaseID", call compile ([6] call CP_misc_GetRandomCode)];
if (isNil "_owner") exitWith { deleteVehicle _veh };

_class = typeOf _veh;
_dmg = damage _veh;
_fuel = fuel _veh;
_upg = _veh getVariable ["tuning", 0];

[[_id, _class, _dmg, _fuel, _upg], "OL_vehicle_StoreImpound", _owner, true] call OL_network_MP;
deleteVehicle _veh;
/////////////////////////////////////////////////////////////////////////////////////////////////

format['hint format[localize "STRS_inventar_impound_gesehen", %1, %2]', player, _veh] call OL_network_Swag;
