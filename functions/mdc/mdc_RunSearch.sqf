_index = _this select 0;
closeDialog 0;
_civ = (call DD_MDC_OnlineCivilians) select _index;
DD_Currentciv = _civ;
DD_LastCiv = _civ;

if (isNil "_civ") exitWith {};
if (!(_civ in playableUnits) && isMultiplayer) exitWith { hint "Nothing found" };

format ['
	if (player == %1) then {
		player setVariable ["Licenses", INV_LizenzOwner, 	true];
		player setVariable ["Cars", 		INV_VehicleArray, true];
		player setVariable ["Warrants", %1_reason, 				true];
		"if (player == %2) then { [""view"", %2, %1] call DD_MDC_Dialog };" call OL_network_Swag;
	};
', _civ, player, PlayerName] call OL_network_Swag;
