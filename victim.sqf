if (alive player || OL_isDead) exitwith {};
OL_isDead = true;

_killer 				= _this select 0;
_nearVehicles  	= _this select 1;
_killerLicense  = 0;
_murdered				= true;
_killerstring		= format["%1", _killer];

if (_killer call OL_ISSE_UnitExists) then {

	_killedByVehicle = false;

	if (_killer == player) then {

		_murdered = false;

			{
				if ((speed _x > 10) && (!(isNull(driver _x)))) then {
					_killer		 			 = driver _x;
					_killedByVehicle = true;
					_vehicle         = typeof _x;
					_infos           = _vehicle call INV_getitemArray;
					_killerlicense   = (_infos select 4) select 1;
					_killerstring 	 = format["%1", _killer];
				};
			} forEach _nearVehicles;
		};

	if ((_murdered) && (!_killedByVehicle)) then { ["Death_Log", format ["%1 (%2) was killed by %3 (%4)", PlayerName, getPlayerUID player, _killer getVariable ["RealName", name _killer], getPlayerUID _killer]] call RM_fnc_LogToServer };
	if (_killedByVehicle) then { ["Death_Log", format ["%3 (%4) killed %1 (%2) with a vehicle.", PlayerName, getPlayerUID player, _killer getVariable ["RealName", name _killer], getPlayerUID _killer]] call RM_fnc_LogToServer };

	format ["
		if (%7 and !%5) then { server globalChat ""%3 was killed by %4"" };
		if (%5) then { server globalChat ""%4 killed %3 with a vehicle. Intentionally running over another player with out reason is against server rules"" };
		if (player == %8) then { [%1, %5] execVM ""killer.sqf"" };
	", player, _killer, PlayerName, _killer getVariable ["RealName", "Error: No Unit"], _killedByVehicle, _killerLicense, _murdered, _killerstring] call OL_network_Swag;
};
