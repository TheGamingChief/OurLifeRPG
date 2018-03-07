OL_PlayerActions = [
  [player addAction ["Escort VIP", "noscript.sqf", "[VIPtarget] join (group player); player groupchat ""escort the VIP to the police base before he is assassinated!"";", 1, false, true, "", "player distance VIPtarget < 5 and iscop"]],
  [player addAction ["Impound Lot", "noscript.sqf", '["RETRIEVE", impoundbuy_pd] call OL_ui_ImpoundLot;', 1, false, true, "", "player distance impoundbuy_pd <= 5"]],
  [player addAction ["Take criminal evidence", "noscript.sqf", 'player groupchat "evidence removed."; {deletevehicle _x} foreach (nearestobjects [getpos player, ["weaponholder"], 3])', 1, true, true, "", '_weps = (nearestobjects [getpos player, ["weaponholder"], 3] select 0); player distance _weps < 5 and iscop']],
  [player addAction ["Take Scuba Gear", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("gnt_scubaw" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0);["gnt_scubaw", 1] call INV_AddInvItem;player groupchat "you picked up scuba gear";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0) < 5']],
  [player addAction ["Remove Spike Strip", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("spikestrip" call INV_getitemTypeKg)) > INV_Weight) exitwith {player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["spikestrip"],  10] select 0);["spikestrip",1] call INV_AddInvItem;player groupchat "you picked up a spike strip";', 1, true, true, "", 'iscop and player distance (nearestobjects [getpos player, ["spikestrip"],  10] select 0) < 7']],
  [player addAction ["Remove Stop Sign", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("glt_roadsign_octagon" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["glt_roadsign_octagon"],  10] select 0);player groupchat "you picked up a stop sign";', 1, true, true, "", 'iscop and player distance (nearestobjects [getpos player, ["glt_roadsign_octagon"],  10] select 0) < 7']],
  [player addAction ["Remove Concrete Barrier Short", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("il_barrier" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["il_barrier"],  10] select 0);player groupchat "You picked up a Concrete Barrier Short";', 1, true, true, "", 'iscop and player distance (nearestobjects [getpos player, ["il_barrier"],  10] select 0) < 7']],
  [player addAction ["Remove Searchlight", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("SearchLight_UN_EP1" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["SearchLight_UN_EP1"], 3] select 0);["SearchLight_UN_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a searchlight";', 1, true, true, "", '_light = (nearestobjects [getpos player, ["SearchLight_UN_EP1"],  3] select 0); !(_light in speedcamarray) and player distance _light < 5 and iscop']],
  [player addAction ["Remove Roadblock", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("roadblock" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_CncBlock_Stripes"],  3] select 0);player groupchat "you picked up a roadblock";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["Land_CncBlock_Stripes"],  3] select 0) < 5 and iscop']],
  [player addAction ["Remove Bargate", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("Bargate" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0);["Bargate", 1] call INV_AddInvItem;player groupchat "you picked up a bargate";', 1, true, true, "", 'iscop and player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7']],
  [player addAction ["Remove Road Cone", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("roadcone" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0);player groupchat "you picked up a road cone";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0) < 5']],
  [player addAction ["Open/close gate", "noscript.sqf", '_gate = (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7 and iscop']],
  [player addAction ["Open/close gate", "noscript.sqf", '_gate = (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7 and isciv']],
  [player addAction ["Remove Bunker (small)", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("bunkersmall" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_fortified_nest_small"],  3] select 0);["bunkersmall", 1] call INV_AddInvItem;player groupchat "you picked up a bunker (small)";', 1, true, true, "", 'iscop and player distance (nearestobjects [getpos player, ["Land_fortified_nest_small"],  3] select 0) < 5']],
  [player addAction ["Remove Danger Sign", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("danger" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Sign_Danger"],  3] select 0);["danger", 1] call INV_AddInvItem;player groupchat "you picked up a danger sign";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["Sign_danger"],  3] select 0) < 5']],
  [player addAction ["Remove ladder", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("land_ladder_half" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["land_ladder_half"],  3] select 0);["land_ladder_half", 1] call INV_AddInvItem;player groupchat "you picked up a ladder";', 1, true, true, "", 'iscop and player distance (nearestobjects [getpos player, ["land_ladder_half"],  3] select 0) < 5']],
  [player addAction ["Remove Road Barrier", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("Roadbarrier_long" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["RoadBarrier_long"],  3] select 0);player groupchat "you picked up a road barrier";', 1, true, true, "", 'iscop and player distance (nearestobjects [getpos player, ["RoadBarrier_long"],  3] select 0) < 5']],
  [player addAction ["Remove Road Barrier", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("RoadBarrier_light" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["RoadBarrier_light"],  3] select 0);player groupchat "you picked up a road barrier";', 1, true, true, "", 'iscop and player distance (nearestobjects [getpos player, ["RoadBarrier_light"],  3] select 0) < 5']],
  [player addAction ["Remove Caution Tape", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("10mTape" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["10mTape"],  3] select 0);player groupchat "you picked up a Caution Tape";', 1, true, true, "", 'iscop and player distance (nearestobjects [getpos player, ["10mTape"],  3] select 0) < 5']],
  [player addAction ["Raise / Lower Gates", "gateController.sqf", [apowall], 1, false, true, "", "(player distance apowall < 5) and ((getPlayerUID player) in PDAviation_id)"]],
  [player addAction ["Sign-up for Debit Card", "noscript.sqf", '[] spawn OL_fnc_DebitCard', 1, false, true, "", "player distance mainbank <= 15 and (!OL_SignUp)"]],
  [player addAction ["Elect a Governor", "maindialogs.sqf", ["wahlen"], 1, false, true, "", "player distance rathaus <= 3"]],
  [player addAction ["Cleanup Bodybag", "noscript.sqf", 'deletevehicle (nearestobjects [getpos player, ["body"],  3] select 0);["geld", 1000] call INV_AddInvItem;player groupchat "You removed a bodybag and have received a cash reward for doing so";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["body"],  3] select 0) < 5']],
  [player addAction ["Impound vehicle", "noscript.sqf", '_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0); [_vcl] call OL_vehicle_Impound;', 1, true, true, "", '_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_vcl in INV_ServerVclArray and player distance _vcl < 10']],
  [player addAction ["Crime Log", "maindialogs.sqf", ["coplog"], 1, false, true, "", "player distance rathaus <= 3"]],
  [player addAction [format ["Buy K9 ($%1)", dog_cost], "copdog.sqf", ["buydog"], 1, false, true, "", '(player distance dogspawn <= 5 || player distance dogspawn2 <= 5) and ("OL_License_cop_k9" call OL_license_Owns)']],
  [player addAction ["Who do you work for?", "noscript.sqf", 'player groupchat format["this hooker works for %1.", leader (nearestobjects [getpos player, civworkerarray,  3] select 0)]', 1, true, true, "", '_slave = (nearestobjects [getpos player, civworkerarray, 3] select 0); !(_slave in playerarray) and player distance _slave < 5 and (leader _slave) in playerarray and iscop']],
  [player addAction ["Send hooker home", "noscript.sqf", '_slave = (nearestobjects [getpos player, civworkerarray,  3] select 0); _civ = leader _slave; deletevehicle _slave; [_civ, "Being a Pimp"] call OL_player_WarrantAdd; player groupchat "the hooker has been sent home!";', 1, true, true, "", '_slave = (nearestobjects [getpos player, civworkerarray, 3] select 0); !(_slave in playerarray) and player distance _slave < 5 and (leader _slave) in playerarray and iscop']],
  [player addAction ["Get in trailer", "trucking.sqf", [4], 1, true, true, "", '_vcl = (nearestobjects [getpos player, ["cl_del_mackr", "cl_trucktest_mackr", "cl_flatbed_mackr"], 5] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray']],
  [player addAction ["Search trailer", "trucking.sqf", [5], 1, true, true, "", '_carg = (nearestobjects [getpos player, ["Land_bags_stack_EP1", "Land_bags_EP1", "Land_Bag_EP1"], 2] select 0);player distance _carg < 2 and iscop']],
  [player addAction [localize "STRS_addaction_trunk_see", "noscript.sqf", '_vcls = call CP_misc_NearestCars;_str = format["%1_storage", _vcls select 0];[_str] execVM "vehiclecheck.sqf";', 1, true, true, "", '_vcls = call CP_misc_NearestCars;_vcl = _vcls select 0;player distance _vcl < 5 and !(_vcl in INV_VehicleArray) and _vcl in INV_ServerVclArray and iscop']],
  [player addAction [localize "STRS_addaction_trunk_check", "noscript.sqf", '_vcls = call CP_misc_NearestCars;_str = format["%1_storage", _vcls select 0];if([_vcls select 0, _str] call INV_RemoveIllegalStorage)then{call compile format["publicvariable ""%1"";", _str]};', 1, true, true, "", '_vcls = call CP_misc_NearestCars;_vcl = _vcls select 0;player distance _vcl < 5 and !(_vcl in INV_VehicleArray) and _vcl in INV_ServerVclArray and iscop']],
  [player addAction ["Reset Laws", "noscript.sqf", "[] call OL_misc_resetLaws;", 1, false, true, "", 'player distance rathaus <= 10 && (getPlayerUID player in Sgt_id)']],
  [player addAction ["Pull out", "noscript.sqf", '(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "pullout.sqf";', 1, true, true, "", '_vcls = call CP_misc_NearestCars;_vcl = _vcls select 0;player distance _vcl < 5 and count (crew _vcl) > 0 and _vcl in INV_ServerVclArray']],
  [player addAction ["Vehicle information", "noscript.sqf", '(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "vehinfo.sqf";', 1, true, true, "", '_vcls = call CP_misc_NearestCars;_vcl = _vcls select 0;player distance _vcl < 5 and _vcl in INV_ServerVclArray']],
  [player addAction ["Put civilian in car", "preArrest.sqf", [], 1, true, true, "", '_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and iscop']],
  [player addAction ["Unflip vehicle", "noscript.sqf", '_vcls = call CP_misc_NearestCars; [_vcls select 0] call OL_vehicle_Unflip;', 1, false, true, "", '_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_VehicleArray']],
  [player addAction ["[Service Helicopter]", "noscript.sqf", '["REPAIR"] call OL_misc_PDFunctions', 1, false, true, "", '(player distance jailpad1 <= 10 || player distance jailpad2 <= 10 || player distance jailpad_2 <= 10 || player distance jailpadcg <= 10) and (((getplayeruid player) in PDAviation_id) || ((getplayeruid player) in CoastGuard_id))']],
  [player addAction ["[Clear Helipad]", "noscript.sqf", '["CLEAR_HELIPAD"] call OL_misc_PDFunctions', 1, false, true, "", '(player distance jailpad1 <= 10 || player distance jailpad2 <= 10 || player distance jailpad_2 <= 10 || player distance jailpadcg <= 10) and (((getplayeruid player) in PDAviation_id) || ((getplayeruid player) in CoastGuard_id))']],
  [player addAction ["[Clear Dock]", "noscript.sqf", '["CLEAR_DOCK"] call OL_misc_PDFunctions', 1, false, true, "", '(player distance cgp2 <= 10 || player distance cgp4 <= 10) and (((getplayeruid player) in CoastGuard_id) || ((getplayeruid player) in SWAT_id))']],
  [player addAction ["[Go to Sheriff Office]", "noscript.sqf", 'player setpos (getmarkerpos "deputyspawn");player groupChat format["Welcome to the Sheriff Office %1!", PlayerName];', 1, false, true, "", 'player distance sherifftele <= 5 && ((getplayeruid player) in JrDeputy_id)']],
  [player addAction ["[Go to Sheriff D.N.R Outpost]", "noscript.sqf", 'player setpos (getmarkerpos "cgspawn");player groupChat format["Welcome to the Sheriff D.N.R. Outpost %1!", PlayerName];', 1, false, true, "", '(player distance sherifftele <= 5 || player distance deputyspawn <= 5) && ((getplayeruid player) in JrDeputy_id)']],
  [player addAction ["Buy Donut", "noscript.sqf", '["donut 1"] call Shops_fnc_buyDonuts;', 1, false, true, "", "player distance donutguy <= 5 || player distance donutguy2 <= 5"]],
  [player addAction ["Buy Half Dozen Donuts", "noscript.sqf", '["donut 6"] call Shops_fnc_buyDonuts', 1, false, true, "", "player distance donutguy <= 5 || player distance donutguy2 <= 5"]],
  [player addAction ["Buy Dozen Donuts", "noscript.sqf", '["donut 12"] call Shops_fnc_buyDonuts', 1, false, true, "", "player distance donutguy <= 5 || player distance donutguy2 <= 5"]],
  [player addAction ["Federal Impound vehicle", "noscript.sqf", '_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 5] select 0); [_vcl] call OL_vehicle_FedImpound;', 1, false, true, "", '_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 5] select 0);_vcl in INV_ServerVclArray and player distance _vcl < 10 and ( ((getplayeruid player) in Cpl_id) || ((getplayeruid player) in CplDeputy_id))']],
  [player addAction ["[SAVE YOUR POLICE VEHICLE]", "noscript.sqf", "if (OL_SavingVehicle) exitWith {}; OL_SavingVehicle = true; _vcls = call CP_misc_NearestCars; [_vcls select 0] call Stats_fnc_SaveVehicle; OL_SavingVehicle = false;", 1, false, true, "", '_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and _vcl in INV_VehicleArray and (player distance OL_COP_LANDSAVE1 <= 30 or player distance OL_COP_LANDSAVE2 <= 30)']],
  [player addAction ["[Take Land Vehicle From Storage]","noscript.sqf",'["FETCH", "LandVehicle", OL_COP_LANDSPAWN1] call OL_ui_VehicleMenu;',1,false,true,"","player distance OL_COP_LANDSAVE1 <= 3"]],
  [player addAction ["[Take Land Vehicle From Storage]","noscript.sqf",'["FETCH", "LandVehicle", OL_COP_LANDSPAWN2] call OL_ui_VehicleMenu;',1,false,true,"","player distance OL_COP_LANDSAVE2 <= 3"]],
  [player addAction ["Reset Jail Gate Code", "noscript.sqf", "call OL_misc_resetJailCode;", 1, false, true, "", "player distance atmjail <= 5 && (((getPlayerUID player) in Cpl_ID))"]],
  [player addAction ["[Traffic Stop Situation]", "noscript.sqf", '["TrafficStop"] call OL_misc_PDFunctions', 1, false, true, "", "(player distance FTOTRAINER <= 5) and (((getPlayerUID player) in FTO_id))"]],
  [player addAction ["[Felony Stop Situation]", "noscript.sqf", '["FelonyStop"] call OL_misc_PDFunctions', 1, false, true, "", "(player distance FTOTRAINER <= 5) and (((getPlayerUID player) in FTO_id))"]],
  [player addAction ["[Clear Training Pad]", "noscript.sqf", '["Trainingsweep"] call OL_misc_PDFunctions', 1, false, true, "", "(player distance FTOTRAINER <= 5) and (((getPlayerUID player) in FTO_id))"]],
  [player addaction ["[SAVE YOUR POLICE AIR VEHICLE]", "noscript.sqf", 'if (OL_SavingVehicle) exitWith {}; OL_SavingVehicle = true; _vcls = call CP_misc_NearestCars; [_vcls select 0] call Stats_fnc_SaveVehicle; OL_SavingVehicle = false;', 1, true, true, "", '_vcl = (nearestobjects [getpos player, ["Air"], 7] select 0);player distance _vcl < 7 and _vcl in INV_ServerVclArray and _vcl in INV_VehicleArray and (player distance OL_COP_AIRSAVE <= 50)']],
  [player addaction ["[Take Air Vehicle From Storage]", "noscript.sqf", '["FETCH", "Air", OL_COP_AIRSPAWN] call OL_ui_VehicleMenu;', 1, false, true, "", "player distance OL_COP_AIRSAVE <= 3"]],
  [player addAction ["Open License Menu", "noscript.sqf", "[] call OL_ui_LicenseMenu;", 1, false, true, "", "player distance OL_ATM_PD <= 5 || player distance OL_ATM_PDCommand <= 5 || player distance OL_Shop_Undercover <= 5 || player distance OL_ATM_Sheriff <= 5 || player distance OL_ATM_PDSgt <= 5 || player distance OL_ATM_FTO <= 5 || player distance OL_ATM_K9 <= 5 || player distance OL_ATM_PDAviation <= 5 || player distance OL_ATM_SWAT <= 5 || player distance OL_ATM_CoastGuard <= 5 || player distance OL_ATM_CID <= 5"]],
  [player addAction ["Open Clothes Menu", "noscript.sqf", '[] call OL_ui_ClothesMenu;', 1, false, true, "", "(player distance OL_ATM_SWAT <=5 || player distance OL_ATM_PDCommand <=5 || player distance OL_ATM_PDSgt <=5 || player distance OL_ATM_PD <=5 || player distance OL_ATM_FTO <=5 || player distance OL_ATM_CID <=5 || player distance OL_ATM_K9 <=5 || player distance OL_ATM_PDAviation <=5 || player distance OL_ATM_Sheriff <=5 || player distance OL_Shop_Cop_SheriffAvitaion <=5 || player distance OL_ATM_CoastGuard <=5) && iscop"]]
];
