//Property Of Our Life RPG
_role = player;
//========================   Help info and tutorials  ================================
//action1a = _role addaction ["Test","test.sqf",[1],1,false,true,"",""];
action1 = _role addaction ["Fire Rescue Rules and Tutorials","esuhelp.sqf",[1],1,false,true,"","player distance atm5 <= 10"];
action2 = _role addaction ["Use Fire Hose","ems.sqf",[],1,false,true,"",'_vcl = (nearestobjects [getpos player, ["firetruck","ibr_as350","Laddertruck","il_f350_brush","engine","rescue"], 40] select 0);player distance _vcl < 50'];
gasaction = _role addaction ["Fix Gas Leak","fixgas.sqf",[],1,false,true,"",'_vcl = (nearestobjects [getpos player, ["firetruck","ibr_as350","Laddertruck","il_f350_brush","engine","rescue"], 40] select 0);player distance _vcl < 50'];
wreckaction = _role addaction ["Clear Accident","clearaccident.sqf",[],1,false,true,"",'_vcl = (nearestobjects [getpos player, ["firetruck","ibr_as350","Laddertruck","il_f350_brush","engine","rescue"], 40] select 0);player distance _vcl < 50'];
fdmedaction = _role addaction ["Take Medic Kit","scripts\foster\ems3.sqf",[],1,false,true,"",'_vcl = (nearestobjects [getpos player, ["firetruck","ibr_as350","Laddertruck","il_f350_brush","engine","rescue"], 40] select 0);player distance _vcl < 5'];

