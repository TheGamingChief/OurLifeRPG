OL_PlayerActions = [
  [player addAction ["Use Fire Hose", "ems.sqf", [], 1, false, true, "", '_vcl = (nearestobjects [getpos player, ["firetruck", "ibr_as350", "Laddertruck", "il_f350_brush", "engine", "rescue", "a2l_brush", "a2l_kme_res", "a2l_kme", "a2l_kme_air", "a2l_kme_res116", "a2l_medsquad",
  "a2l_squad"], 40] select 0);player distance _vcl < 50']],
  [player addAction ["Fix Gas Leak", "fixgas.sqf", [], 1, false, true, "", '_vcl = (nearestobjects [getpos player, ["firetruck", "ibr_as350", "Laddertruck", "il_f350_brush", "engine", "rescue", "a2l_brush", "a2l_kme_res", "a2l_kme", "a2l_kme_air", "a2l_kme_res116", "a2l_medsquad",
  "a2l_squad"], 40] select 0);player distance _vcl < 50']],
  [player addAction ["Clear Accident", "clearaccident.sqf", [], 1, false, true, "", '_vcl = (nearestobjects [getpos player, ["firetruck", "ibr_as350", "Laddertruck", "il_f350_brush", "engine", "rescue", "a2l_brush", "a2l_kme_res", "a2l_kme", "a2l_kme_air", "a2l_kme_res116","a2l_medsquad",
  "a2l_squad"], 40] select 0);player distance _vcl < 50']],
  [player addAction ["Take Medic Kit", "noscript.sqf", '["medikit", 1] call INV_AddInvItem;player groupChat "you pulled a medic kit out of the truck.";', 1, false, true, "", '_vcl = (nearestobjects [getpos player, ["firetruck", "ibr_as350", "Laddertruck", "il_f350_brush", "engine", "rescue", "a2l_brush", "a2l_kme_res", "a2l_kme", "a2l_kme_air", "a2l_kme_res116", "a2l_medsquad",
  "a2l_squad"], 40] select 0);player distance _vcl < 5']],
  [player addAction ["Gear Up", "noscript.sqf", '[] call OL_ui_ClothesMenu', 1, false, true, "", '_vcl = (nearestobjects [getpos player, ["firetruck", "ibr_as350", "Laddertruck", "il_f350_brush", "engine", "rescue", "a2l_brush", "a2l_kme_res", "a2l_kme", "a2l_kme_air", "a2l_kme_res116", "a2l_medsquad",
  "a2l_squad"], 40] select 0);player distance _vcl < 5']],
  [player addAction ["Admin Spectate", "tcgcode.sqf", [1], 1, false, true, "", "player distance rubblepile <= 3"]],
  [player addAction ["Up Elevator", "elevator.sqf", [1], 1, false, true, "", 'player distance getmarkerpos "elevator1" <= 5']],
  [player addAction ["Down Elevator", "elevator.sqf", [2], 1, false, true, "", 'player distance elevator2 <= 5']],
  [player addaction ["Impound Lot", "noscript.sqf", '["RETRIEVE", impoundbuy] call OL_ui_ImpoundLot;', 1, false, true, "", "player distance impoundbuy <= 5"]],
  [player addaction ["Impound Lot", "noscript.sqf", '["RETRIEVE", impoundbuy_pd] call OL_ui_ImpoundLot;', 1, false, true, "", "player distance impoundbuy_pd <= 5"]],
  [player addAction ["[Service Truck]", "noscript.sqf", '["SERVICE"] call OL_misc_EMSFunctions', 1, false, true, "", '(player distance emsrefuel1 <= 5 || player distance emsrefuel2 <= 5) and ((getplayeruid player) in EMT1_id)']],
  [player addAction ["Remove Taki Flag", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("FlagCarrierTakistanKingdom_EP1" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierTakistanKingdom_EP1"], 3] select 0);["FlagCarrierTakistanKingdom_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a flag";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["FlagCarrierTakistanKingdom_EP1"], 3] select 0) < 15']],
  [player addAction ["Remove Russian Flag", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("FlagCarrierRU" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierRU"], 3] select 0);["FlagCarrierRU", 1] call INV_AddInvItem;player groupchat "you picked up a flag";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["FlagCarrierRU"], 3] select 0) < 15']],
  [player addAction ["Remove US Flag", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("FlagCarrierUSA" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierUSA"], 3] select 0);["FlagCarrierUSA", 1] call INV_AddInvItem;player groupchat "you picked up a flag";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["FlagCarrierUSA"], 3] select 0) < 15']],
  [player addAction ["Remove Czech Flag", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("FlagCarrierCzechRepublic_EP1" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierCzechRepublic_EP1"], 3] select 0);["FlagCarrierCzechRepublic_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a flag";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["FlagCarrierCzechRepublic_EP1"], 3] select 0) < 15']],
  [player addAction ["Remove German Flag", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("FlagCarrierGermany_EP1" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierGermany_EP1"], 3] select 0);["FlagCarrierGermany_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a flag";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["FlagCarrierGermany_EP1"], 3] select 0) < 15']],
  [player addAction ["Remove GB Flag", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("FlagCarrierBAF" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierBAF"], 3] select 0);["FlagCarrierBAF", 1] call INV_AddInvItem;player groupchat "you picked up a flag";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["FlagCarrierBAF"], 3] select 0) < 15']],
  [player addAction ["Take Scuba Gear", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("gnt_scubaw" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["gnt_scubaw"], 10] select 0);["gnt_scubaw", 1] call INV_AddInvItem;player groupchat "you picked up scuba gear";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["gnt_scubaw"], 10] select 0) < 5']],
  [player addAction ["Remove Stop Sign", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("glt_roadsign_octagon" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["glt_roadsign_octagon"], 10] select 0);["glt_roadsign_octagon", 1] call INV_AddInvItem;player groupchat "you picked up a stop sign";', 1, true, true, "", ' player distance (nearestobjects [getpos player, ["glt_roadsign_octagon"], 10] select 0) < 7']],
  [player addAction ["Remove Roadblock", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("roadblock" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_CncBlock_Stripes"], 3] select 0);["roadblock", 1] call INV_AddInvItem;player groupchat "you picked up a roadblock";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["Land_CncBlock_Stripes"], 3] select 0) < 5 ']],
  [player addAction ["Remove Bargate", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("Bargate" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["ZavoraAnim"], 10] select 0);["Bargate", 1] call INV_AddInvItem;player groupchat "you picked up a bargate";', 1, true, true, "", ' player distance (nearestobjects [getpos player, ["ZavoraAnim"], 10] select 0) < 7']],
  [player addAction ["Remove Road Cone", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("roadcone" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_coneLight"], 3] select 0);["roadcone", 1] call INV_AddInvItem;player groupchat "you picked up a road cone";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["Land_coneLight"], 3] select 0) < 5']],
  [player addAction ["Open/close gate", "noscript.sqf", '_gate = (nearestobjects [getpos player, ["ZavoraAnim"], 10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["ZavoraAnim"], 10] select 0) < 7 ']],
  [player addAction ["Remove Bunker (small)", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("bunkersmall" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_fortified_nest_small"], 3] select 0);["bunkersmall", 1] call INV_AddInvItem;player groupchat "you picked up a bunker (small)";', 1, true, true, "", ' player distance (nearestobjects [getpos player, ["Land_fortified_nest_small"], 3] select 0) < 5']],
  [player addAction ["Remove Danger Sign", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("danger" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Sign_Danger"], 3] select 0);["danger", 1] call INV_AddInvItem;player groupchat "you picked up a danger sign";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["Sign_danger"], 3] select 0) < 5']],
  [player addAction ["Remove ladder", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("land_ladder_half" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["land_ladder_half"], 3] select 0);["land_ladder_half", 1] call INV_AddInvItem;player groupchat "you picked up a ladder";', 1, true, true, "", ' player distance (nearestobjects [getpos player, ["land_ladder_half"], 3] select 0) < 5']],
  [player addAction ["Remove Body", "noscript.sqf", 'deletevehicle (nearestobjects [getpos player, ["body"], 3] select 0);["geld", 5000] call INV_AddInvItem;player groupchat "You removed a bodybag and have received a $5, 000 cash reward for doing so";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["body"], 3] select 0) < 5']],
  [player addAction ["Remove Road Barrier", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("Roadbarrier_long" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["RoadBarrier_long"], 3] select 0);["RoadBarrier_long", 1] call INV_AddInvItem;player groupchat "you picked up a road barrier";', 1, true, true, "", ' player distance (nearestobjects [getpos player, ["RoadBarrier_long"], 3] select 0) < 5']],
  [player addAction ["Remove Road Barrier", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("RoadBarrier_light" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["RoadBarrier_light"], 3] select 0);["RoadBarrier_light", 1] call INV_AddInvItem;player groupchat "you picked up a road barrier";', 1, true, true, "", ' player distance (nearestobjects [getpos player, ["RoadBarrier_light"], 3] select 0) < 5']],
  [player addAction ["Elect a Governor", "maindialogs.sqf", ["wahlen"], 1, false, true, "", "player distance rathaus <= 3"]],
  [player addAction ["Change the Law", "maindialogs.sqf", ["gesetz"], 1, false, true, "", "player distance rathaus <= 3 and isMayor"]],
  [player addAction ["Change taxes", "maindialogs.sqf", ["steuern"], 1, false, true, "", "player distance rathaus <= 3 and isMayor"]],
  [player addAction ["Sign-up for Debit Card", "noscript.sqf", '[] spawn OL_fnc_DebitCard', 1, false, true, "", "player distance mainbank <= 15 and (!OL_SignUp)"]],
  [player addAction ["Crime Log", "maindialogs.sqf", ["coplog"], 1, false, true, "", "player distance rathaus <= 3"]],
  [player addAction [format ["Pay Bail", slave_cost], "maindialogs.sqf", ["bail"], 1, false, true, "", "player distance OL_Shop_JailFood <= 3 and isamedic"]],
  [player addaction ["Make License Plate", "noscript.sqf", '[] call Jail_fnc_createPlates;', 1, false, true, "", "(player distance plate1 <= 3 || player distance plate2 <= 3) and platesavailable"]],
  [player addAction ["Get in Trailer", "trucking.sqf", [4], 1, true, true, "", '_vcl = (nearestobjects [getpos player, ["cl_del_mackr", "cl_trucktest_mackr", "cl_flatbed_mackr"], 5] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray']],
  [player addAction ["Impound vehicle", "noscript.sqf", '_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0); [_vcl] call OL_vehicle_Impound;', 1, true, true, "", '_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_vcl in INV_ServerVclArray and player distance _vcl < 10']],
  [player addAction ["Pull out", "noscript.sqf", '(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "pullout.sqf";', 1, true, true, "", '_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and count (crew _vcl) > 0 and _vcl in INV_ServerVclArray and (call INV_isArmed)']],
  [player addAction ["Vehicle information", "noscript.sqf", '(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "vehinfo.sqf";', 1, true, true, "", '_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray']],
  [player addAction ["Remove Betul Bush", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("MAP_b_betulaHumilis" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_betulaHumilis"], 3] select 0);["MAP_b_betulaHumilis", 1] call INV_AddInvItem;player groupchat "you picked up a bush";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["MAP_b_betulaHumilis"], 3] select 0) < 5']],
  [player addAction ["Remove Canina Bush", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("MAP_b_canina2s" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_canina2s"], 3] select 0);["MAP_b_canina2s", 1] call INV_AddInvItem;player groupchat "you picked up a bush";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["MAP_b_canina2s"], 3] select 0) < 5']],
  [player addAction ["Remove Craet Bush", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("MAP_b_craet2" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_craet2"], 3] select 0);["MAP_b_craet2", 1] call INV_AddInvItem;player groupchat "you picked up a bush";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["MAP_b_craet2"], 3] select 0) < 5']],
  [player addAction ["Remove Sambucus Bush", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("MAP_b_sambucus" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_sambucus"], 3] select 0);["MAP_b_sambucus", 1] call INV_AddInvItem;player groupchat "you picked up a bush";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["MAP_b_sambucus"], 3] select 0) < 5']],
  [player addAction ["Remove Salix Bush", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("MAP_b_salix2s" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_salix2s"], 3] select 0);["MAP_b_salix2s", 1] call INV_AddInvItem;player groupchat "you picked up a bush";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["MAP_b_salix2s"], 3] select 0) < 5']],
  [player addAction ["Remove Prunus Bush", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("MAP_b_prunus" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_prunus"], 3] select 0);["MAP_b_prunus", 1] call INV_AddInvItem;player groupchat "you picked up a bush";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["MAP_b_prunus"], 3] select 0) < 5']],
  [player addAction ["Remove Pmugo Bush", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("MAP_b_pmugo" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_pmugo"], 3] select 0);["MAP_b_pmugo", 1] call INV_AddInvItem;player groupchat "you picked up a bush";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["MAP_b_pmugo"], 3] select 0) < 5']],
  [player addAction ["Remove Corylus Bush", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("MAP_b_corylus" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_corylus"], 3] select 0);["MAP_b_corylus", 1] call INV_AddInvItem;player groupchat "you picked up a bush";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["MAP_b_corylus"], 3] select 0) < 5']],
  [player addAction ["Remove Craet Bush", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("MAP_b_craet1" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_craet1"], 3] select 0);["MAP_b_craet1", 1] call INV_AddInvItem;player groupchat "you picked up a bush";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["MAP_b_craet1"], 3] select 0) < 5']],
  [player addAction ["Remove Corylus Bush", "noscript.sqf", 'if (((call INV_GetOwnWeight) + ("MAP_b_corylus2s" call INV_getitemTypeKg)) > INV_Weight)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_corylus2s"], 3] select 0);["MAP_b_corylus2s", 1] call INV_AddInvItem;player groupchat "you picked up a bush";', 1, true, true, "", 'player distance (nearestobjects [getpos player, ["MAP_b_corylus2s"], 3] select 0) < 5']],
  [player addAction ["Buy Donut", "noscript.sqf", '["donut 1"] call Shops_fnc_buyDonuts;', 1, false, true, "", "player distance donutguy <= 5 || player distance donutguy2 <= 5"]],
  [player addAction ["Buy Half Dozen Donuts", "noscript.sqf", '["donut 6"] call Shops_fnc_buyDonuts', 1, false, true, "", "player distance donutguy <= 5 || player distance donutguy2 <= 5"]],
  [player addAction ["Buy Dozen Donuts", "noscript.sqf", '["donut 12"] call Shops_fnc_buyDonuts', 1, false, true, "", "player distance donutguy <= 5 || player distance donutguy2 <= 5"]],
  [player addAction ["Unflip vehicle", "noscript.sqf", '_vcls = call CP_misc_NearestCars; [_vcls select 0] call OL_vehicle_Unflip;', 1, false, true, "", '_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_VehicleArray']],
  [player addAction ["Repair vehicle", "noscript.sqf", '_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);[_vcl] execVM "repairvehicle.sqf";', 1, true, true, "", '_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_vcl in INV_ServerVclArray and player distance _vcl < 10']],
  [player addAction ["[Transfer to Main Fire House]", "noscript.sqf", 'player setPos (getMarkerPos "respawn_guerrila");player groupChat format["Welcome to the Main Fire House %1!", PlayerName];', 1, false, true, "", 'player distance fire2tele <= 3']],
  [player addAction ["[Transfer to Sub Fire Station]", "noscript.sqf", 'player setPos (getMarkerPos "spawn_subfire");player groupChat format["Welcome to the Sub Fire Station %1!", PlayerName];', 1, false, true, "", 'player distance fire1tele <= 3']],
  [player addAction ["[Take Elevator To Second Floor]", "noscript.sqf", '["Elevator1"] call OL_misc_EMSFunctions', 1, false, true, "", "player distance EMSELI1 <= 5"]],
  [player addAction ["[Take Elevator To First Floor]", "noscript.sqf", '["Elevator2"] call OL_misc_EMSFunctions', 1, false, true, "", "player distance EMSELI2 <= 5"]],
  [player addAction ["[Clear Helipad]", "noscript.sqf", '["CLEAR"] call OL_misc_EMSFunctions', 1, false, true, "", "(player distance jailpad2_1 <= 5 || player distance jailpad2_1_1 <=5) && ((getPlayerUID player) in AirESU_id)"]],
  [player addAction ["[Save Your CFR Vehicle]", "noscript.sqf", "if (OL_SavingVehicle) exitWith {}; OL_SavingVehicle = true; _vcls = call CP_misc_NearestCars; [_vcls select 0] call Stats_fnc_SaveVehicle; OL_SavingVehicle = false;", 1, false, true, "", '_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and _vcl in INV_VehicleArray && (player distance OL_CFR_LANDSAVE <= 30)']],
  [player addAction ["[Take Land Vehicle From Storage]","noscript.sqf",'["FETCH", "LandVehicle", OL_CFR_LANDSPAWN] call OL_ui_VehicleMenu;',1,false,true,"","player distance OL_CFR_LANDSAVE <= 3"]],
  [player addaction ["[Save Your CFR Air Vehicle]", "noscript.sqf", 'if (OL_SavingVehicle) exitWith {}; OL_SavingVehicle = true; _vcls = call CP_misc_NearestCars; [_vcls select 0] call Stats_fnc_SaveVehicle; OL_SavingVehicle = false;', 1, true, true, "", '_vcl = (nearestobjects [getpos player, ["Air"], 7] select 0);player distance _vcl < 7 and _vcl in INV_ServerVclArray and _vcl in INV_VehicleArray and (player distance OL_Shop_EMTAir <= 50)']],
  [player addaction ["[Take Air Vehicle From Storage]", "noscript.sqf", '["FETCH", "Air", OL_CFR_AIRSPAWN] call OL_ui_VehicleMenu;', 1, false, true, "", "player distance OL_Shop_EMTAir <= 3"]],

  // License Menu
  [player addAction ["Open License Menu", "noscript.sqf", "[] call OL_ui_LicenseMenu;", 1, false, true, "", "player distance OL_ATM_MainFire <= 5 || player distance OL_ATM_SubFire <= 5"]],

  // Clothes Menu
  [player addAction ["Open Clothes Menu", "noscript.sqf", '[] call OL_ui_ClothesMenu', 1, false, true, "", "player distance OL_ATM_MainFire <= 5 || player distance OL_ATM_SubFire <= 5"]]
];
