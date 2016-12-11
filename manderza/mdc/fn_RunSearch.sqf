_index = _this select 0;
hint str _this;
closeDialog 0;
_civ = (call DD_MDC_OnlineCivilians) select _index;
DD_Currentciv = _civ;
DD_LastCiv = _civ;

if (_index == -1) exitWith {
    hint "Please select a civilian";    
};

if(!(isNull _civ) && !(_civ in playableUnits) && isMultiplayer)exitWith{
	hint "Nothing found";
};

hint str DD_Currentciv;



format['
	if(player == %1)then{
		player setVariable["Licenses", INV_LizenzOwner, true];
		player setVariable["Cars", INV_VehicleArray, true];
		player setVariable["Warrants", %1_reason, true];
		"if (player == %2)then{[""view"", %2, %1] call DD_MDC_Dialog};" call swag;
	};
', _civ, player, name player] call swag;