//=======================   ADMIN CAMERA ==============================================
action12 = _role addaction ["Admin Spectate","tcgcode.sqf",[1],1,false,true,"","player distance rubblepile <= 3"];
//action12a = _role addaction ["AntiClown","servermissionfile\umad.sqf";,[1],1,false,true,"","player distance rubblepile <= 3"];
//========================================Elevaotr======================================================
action13 = _role addaction ["Up Elevator","elevator.sqf",[1],1,false,true,"",'player distance getmarkerpos "elevator1" <= 5'];
action13a = _role addaction ["Down Elevator","elevator.sqf",[2],1,false,true,"",'player distance elevator2 <= 5'];
//===================================== IMPOUND AREA==================================================
action19 = _role addaction ["Impound Lot","maindialogs.sqf",["impound"],1,false,true,"","player distance impoundbuy <= 5"];
action20 = _role addaction ["Impound Lot","maindialogs.sqf",["impound"],1,false,true,"","player distance copcar <= 5"];
//==================================== OBJECT ACTIONS =================================================
action13 = _role addaction ["Remove Taki Flag","noscript.sqf",'if (((call INV_GetOwnWeight) + ("FlagCarrierTakistanKingdom_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierTakistanKingdom_EP1"],  3] select 0);["FlagCarrierTakistanKingdom_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a flag";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FlagCarrierTakistanKingdom_EP1"],  3] select 0) < 15'];
action14 = _role addaction ["Remove Russian Flag","noscript.sqf",'if (((call INV_GetOwnWeight) + ("FlagCarrierRU" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierRU"],  3] select 0);["FlagCarrierRU", 1] call INV_AddInvItem;player groupchat "you picked up a flag";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FlagCarrierRU"],  3] select 0) < 15'];
action15 = _role addaction ["Remove US Flag","noscript.sqf",'if (((call INV_GetOwnWeight) + ("FlagCarrierUSA" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierUSA"],  3] select 0);["FlagCarrierUSA", 1] call INV_AddInvItem;player groupchat "you picked up a flag";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FlagCarrierUSA"],  3] select 0) < 15'];
action16 = _role addaction ["Remove Czech Flag","noscript.sqf",'if (((call INV_GetOwnWeight) + ("FlagCarrierCzechRepublic_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierCzechRepublic_EP1"],  3] select 0);["FlagCarrierCzechRepublic_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a flag";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FlagCarrierCzechRepublic_EP1"],  3] select 0) < 15'];
action17 = _role addaction ["Remove German Flag","noscript.sqf",'if (((call INV_GetOwnWeight) + ("FlagCarrierGermany_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierGermany_EP1"],  3] select 0);["FlagCarrierGermany_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a flag";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FlagCarrierGermany_EP1"],  3] select 0) < 15'];
action18 = _role addaction ["Remove GB Flag","noscript.sqf",'if (((call INV_GetOwnWeight) + ("FlagCarrierBAF" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FlagCarrierBAF"],  3] select 0);["FlagCarrierBAF", 1] call INV_AddInvItem;player groupchat "you picked up a flag";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FlagCarrierBAF"],  3] select 0) < 15'];
action22 = _role addaction ["Take Scuba Gear","noscript.sqf",'if (((call INV_GetOwnWeight) + ("gnt_scubaw" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0);["gnt_scubaw", 1] call INV_AddInvItem;player groupchat "you picked up scuba gear";',1,true,true,"",'player distance (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0) < 5'];
action24 = _role addaction ["Remove Stop Sign","noscript.sqf",'if (((call INV_GetOwnWeight) + ("glt_roadsign_octagon" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["glt_roadsign_octagon"],  10] select 0);["glt_roadsign_octagon", 1] call INV_AddInvItem;player groupchat "you picked up a stop sign";',1,true,true,"",' player distance (nearestobjects [getpos player, ["glt_roadsign_octagon"],  10] select 0) < 7'];
action26 = _role addaction ["Remove Roadblock","noscript.sqf",'if (((call INV_GetOwnWeight) + ("roadblock" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_CncBlock_Stripes"],  3] select 0);["roadblock", 1] call INV_AddInvItem;player groupchat "you picked up a roadblock";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_CncBlock_Stripes"],  3] select 0) < 5 '];
action27 = _role addaction ["Remove Bargate","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Bargate" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0);["Bargate", 1] call INV_AddInvItem;player groupchat "you picked up a bargate";',1,true,true,"",' player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7'];
action28 = _role addaction ["Remove Road Cone","noscript.sqf",'if (((call INV_GetOwnWeight) + ("roadcone" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0);["roadcone", 1] call INV_AddInvItem;player groupchat "you picked up a road cone";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0) < 5'];
action29 = _role addaction ["Open/close gate","noscript.sqf",'_gate = (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};',1,true,true,"",'player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7 '];
action34 = _role addaction ["Remove Bunker (small)","noscript.sqf",'if (((call INV_GetOwnWeight) + ("bunkersmall" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_fortified_nest_small"],  3] select 0);["bunkersmall", 1] call INV_AddInvItem;player groupchat "you picked up a bunker (small)";',1,true,true,"",' player distance (nearestobjects [getpos player, ["Land_fortified_nest_small"],  3] select 0) < 5'];
action35 = _role addaction ["Remove Danger Sign","noscript.sqf",'if (((call INV_GetOwnWeight) + ("danger" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Sign_Danger"],  3] select 0);["danger", 1] call INV_AddInvItem;player groupchat "you picked up a danger sign";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Sign_danger"],  3] select 0) < 5'];
action37 = _role addaction ["Remove ladder","noscript.sqf",'if (((call INV_GetOwnWeight) + ("land_ladder_half" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["land_ladder_half"],  3] select 0);["land_ladder_half", 1] call INV_AddInvItem;player groupchat "you picked up a ladder";',1,true,true,"",' player distance (nearestobjects [getpos player, ["land_ladder_half"],  3] select 0) < 5'];
action36 = _role addaction ["Remove Body","noscript.sqf",'deletevehicle (nearestobjects [getpos player, ["body"],  3] select 0);["geld", 5000] call INV_AddInvItem;player groupchat "You removed a bodybag and have received a $5,000 cash reward for doing so";',1,true,true,"",'player distance (nearestobjects [getpos player, ["body"],  3] select 0) < 5'];
//action38 = _role addaction ["Remove Road Barrier","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_RedWhiteBarrier" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_RedWhiteBarrier"],  3] select 0);["Land_RedWhiteBarrier", 1] call INV_AddInvItem;player groupchat "you picked up a road barrier";',1,true,true,"",' player distance (nearestobjects [getpos player, ["Land_RedWhiteBarrier"],  3] select 0) < 5'];
action39 = _role addaction ["Remove Road Barrier","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Roadbarrier_long" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["RoadBarrier_long"],  3] select 0);["RoadBarrier_long", 1] call INV_AddInvItem;player groupchat "you picked up a road barrier";',1,true,true,"",' player distance (nearestobjects [getpos player, ["RoadBarrier_long"],  3] select 0) < 5'];
action40 = _role addaction ["Remove Road Barrier","noscript.sqf",'if (((call INV_GetOwnWeight) + ("RoadBarrier_light" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["RoadBarrier_light"],  3] select 0);["RoadBarrier_light", 1] call INV_AddInvItem;player groupchat "you picked up a road barrier";',1,true,true,"",' player distance (nearestobjects [getpos player, ["RoadBarrier_light"],  3] select 0) < 5'];
//==================================== MAYOR ELECTION =================================================
action41 = _role addaction ["Elect a Governor","maindialogs.sqf",["wahlen"],1,false,true,"","player distance rathaus <= 3"];
//===================================== MAYOR ACTIONS =================================================
action42 = _role addaction ["Change the Law","maindialogs.sqf",["gesetz"],1,false,true,"","player distance rathaus <= 3 and isMayor"];
action43 = _role addaction ["Change taxes","maindialogs.sqf",["steuern"],1,false,true,"","player distance rathaus <= 3 and isMayor"];
//======================================== Debit Card ===================================================
action44 = _role addaction ["Sign-up for Debit Card","debitcardsignup.sqf",["mainbank"],1,false,true,"","player distance mainbank <= 15 and (!SigningUpForDebitCard)"];
//===================================== BUY INSURANCE ===================================================
//action44 = _role addaction [format["Buy Bank Insurance ($%1)", ("bankversicherung" call INV_getitemBuyCost)],"noscript.sqf",'if("geld" call INV_GetItemAmount < ("bankversicherung" call INV_getitemBuyCost))exitwith{player groupchat "not enough money"};["geld", -("bankversicherung" call INV_getitemBuyCost)] call INV_AddInvItem;["bankversicherung", 1] call INV_AddInvItem;player groupchat format["you bought bank insurance for $%1", ("bankversicherung" call INV_getitemBuyCost)];',1,false,true,"","player distance mainbank <= 3"];
//======================================= CRIMELOG ====================================================
action45 = _role addaction ["Crime Log","maindialogs.sqf",["coplog"],1,false,true,"","player distance rathaus <= 3"];
//========================================= BAIL ======================================================	 
action46 = _role addaction [format ["Pay Bail", slave_cost],"maindialogs.sqf", ["bail"],1,false,true,"","player distance bailflag <= 3 and isciv"];
action47 = _role addaction ["Get in Trailer","trucking.sqf",[4],1,true,true,"",'_vcl = (nearestobjects [getpos player, ["cl_del_mackr","cl_trucktest_mackr","cl_flatbed_mackr"], 5] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
//====================================== VEHICLE ACTIONS ================================================
action48 = _role addaction ["Impound vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);[_vcl, "impound"] execVM "impound.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_vcl in INV_ServerVclArray and player distance _vcl < 10'];
action49 = _role addaction ["Pull out","noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "pullout.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and count (crew _vcl) > 0 and _vcl in INV_ServerVclArray and (call INV_isArmed)'];
action50 = _role addaction [localize "STRS_addAction_vehicleinfo","noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "vehinfo.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
//===================================PLANTS=================================
action51 = _role addaction ["Remove Betul Bush","noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_betulaHumilis" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_betulaHumilis"],  3] select 0);["MAP_b_betulaHumilis", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_betulaHumilis"],  3] select 0) < 5'];
action52 = _role addaction ["Remove Canina Bush","noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_canina2s" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_canina2s"],  3] select 0);["MAP_b_canina2s", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_canina2s"],  3] select 0) < 5'];
action53 = _role addaction ["Remove Craet Bush","noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_craet2" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_craet2"],  3] select 0);["MAP_b_craet2", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_craet2"],  3] select 0) < 5'];
action54 = _role addaction ["Remove Sambucus Bush","noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_sambucus" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_sambucus"],  3] select 0);["MAP_b_sambucus", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_sambucus"],  3] select 0) < 5'];
action55 = _role addaction ["Remove Salix Bush","noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_salix2s" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_salix2s"],  3] select 0);["MAP_b_salix2s", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_salix2s"],  3] select 0) < 5'];
action56 = _role addaction ["Remove Prunus Bush","noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_prunus" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_prunus"],  3] select 0);["MAP_b_prunus", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_prunus"],  3] select 0) < 5'];
action57 = _role addaction ["Remove Pmugo Bush","noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_pmugo" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_pmugo"],  3] select 0);["MAP_b_pmugo", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_pmugo"],  3] select 0) < 5'];
action58 = _role addaction ["Remove Corylus Bush","noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_corylus" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_corylus"],  3] select 0);["MAP_b_corylus", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_corylus"],  3] select 0) < 5'];
action59 = _role addaction ["Remove Craet Bush","noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_craet1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_craet1"],  3] select 0);["MAP_b_craet1", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_craet1"],  3] select 0) < 5'];
action60 = _role addaction ["Remove Corylus Bush","noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_b_corylus2s" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_b_corylus2s"],  3] select 0);["MAP_b_corylus2s", 1] call INV_AddInvItem;player groupchat "you picked up a bush";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_b_corylus2s"],  3] select 0) < 5'];
//======================================== SHOP EXPORT ==================================================
_num1 = (shop1 call INV_getshopnum);
_num2 = (shop2 call INV_getshopnum);
_num3 = (shop3 call INV_getshopnum);
_num4 = (shop4 call INV_getshopnum);
_num5 = (pdfood call INV_getshopnum);
action98 = _role addaction ["Shop 1 export","shopdialogs.sqf",[_num1],1,false,true,"","player distance shop1export <= 3"];
action99 = _role addaction ["Shop 2 export","shopdialogs.sqf",[_num2],1,false,true,"","player distance shop2export <= 3"];
action100 = _role addaction ["Shop 3 export","shopdialogs.sqf",[_num3],1,false,true,"","player distance shop3export <= 3"];
action102 = _role addaction ["Shop 4 export","shopdialogs.sqf",[_num4],1,false,true,"","player distance shop4export <= 3"];
action103 = _role addaction ["Food and Candy","shopdialogs.sqf",[_num5],1,false,true,"",'player distance (nearestobjects [getpos player, ["ibr_van_BNK"],  10] select 0) < 3'];
//========================   unflip vehicle     ================================
action121 = _role addaction ["Unflip vehicle","unflipvehicle.sqf",["unflip"],1,false,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_VehicleArray'];
//ESU
//action126 = _role addaction ["Get Oil","oil.sqf",["getoil"],1,false,true,"","player distance oilrig1 < 10 or player distance oilrig2 < 10"];
action97 = _role addaction ["Repair vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);[_vcl] execVM "repairvehicle.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_vcl in INV_ServerVclArray and player distance _vcl < 10'];
//action98 = _role addaction ["Start CPR","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Man"], 3] select 1);[_vcl] execVM "cpr.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Man"], 3] select 1);player distance _vcl < 2'];
//======================================== Donate shop===================================================
_num15 = (donatebuy call INV_getshopnum);
actiondonate = _role addaction ["Donator Shop","shopdialogs.sqf",[_num15],1,false,true,"","player distance donatebuy <= 5"];
//======================================== Skins ===================================================
actionems0 = _role addaction ["Switch to Paramedic Uniform","noscript.sqf",'["KPFS_THW_Press"] call clothes;',1,true,true,"",'player distance atm5 < 2 and ((getplayeruid player) in EMT1_id)'];
actionems1 = _role addaction ["Switch to Turn Out Uniform","noscript.sqf",'["a2l_firefighter1"] call clothes;',1,true,true,"",'player distance atm5 < 2 and ((getplayeruid player) in EMT3_id)'];
actionems2 = _role addaction ["Switch to Turn Out SCBA Uniform","noscript.sqf",'["a2l_firefighter"] call clothes;',1,true,true,"",'player distance atm5 < 2 and ((getplayeruid player) in EMT3_id)'];
actionems3 = _role addaction ["Switch to Hazmat Red Unifrom","noscript.sqf",'["hazmatRed"] call clothes;',1,true,true,"",'player distance atm5 < 2 and ((getplayeruid player) in EMT3_id)'];
actionems4 = _role addaction ["Switch to Hazmat Yellow Unifrom","noscript.sqf",'["hazmatYellow"] call clothes;',1,true,true,"",'player distance atm5 < 2 and ((getplayeruid player) in EMT3_id)'];
actionems5 = _role addaction ["Switch to Paramedic Uniform","noscript.sqf",'["KPFS_THW_Press"] call clothes;',1,true,true,"",'player distance atmsubfire < 2 and ((getplayeruid player) in EMT1_id)'];
actionems6 = _role addaction ["Switch to Turn Out Uniform","noscript.sqf",'["a2l_firefighter1"] call clothes;',1,true,true,"",'player distance atmsubfire < 2 and ((getplayeruid player) in EMT3_id)'];
actionems7 = _role addaction ["Switch to Turn Out SCBA Uniform","noscript.sqf",'["a2l_firefighter"] call clothes;',1,true,true,"",'player distance atmsubfire < 2 and ((getplayeruid player) in EMT3_id)'];
actionems8 = _role addaction ["Switch to Hazmat Red Unifrom","noscript.sqf",'["hazmatRed"] call clothes;',1,true,true,"",'player distance atmsubfire < 2 and ((getplayeruid player) in EMT3_id)'];
actionems9 = _role addaction ["Switch to Hazmat Yellow Unifrom","noscript.sqf",'["hazmatYellow"] call clothes;',1,true,true,"",'player distance atmsubfire < 2 and ((getplayeruid player) in EMT3_id)'];
//======================================== Skins ===================================================
actionemst1 = _role addaction ["[Transfer to Main Fire House]","scripts\foster\ems1.sqf",[],1,false,true,"",'player distance fire2tele <= 3'];
actionemst2 = _role addaction ["[Transfer to Sub Fire Station]","scripts\foster\ems2.sqf",[],1,false,true,"",'player distance fire1tele <= 3'];