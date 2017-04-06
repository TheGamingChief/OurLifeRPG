if (isServer) exitWith {};

// Add action to all vehicles, check every 5 seconds
while {true} do {
	uiSleep 5;

	{
		[_x] execVM "addons\btk\Cargo Drop\InitAction.sqf";
	} forEach (nearestObjects [player, ["lcu","il_towtruck","hilux1_civil_1_open","datsun1_civil_3_open","datsun1_civil_1_open","oltruc3","cooter","flyers","il_silverado_red","il_silverado_orange","qantas_C130","il_silverado_pd"], 20]);
};
