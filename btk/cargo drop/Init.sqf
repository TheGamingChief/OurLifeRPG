 /******************************************************************************
 *                        ,1             ,-===========.
 *                       /,| ___________((____________\\_                _
 *    ,========.________//_|/===========._#############L_Y_....-----====//
 *   (#######(==========\################\=======.______ --############((
 *    `=======`"        ` ===============|::::.___|[ ))[JW]#############\\
 *                                       |####|     ""\###|   :##########\\
 *                                      /####/         \##\     ```"""=,,,))
 *     C R E A T E D   B Y   B T K     /####/           \##\
 *                                    '===='             `=`
 *******************************************************************************
 *
 *  Exec initAction to the vehicles near the player.
 *
 ******************************************************************************/


//// Add action to all vehicles, check every 5 seconds
while {true} do {
	{[_x] execVM "BTK\Cargo Drop\InitAction.sqf";} forEach (nearestObjects [player, ["lcu"], 30]);
	{[_x] execVM "BTK\Cargo Drop\InitAction.sqf";} forEach (nearestObjects [player, ["il_towtruck"], 15]);
	{[_x] execVM "BTK\Cargo Drop\InitAction.sqf";} forEach (nearestObjects [player, ["hilux1_civil_1_open"], 15]);
	{[_x] execVM "BTK\Cargo Drop\InitAction.sqf";} forEach (nearestObjects [player, ["datsun1_civil_3_open"], 15]);
	{[_x] execVM "BTK\Cargo Drop\InitAction.sqf";} forEach (nearestObjects [player, ["datsun1_civil_1_open"], 15]);
	{[_x] execVM "BTK\Cargo Drop\InitAction.sqf";} forEach (nearestObjects [player, ["oltruc3"], 15]);
	{[_x] execVM "BTK\Cargo Drop\InitAction.sqf";} forEach (nearestObjects [player, ["cooter"], 15]);
	{[_x] execVM "BTK\Cargo Drop\InitAction.sqf";} forEach (nearestObjects [player, ["il_silverado_red"], 15]);
	{[_x] execVM "BTK\Cargo Drop\InitAction.sqf";} forEach (nearestObjects [player, ["il_silverado_orange"], 15]);
	{[_x] execVM "BTK\Cargo Drop\InitAction.sqf";} forEach (nearestObjects [player, ["qantas_C130"], 20]);
	{[_x] execVM "BTK\Cargo Drop\InitAction.sqf";} forEach (nearestObjects [player, ["il_silverado_pd"], 15]);

	sleep 5;
};

