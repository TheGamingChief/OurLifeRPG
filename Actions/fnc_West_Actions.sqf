//Property Of Our Life RPG
_uid = getPlayerUID player;
_role = player;

//action1a = _role addaction ["test","test.sqf",[1],1,false,true,"",""];
action6 = _role addaction ["Confiscate Money","mafiasafe.sqf", ["ausrauben", mafiasafe, "mafiasafe"],1,false,true,"","iscop and player distance mafiasafe <= 2"];
//=======================   ADMIN CAMERA ==============================================
action12 = _role addaction ["Admin Spectate","tcgcode.sqf",[1],1,false,true,"","player distance rubblepile <= 3"];
//action12a = _role addaction ["AntiClown","servermissionfile\umad.sqf";,[1],1,false,true,"","player distance rubblepile <= 3"];
//===================================== ASSASSINATION =================================================
action14 = _role addaction ["Escort VIP", "noscript.sqf", "[VIPtarget] join (group player); player groupchat ""escort the VIP to the police base before he is assassinated!"";",1,false,true,"","player distance VIPtarget < 5 and iscop"];
//===================================== TARGET RESET ==================================================
action17 = _role addaction ["Reset Targets","noscript.sqf",'{_x animate["terc",0]} foreach (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange1 < 10'];
action18 = _role addaction ["Reset targets","noscript.sqf",'{_x animate["terc",0]} foreach (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange2 < 10'];
//===================================== IMPOUND AREA==================================================
action19 = _role addaction ["Impound Lot","maindialogs.sqf",["impound"],1,false,true,"","player distance atm2 <= 5"];
action20 = _role addaction ["Impound Lot","maindialogs.sqf",["impound"],1,false,true,"","player distance copcar <= 5"];
action20a = _role addaction ["Impound Lot","maindialogs.sqf",["impound"],1,false,true,"","player distance atm4 <= 5"];
//================================== COP DELETE EVIDENCE ================================================
action21 = _role addaction ["Take criminal evidence","noscript.sqf",'player groupchat "evidence removed."; {deletevehicle _x} foreach (nearestobjects [getpos player, ["weaponholder"], 3])',1,true,true,"",'_weps = (nearestobjects [getpos player, ["weaponholder"], 3] select 0); player distance _weps < 5 and iscop'];
//================================== COP SLAVE ACTIONS ================================================
//action24 = _role addaction ["Who do you work for","noscript.sqf",'player groupchat format["this slave works for %1.", leader (nearestobjects [getpos player, civslavearray,  3] select 0)]',1,true,true,"",'_slave = (nearestobjects [getpos player, civslavearray, 3] select 0); !(_slave in playerarray) and player distance _slave < 5 and (leader _slave) in playerarray and iscop'];
//action25 = _role addaction ["Set slave free","noscript.sqf",'_slave = (nearestobjects [getpos player, civslavearray,  3] select 0); _civ = leader _slave; deletevehicle _slave; (format ["[""slave"", %1] spawn Isse_AddCrimeLogEntry; if(!(""being a slaver"" in %1_reason))then{%1_reason = %1_reason + [""being a slaver""]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 20000;", _civ]) call broadcast;player groupchat "the slave has been freed!";',1,true,true,"",'_slave = (nearestobjects [getpos player, civslavearray, 3] select 0); !(_slave in playerarray) and player distance _slave < 5 and (leader _slave) in playerarray and iscop'];
//==================================== OBJECT ACTIONS =================================================
action22 = _role addaction ["Take Scuba Gear","noscript.sqf",'if (((call INV_GetOwnWeight) + ("gnt_scubaw" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0);["gnt_scubaw", 1] call INV_AddInvItem;player groupchat "you picked up scuba gear";',1,true,true,"",'player distance (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0) < 5'];
action23 = _role addaction ["Remove Spike Strip","noscript.sqf",'if (((call INV_GetOwnWeight) + ("spikestrip" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["spikestrip"],  10] select 0);player groupchat "you picked up a spike strip";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["spikestrip"],  10] select 0) < 7'];
action24 = _role addaction ["Remove Stop Sign","noscript.sqf",'if (((call INV_GetOwnWeight) + ("glt_roadsign_octagon" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["glt_roadsign_octagon"],  10] select 0);player groupchat "you picked up a stop sign";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["glt_roadsign_octagon"],  10] select 0) < 7'];
action24a = _role addaction ["Remove Concrete Barrier Short","noscript.sqf",'if (((call INV_GetOwnWeight) + ("il_barrier" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["il_barrier"],  10] select 0);player groupchat "You picked up a Concrete Barrier Short";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["il_barrier"],  10] select 0) < 7'];
action25 = _role addaction ["Remove Searchlight","noscript.sqf",'if (((call INV_GetOwnWeight) + ("SearchLight_UN_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["SearchLight_UN_EP1"], 3] select 0);["SearchLight_UN_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a searchlight";',1,true,true,"",'_light = (nearestobjects [getpos player, ["SearchLight_UN_EP1"],  3] select 0); !(_light in speedcamarray) and player distance _light < 5 and iscop'];
action26 = _role addaction ["Remove Roadblock","noscript.sqf",'if (((call INV_GetOwnWeight) + ("roadblock" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_CncBlock_Stripes"],  3] select 0);player groupchat "you picked up a roadblock";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_CncBlock_Stripes"],  3] select 0) < 5 and iscop'];
action27 = _role addaction ["Remove Bargate","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Bargate" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0);["Bargate", 1] call INV_AddInvItem;player groupchat "you picked up a bargate";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7'];
action28 = _role addaction ["Remove Road Cone","noscript.sqf",'if (((call INV_GetOwnWeight) + ("roadcone" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0);player groupchat "you picked up a road cone";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0) < 5'];
action29 = _role addaction ["Open/close gate","noscript.sqf",'_gate = (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};',1,true,true,"",'player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7 and iscop'];
action30 = _role addaction ["Open/close gate","noscript.sqf",'_gate = (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};',1,true,true,"",'player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7 and isciv'];
action34 = _role addaction ["Remove Bunker (small)","noscript.sqf",'if (((call INV_GetOwnWeight) + ("bunkersmall" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_fortified_nest_small"],  3] select 0);["bunkersmall", 1] call INV_AddInvItem;player groupchat "you picked up a bunker (small)";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["Land_fortified_nest_small"],  3] select 0) < 5'];
action35 = _role addaction ["Remove Danger Sign","noscript.sqf",'if (((call INV_GetOwnWeight) + ("danger" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Sign_Danger"],  3] select 0);["danger", 1] call INV_AddInvItem;player groupchat "you picked up a danger sign";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Sign_danger"],  3] select 0) < 5'];
action37 = _role addaction ["Remove ladder","noscript.sqf",'if (((call INV_GetOwnWeight) + ("land_ladder_half" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["land_ladder_half"],  3] select 0);["land_ladder_half", 1] call INV_AddInvItem;player groupchat "you picked up a ladder";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["land_ladder_half"],  3] select 0) < 5'];
action39 = _role addaction ["Remove Road Barrier","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Roadbarrier_long" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["RoadBarrier_long"],  3] select 0);player groupchat "you picked up a road barrier";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["RoadBarrier_long"],  3] select 0) < 5'];
action40 = _role addaction ["Remove Road Barrier","noscript.sqf",'if (((call INV_GetOwnWeight) + ("RoadBarrier_light" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["RoadBarrier_light"],  3] select 0);player groupchat "you picked up a road barrier";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["RoadBarrier_light"],  3] select 0) < 5'];
action440 = _role addaction ["Remove Caution Tape","noscript.sqf",'if (((call INV_GetOwnWeight) + ("10mTape" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["10mTape"],  3] select 0);player groupchat "you picked up a Caution Tape";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["10mTape"],  3] select 0) < 5'];
actionapo = _role addaction ["Raise / Lower Gates","gateController.sqf",[apowall],1,false,true,"","(player distance apowall < 5) and ((getPlayerUID player) in PDAviation_id)"];
//======================================== Debit Card ===================================================
action44= _role addaction ["Sign-up for Debit Card","debitcardsignup.sqf",["mainbank"],1,false,true,"","player distance mainbank <= 15 and (!SigningUpForDebitCard)"];
//==================================== MAYOR ELECTION =================================================
action45 = _role addaction ["Elect a Governor","maindialogs.sqf",["wahlen"],1,false,true,"","player distance rathaus <= 3"];
//===================================== BUY INSURANCE ===================================================
action46 = _role addaction ["Cleanup Bodybag","noscript.sqf",'deletevehicle (nearestobjects [getpos player, ["body"],  3] select 0);["geld", 1000] call INV_AddInvItem;player groupchat "You removed a bodybag and have received a cash reward for doing so";',1,true,true,"",'player distance (nearestobjects [getpos player, ["body"],  3] select 0) < 5'];
action47 = _role addaction ["Impound vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);[_vcl, "impound"] execVM "impound.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_vcl in INV_ServerVclArray and player distance _vcl < 10'];
//======================================= CRIMELOG ====================================================
action50 = _role addaction ["Crime Log","maindialogs.sqf",["coplog"],1,false,true,"","player distance rathaus <= 3"];
action67 = _role addaction [format ["Buy K9 ($%1)", dog_cost],"copdog.sqf", ["buydog"],1,false,true,"",'player distance dogspawn <= 5 and ("K9_license" call INV_HasLicense)'];
action68 = _role addaction [format ["Buy K9 ($%1)", dog_cost],"copdog.sqf", ["buydog"],1,false,true,"",'player distance dogspawn2 <= 5 and ("K9_license" call INV_HasLicense)'];
action69 = _role addaction ["Who do you work for?","noscript.sqf",'player groupchat format["this hooker works for %1.", leader (nearestobjects [getpos player, civworkerarray,  3] select 0)]',1,true,true,"",'_slave = (nearestobjects [getpos player, civworkerarray, 3] select 0); !(_slave in playerarray) and player distance _slave < 5 and (leader _slave) in playerarray and iscop'];
action70 = _role addaction ["Send hooker home","noscript.sqf",'_slave = (nearestobjects [getpos player, civworkerarray,  3] select 0); _civ = leader _slave; deletevehicle _slave; (format ["[""slave"", %1] spawn Isse_AddCrimeLogEntry; if(!(""being a pimp"" in %1_reason))then{%1_reason = %1_reason + [""being a pimp""]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 20000;", _civ]) call broadcast;player groupchat "the hooker has been sent home!";',1,true,true,"",'_slave = (nearestobjects [getpos player, civworkerarray, 3] select 0); !(_slave in playerarray) and player distance _slave < 5 and (leader _slave) in playerarray and iscop'];
action78 = _role addaction ["Get in trailer","trucking.sqf",[4],1,true,true,"",'_vcl = (nearestobjects [getpos player, ["cl_del_mackr","cl_trucktest_mackr","cl_flatbed_mackr"], 5] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
action79 = _role addaction ["Search trailer","trucking.sqf",[5],1,true,true,"",'_carg = (nearestobjects [getpos player, ["Land_bags_stack_EP1","Land_bags_EP1","Land_Bag_EP1"], 2] select 0);player distance _carg < 2 and iscop'];
//====================================== VEHICLE ACTIONS ================================================
action84 = _role addaction [localize "STRS_addaction_trunk_see","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_str = format["%1_storage", _vcl];[_str] execVM "vehiclecheck.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and !(_vcl in INV_VehicleArray) and _vcl in INV_ServerVclArray and iscop'];
action85 = _role addaction [localize "STRS_addaction_trunk_check","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_str = format["%1_storage", _vcl];if([_vcl,_str] call INV_RemoveIllegalStorage)then{call compile format["publicvariable ""%1"";", _str]};',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and !(_vcl in INV_VehicleArray) and _vcl in INV_ServerVclArray and iscop'];
action87 = _role addaction ["Pull out","noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "pullout.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and count (crew _vcl) > 0 and _vcl in INV_ServerVclArray'];
action88 = _role addaction [localize "STRS_addAction_vehicleinfo","noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "vehinfo.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
action89 = _role addaction ["Put civilian in car","preArrest.sqf",[],1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and iscop'];
//======================================== SHOP EXPORT ==================================================
_num1 = (shop1 call INV_getshopnum);
_num2 = (shop2 call INV_getshopnum);
_num4 = (shop4 call INV_getshopnum);
_num5 = (pdfood call INV_getshopnum);
action98 = _role addaction ["Shop 1 export","shopdialogs.sqf",[_num1],1,false,true,"","player distance shop1export <= 3"];
action99 = _role addaction ["Shop 2 export","shopdialogs.sqf",[_num2],1,false,true,"","player distance shop2export <= 3"];
action102 = _role addaction ["Shop 4 export","shopdialogs.sqf",[_num4],1,false,true,"","player distance shop4export <= 3"];
action103 = _role addaction ["Food and Candy","shopdialogs.sqf",[_num5],1,false,true,"",'player distance (nearestobjects [getpos player, ["ibr_van_BNK"],  10] select 0) < 3'];
//========================   unflip vehicle     ================================
action121 = _role addaction ["Unflip vehicle","unflipvehicle.sqf",["unflip"],1,false,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_VehicleArray'];
//=========================    Cop Patrol actions/BUS   ==============================
action122 = _role addaction ["Get patrol mission","coppatrol.sqf",["start"],1,false,true,"","iscop and player distance copbank <= 4 and !pmissionactive and !patrolwaittime"];
action123 = _role addaction ["Cancel patrol mission","coppatrol.sqf",["end"],1,false,true,"","iscop and pmissionactive and player distance copbank <= 4"];
action124 = _role addaction ["Get Security mission","coppatrol.sqf",["start1"],1,false,true,"","iscop and player distance copbank <= 4 and !pmissionactive1 and !patrolwaittime1"];
action125 = _role addaction ["Cancel Security mission","coppatrol.sqf",["end1"],1,false,true,"","iscop and pmissionactive1 and player distance copbank <= 4"];
//=======================Cherry light ===================================================
actionPolice = _role addaction ["[Take Land Vehicle From Storage]","retrieveVehicle.sqf",["PDSpawn"],1,false,true,"","player distance savepoint2 <= 3"];
actionPolice1 = _role addaction ["[Take Land Vehicle From Storage]","retrieveVehicle.sqf",["SheriffSpawn"],1,false,true,"","player distance savepoint2s <= 3"];
actionPolice2 = _role addaction ["[SAVE YOUR POLICE VEHICLE]","noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "saveVehicleCop.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and _vcl in INV_VehicleArray and (player distance savepoint2 <= 30 or player distance savepoint2s <= 30)'];
busaction2 = _role addaction ["Get in the bus","specialveh.sqf",["busgetin"],1,false,true,"","player distance bus1 <= 5"];
//======================================== Aviation Actions ===================================================
actionavrep = _role addaction ["[Service Helicopter]","scripts\foster\Aviationrepair.sqf",[],1,false,true,"",'player distance jailpad1 <= 10 and ((getplayeruid player) in PDAviation_id)'];
actionavrep1 = _role addaction ["[Service Helicopter]","scripts\foster\Aviationrepair.sqf",[],1,false,true,"",'player distance jailpad2 <= 10 and ((getplayeruid player) in PDAviation_id)'];
actionavrep2 = _role addaction ["[Service Helicopter]","scripts\foster\Aviationrepair.sqf",[],1,false,true,"",'player distance jailpad_2 <= 10 and ((getplayeruid player) in PDAviation_id)'];
actionavrep3 = _role addaction ["[Service Helicopter]","scripts\foster\Aviationrepair.sqf",[],1,false,true,"",'player distance jailpadcg <= 10 and ((getplayeruid player) in CoastGuard_id)'];

actionavrem = _role addaction ["[Clear Helipad]","scripts\foster\Aviationremove.sqf",[],1,false,true,"",'player distance jailpad1 <= 10 and ((getplayeruid player) in PDAviation_id)'];
actionavrem1 = _role addaction ["[Clear Helipad]","scripts\foster\Aviationremove.sqf",[],1,false,true,"",'player distance jailpad2 <= 10 and ((getplayeruid player) in PDAviation_id)'];
actionavrem2 = _role addaction ["[Clear Helipad]","scripts\foster\Aviationremove.sqf",[],1,false,true,"",'player distance jailpad_2 <= 10 and ((getplayeruid player) in PDAviation_id)'];
actionavrem3 = _role addaction ["[Clear Helipad]","scripts\foster\Aviationremove.sqf",[],1,false,true,"",'player distance jailpadcg <= 10 and ((getplayeruid player) in CoastGuard_id)'];

actioncgrem4 = _role addaction ["[Clear Dock]","scripts\foster\Coastguardremove.sqf",[],1,false,true,"",'player distance cgp2 <= 10 and ((getplayeruid player) in CoastGuard_id)'];
actioncgrem5 = _role addaction ["[Clear Dock]","scripts\foster\Coastguardremove.sqf",[],1,false,true,"",'player distance cgp4 <= 10 and ((getplayeruid player) in CoastGuard_id)'];
actioncgrem6 = _role addaction ["[Clear Dock]","scripts\foster\Coastguardremove.sqf",[],1,false,true,"",'player distance cgp2 <= 10 and ((getplayeruid player) in SWAT_id)'];
actioncgrem7 = _role addaction ["[Clear Dock]","scripts\foster\Coastguardremove.sqf",[],1,false,true,"",'player distance cgp4 <= 10 and ((getplayeruid player) in SWAT_id)'];
//======================================== Sheriff Actions ===================================================

actionsh1 = _role addaction ["[Go to Sheriff Office]","scripts\foster\sheriff.sqf",[],1,false,true,"",'player distance sherifftele <= 5 and ((getplayeruid player) in Deputy_id)'];
actionsh2 = _role addaction ["[Go to Sheriff Office]","scripts\foster\sheriff.sqf",[],1,false,true,"",'player distance sherifftele <= 5 and ((getplayeruid player) in Sheriff_id)'];
actioncor1 = _role addaction ["[Go to County Jail]","scripts\foster\corrections.sqf",[],1,false,true,"",'player distance sherifftele <= 5 and ((getplayeruid player) in corrections_id)'];

//======================== Buy Donut =================================
actiondonut1 = _role addaction ["Buy Donut","scripts\foster\buydonuts.sqf",["donut 1"],1,false,true,"","iscop and player distance donutguy <= 5"];
actiondonut2 = _role addaction ["Buy Half Dozen Donuts","scripts\foster\buydonuts.sqf",["donut 6"],1,false,true,"","iscop and player distance donutguy <= 5"];
actiondonut3 = _role addaction ["Buy Dozen Donuts","scripts\foster\buydonuts.sqf",["donut 12"],1,false,true,"","iscop and player distance donutguy <= 5"];
actiondonut4 = _role addaction ["Buy Donut","scripts\foster\buydonuts.sqf",["donut 1"],1,false,true,"","iscop and player distance donutguy2 <= 5"];
actiondonut5 = _role addaction ["Buy Half Dozen Donuts","scripts\foster\buydonuts.sqf",["donut 6"],1,false,true,"","iscop and player distance donutguy2 <= 5"];
actiondonut6 = _role addaction ["Buy Dozen Donuts","scripts\foster\buydonuts.sqf",["donut 12"],1,false,true,"","iscop and player distance donutguy2 <= 5"];


//======================================== Donate shop===================================================
_num15 = (donatebuy call INV_getshopnum);
actiondonate = _role addaction ["Donator Shop","shopdialogs.sqf",[_num15],1,false,true,"","player distance donatebuy <= 5"];
actioncop1 = _role addaction ["Switch to S.W.A.T. Probationary Uniform","noscript.sqf",'["olrpg_swatprob"] call clothes;',1,true,true,"",'player distance copswatbank < 2 and iscop and ((getplayeruid player) in SWAT_id)'];
actioncop2 = _role addaction ["Switch to S.W.A.T. Operator Uniform","noscript.sqf",'["olrpg_swatnor"] call clothes;',1,true,true,"",'player distance copswatbank < 2 and iscop and ((getplayeruid player) in SWAT_id)'];
actioncop3 = _role addaction ["Switch to S.W.A.T. Marksman Uniform","noscript.sqf",'["olrpg_swatmark"] call clothes;',1,true,true,"",'player distance copswatbank < 2 and iscop and ((getplayeruid player) in SWAT_id)'];
actioncop4 = _role addaction ["Switch to S.W.A.T. Specialist Uniform","noscript.sqf",'["olrpg_swatspec"] call clothes;',1,true,true,"",'player distance copswatbank < 2 and iscop and ((getplayeruid player) in SWAT_id)'];
actioncop5 = _role addaction ["Switch to S.W.A.T. Command Uniform","noscript.sqf",'["olrpg_swatcom"] call clothes;',1,true,true,"",'player distance copswatbank < 2 and iscop and ((getplayeruid player) in SWAT_id)'];
actioncop6 = _role addaction ["Switch to Chief Uniform","noscript.sqf",'["olrpg_chiefsuni"] call clothes;',1,true,true,"",'player distance copcmdbank < 2 and iscop and ((getplayeruid player) in Chief_id)'];
actioncop7 = _role addaction ["Switch to Ast. Chief Uniform","noscript.sqf",'["olrpg_astchiefsuni"] call clothes;',1,true,true,"",'player distance copcmdbank < 2 and iscop and ((getplayeruid player) in Chief_id)'];
actioncop8 = _role addaction ["Switch to Command Uniform","noscript.sqf",'["olrpg_pdpilotcom"] call clothes;',1,true,true,"",'player distance copairbank < 2 and iscop and ((getplayeruid player) in PDAviation_id)'];
actioncop9 = _role addaction ["Switch to OP Pilot Uniform","noscript.sqf",'["olrpg_oppilot"] call clothes;',1,true,true,"",'player distance copairbank < 2 and iscop and ((getplayeruid player) in PDAviation_id)'];
actioncop10 = _role addaction ["Switch to Pilot Uniform","noscript.sqf",'["olrpg_pdpilot"] call clothes;',1,true,true,"",'player distance copairbank < 2 and iscop and ((getplayeruid player) in PDAviation_id)'];
actioncop11 = _role addaction ["Switch to K-9 Command Uniform","noscript.sqf",'["olrpg_k9com"] call clothes;',1,true,true,"",'player distance copdispatchbank < 2 and iscop and ((getplayeruid player) in K9_id)'];
actioncop13 = _role addaction ["Switch to K-9 Uniform","noscript.sqf",'["olrpg_k9nor"] call clothes;',1,true,true,"",'player distance copdispatchbank < 2 and iscop and ((getplayeruid player) in K9_id)'];
actioncop14 = _role addaction ["Switch to Captain Uniform","noscript.sqf",'["olrpg_pdcptvest"] call clothes;',1,true,true,"",'player distance copcmdbank < 2 and iscop and ((getplayeruid player) in Cpt_id) '];
actioncop15 = _role addaction ["Switch to Lieutenant Uniform","noscript.sqf",'["olrpg_pdltvest"] call clothes;',1,true,true,"",'player distance copcmdbank < 2 and iscop and ((getplayeruid player) in Lt_id)'];
actioncop16 = _role addaction ["Switch to Sergeant Uniform","noscript.sqf",'["olrpg_sgtuni"] call clothes;',1,true,true,"",'player distance copsgtbank < 2 and iscop and ((getplayeruid player) in Sgt_id)'];
actioncop17 = _role addaction ["Switch to Corporal Uniform","noscript.sqf",'["olrpg_cpluni"] call clothes;',1,true,true,"",'player distance copsgtbank < 2 and iscop and ((getplayeruid player) in Cpl_id)'];
actioncop18 = _role addaction ["Switch to Senior Patrol Uniform","noscript.sqf",'["olrpg_snruni"] call clothes;',1,true,true,"",'player distance copbank < 2 and iscop and ((getplayeruid player) in PO3_id)'];
actioncop19 = _role addaction ["Switch to Patrol Uniform","noscript.sqf",'["olrpg_patuni"] call clothes;',1,true,true,"",'player distance copbank < 2 and iscop'];
actioncop20 = _role addaction ["Switch to Pilot Uniform","noscript.sqf",'["olrpg_sdpilot"] call clothes;',1,true,true,"",'player distance copcoastguardbank < 2 and iscop and ((getplayeruid player) in Deputy_id)'];
actioncop21 = _role addaction ["Switch to Captain Uniform","noscript.sqf",'["olrpg_cptdepuni"] call clothes;',1,true,true,"",'player distance copsheriffbank < 2 and iscop and ((getplayeruid player) in Sheriff_id)'];
actioncop22 = _role addaction ["Switch to Lt. Deputy Uniform","noscript.sqf",'["olrpg_ltdepuni"] call clothes;',1,true,true,"",'player distance copsheriffbank < 2 and iscop and ((getplayeruid player) in Sheriff_id)'];
actioncop23 = _role addaction ["Switch to Sgt.Deputy Uniform","noscript.sqf",'["olrpg_sgtdepuni2"] call clothes;',1,true,true,"",'player distance copsheriffbank < 2 and iscop and ((getplayeruid player) in SgtDeputy_id)'];
actioncop24 = _role addaction ["Switch to Corporal Deputy Uniform","noscript.sqf",'["olrpg_corpdepuni"] call clothes;',1,true,true,"",'player distance copsheriffbank < 2 and iscop and ((getplayeruid player) in Deputy_id)'];
actioncop25 = _role addaction ["Switch to Senior Deputy Uniform","noscript.sqf",'["olrpg_snrpdepuni"] call clothes;',1,true,true,"",'player distance copsheriffbank < 2 and iscop and ((getplayeruid player) in Deputy_id)'];
actioncop26 = _role addaction ["Switch to Deputy Uniform","noscript.sqf",'["olrpg_depuni"] call clothes;',1,true,true,"",'player distance copsheriffbank < 2 and iscop and ((getplayeruid player) in Deputy_id)'];
actioncop27 = _role addaction ["Switch to Deputy K-9 Uniform","noscript.sqf",'["olrpg_depk9uni"] call clothes;',1,true,true,"",'player distance copsheriffbank < 2 and iscop and ((getplayeruid player) in K9_id)'];
actioncop28 = _role addaction ["Switch to Deputy DNR Uniform","noscript.sqf",'["olrpg_dnrdepuni"] call clothes;',1,true,true,"",'player distance copsheriffbank < 2 and iscop and ((getplayeruid player) in Deputy_id)'];
actioncop29 = _role addaction ["Switch to Pilot Uniform","noscript.sqf",'["olrpg_sdpilot"] call clothes;',1,true,true,"",'player distance copair2 < 2 and iscop and ((getplayeruid player) in PDAviation_id)'];
actioncop30 = _role addaction ["Switch to Internal Affairs Uniform","noscript.sqf",'["olrpg_iauni"] call clothes;',1,true,true,"",'player distance cidbank < 2 and iscop and ((getplayeruid player) in Undercover_id)'];
actioncop31 = _role addaction ["Switch to CID Uniform","noscript.sqf",'["olrpg_pdcid"] call clothes;',1,true,true,"",'player distance cidbank < 2 and iscop and ((getplayeruid player) in Undercover_id)'];
actioncop32 = _role addaction ["Switch to Senior FTO Uniform","noscript.sqf",'["olrpg_snrftouni"] call clothes;',1,true,true,"",'player distance IRAatm < 2 and iscop and ((getplayeruid player) in fto_id)'];
actioncop33 = _role addaction ["Switch to FTO Uniform","noscript.sqf",'["olrpg_ftouni"] call clothes;',1,true,true,"",'player distance IRAatm < 2 and iscop and ((getplayeruid player) in fto_id)'];
actioncop34 = _role addaction ["Switch to Corrections Command","noscript.sqf",'["olrpg_corcmduni"] call clothes;',1,true,true,"",'player distance atmjail < 2 and iscop and ((getplayeruid player) in corrections_id)'];
actioncop35 = _role addaction ["Switch to Corrections Supervisor","noscript.sqf",'["olrpg_corsupuni"] call clothes;',1,true,true,"",'player distance atmjail < 2 and iscop and ((getplayeruid player) in corrections_id)'];
actioncop36 = _role addaction ["Switch to Corrections Uniform","noscript.sqf",'["olrpg_corcuni"] call clothes;',1,true,true,"",'player distance atmjail < 2 and iscop and ((getplayeruid player) in corrections_id)'];
//FEDERAL IMPOUND
actionfed = _role addaction ["Federal Impound vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);[_vcl, "fedimpound"] execVM "impound.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_vcl in INV_ServerVclArray and player distance _vcl < 10 and (((getplayeruid player) in Sgt_id)or ((getplayeruid player) in SgtDeputy_id))'];