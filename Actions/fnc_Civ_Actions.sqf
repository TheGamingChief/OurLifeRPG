_role = player;
actionBody = _role addaction ["Gather ILLEGAL Organs","bodypart.sqf",'',1,true,true,"",'player distance (nearestobjects [getpos player, ["body"],  3] select 0) < 2'];
action2a = _role addaction ["How To Play Paintball","pbhelp.sqf",[1],1,false,true,"","player distance paintballbox <= 30"];
//========================   HOSTAGE  ================================================
action3 = _role addaction ["Take Hostage Mission","hostage.sqf",["getajob_hostage"],1,false,true,"","player distance hostage <= 3 and isciv"];
action4 = _role addaction ["Take Hostage", "noscript.sqf", "[hostage1] join (group player); player groupchat ""Keep the hostage close or you will fail!"";",1,false,true,"","player distance hostage1 < 5"];
//==================================== GANG MENU ======================================================
action5 = _role addaction ["Gang Menu","maindialogs.sqf",["gangmenu"],1,false,true,"","player distance rathaus <= 3 and isciv"];
//====================================== BANK ROB =====================================================
action6 = _role addaction ["Rob Safe","bankrob.sqf", ["robDialog", safe1],1,false,true,"","player distance Safe1 <= 3 and isciv"];
action7 = _role addaction ["Crack Safe","Scripts\Misc\safehack.sqf", ["crackSafe", safe1],1,false,true,"","player distance Safe1 <= 3 and isciv"];
//=======================   ADMIN CAMERA ==============================================
action12 = _role addaction ["Admin Spectate","tcgcode.sqf",[1],1,false,true,"","player distance rubblepile <= 3"];
//===================================== ASSASSINATION =================================================
action13 = _role addaction ["Get Assassination job","assassination.sqf",["getajob_assassin"],1,false,true,"","player distance assassin <= 3 and isciv"];
action2012 = _role addaction ["Open Paintball Menu", "noscript.sqf",'["D_PB_Create"] execVM "deaddem\paintball\pb_dlg.sqf"', 1,false,true,"",'player distance pb_joinpool < 5'];
//==================================== Chop Shop =================================================
actioncs = _role addaction ["Strip Vehicle","scripts\foster\Chopshop.sqf", [], 1, false, true, "", "(player distance chopshop <= 5) and chopavailable"];
actioncs2 = _role addaction ["Chop Vehicle","scripts\foster\Chopshop2.sqf", [], 1, false, true, "", "(player distance chopshop <= 5) and chopavailable"];
//==================================== Gun Running =================================================
actiongr1 = _role addaction ["Get Gun Running Mission","scripts\foster\gunrunning.sqf", [], 1, false, true, "", "(player distance guss <= 2) and gunrunavailable"];
actiongr2 = _role addaction ["Turn in Shipment","scripts\foster\gunrunning3.sqf", [], 1, false, true, "", '(player distance guss <= 2) and gunrun3available'];
actiongr3 = _role addaction ["Pick Up Gun Shipment","scripts\foster\gunrunning2.sqf", [], 1, false, true, "", "(player distance gman <= 2) and gunrun2available"];

//==================================== Factorys =================================================
actionfac1 = _role addaction ["Factory Guide","scripts\foster\Factoryintro.sqf", [], 1, false, true, "", 'player distance Vehiclefactory <= 5'];
actionfac2 = _role addaction ["Factory Guide","scripts\foster\Factoryintro.sqf", [], 1, false, true, "", 'player distance weaponfactory <= 5'];
actionfac3 = _role addaction ["Factory Guide","scripts\foster\Factoryintro.sqf", [], 1, false, true, "", 'player distance illegalweaponfactory <= 5'];

//==================================== Casino Slot Machines =================================================
actionsm1 = _role addaction ["Pay the Slots - $1000","scripts\foster\Slots.sqf", [], 1, false, true, "", "(player distance slots1 <= 2) and slotsavailable"];
actionsm2 = _role addaction ["Pay the Slots - $1000","scripts\foster\Slots.sqf", [], 1, false, true, "", "(player distance slots2 <= 2) and slotsavailable"];
actionsm3 = _role addaction ["Pay the Slots - $1000","scripts\foster\Slots.sqf", [], 1, false, true, "", "(player distance slots3 <= 2) and slotsavailable"];
actionsm4 = _role addaction ["Pay the Slots - $1000","scripts\foster\Slots.sqf", [], 1, false, true, "", "(player distance slots4 <= 2) and slotsavailable"];
actionsm5 = _role addaction ["Pay the Slots - $1000","scripts\foster\Slots.sqf", [], 1, false, true, "", "(player distance slots5 <= 2) and slotsavailable"];
actionsm6 = _role addaction ["Pay the Slots - $1000","scripts\foster\Slots.sqf", [], 1, false, true, "", "(player distance slots6 <= 2) and slotsavailable"];
actionsm7 = _role addaction ["Pay the Slots - $1000","scripts\foster\Slots.sqf", [], 1, false, true, "", "(player distance slots7 <= 2) and slotsavailable"];
actionsm8 = _role addaction ["Pay the Slots - $1000","scripts\foster\Slots.sqf", [], 1, false, true, "", "(player distance slots8 <= 2) and slotsavailable"];
actionsm9 = _role addaction ["Pay the Slots - $1000","scripts\foster\Slots.sqf", [], 1, false, true, "", "(player distance slots9 <= 2) and slotsavailable"];
actionsm10 = _role addaction ["Pay the Slots - $1000","scripts\foster\Slots.sqf", [], 1, false, true, "", "(player distance slots10 <= 2) and slotsavailable"];
actionsm11 = _role addaction ["Pay the Slots - $1000","scripts\foster\Slots.sqf", [], 1, false, true, "", "(player distance slots11 <= 2) and slotsavailable"];
actionsm12 = _role addaction ["Pay the Slots - $1000","scripts\foster\Slots.sqf", [], 1, false, true, "", "(player distance slots12 <= 2) and slotsavailable"];

actioncsrob = _role addaction ["Rob Casino Vault","robbar.sqf",["casino"],1,false,true,"","isciv and casinomoney >= 50000 and player distance cvault <= 2 and casinoavailable"];
//===================================== PIRACY =================================================
//========================================= HUNTING ===================================================
action15 = _role addaction ["Take boar meat","noscript.sqf",'_no = ceil(random 7);if (((call INV_GetOwnWeight) + ("boar" call INV_getitemTypeKg)*_no) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};(nearestobjects [getpos player, ["wildboar"],  3] select 0) setvariable ["inuse", 1, true]; player playmove "AinvPknlMstpSlayWrflDnon_medic";sleep 4;waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};deletevehicle (nearestobjects [getpos player, ["wildboar"],  3] select 0);["boar", _no] call INV_AddInvItem;player groupchat format["you got %1 boar meat", _no];',1,true,true,"",'_w = (nearestobjects [getpos player, ["wildboar"],  3] select 0) getvariable "inuse"; isnil "_w" and player distance (nearestobjects [getpos player, ["wildboar"],  3] select 0) < 5 and !alive (nearestobjects [getpos player, ["wildboar"],  3] select 0) and isciv'];
action16 = _role addaction ["Take cow meat","noscript.sqf",'_no = ceil(random 2);if (((call INV_GetOwnWeight) + ("rawcow" call INV_getitemTypeKg)*_no) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};(nearestobjects [getpos player, ["cow01"],  3] select 0) setvariable ["inuse", 1, true]; player playmove "AinvPknlMstpSlayWrflDnon_medic";sleep 4;waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};deletevehicle (nearestobjects [getpos player, ["cow01"],  3] select 0);["rawcow", _no] call INV_AddInvItem;player groupchat format["you got %1 raw cow meat", _no];',1,true,true,"",'_w = (nearestobjects [getpos player, ["cow01"],  3] select 0) getvariable "inuse"; isnil "_w" and player distance (nearestobjects [getpos player, ["cow01"],  3] select 0) < 5 and !alive (nearestobjects [getpos player, ["cow01"],  3] select 0) and isciv'];
//===================================== TARGET RESET ==================================================
action17 = _role addaction ["Reset Targets","noscript.sqf",'{_x animate["terc",0]} foreach (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange1 < 10'];
action18 = _role addaction ["Reset targets","noscript.sqf",'{_x animate["terc",0]} foreach (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange2 < 10'];
//===================================== IMPOUND AREA==================================================
action19 = _role addaction ["Impound Lot","maindialogs.sqf",["impound"],1,false,true,"","player distance impoundbuy <= 5"];
//==================================== MAYOR ELECTION =================================================
action45 = _role addaction ["Elect a Governor","maindialogs.sqf",["wahlen"],1,false,true,"","player distance rathaus <= 3"];
//===================================== MAYOR ACTIONS =================================================
action46 = _role addaction ["Change the Law","maindialogs.sqf",["gesetz"],1,false,true,"","player distance rathaus <= 3 and isMayor"];
action47 = _role addaction ["Change taxes","maindialogs.sqf",["steuern"],1,false,true,"","player distance rathaus <= 3 and isMayor"];
//===================================== CONVOY CASH ===================================================
//===================================== Jail Plates ===================================================
actionjp1 = _role addaction ["Make License Plate","scripts\foster\jailplates.sqf", [], 1, false, true, "", "(player distance plate1 <= 3) and platesavailable"];
actionjp2 = _role addaction ["Make License Plate","scripts\foster\jailplates.sqf", [], 1, false, true, "", "(player distance plate2 <= 3) and platesavailable"];
//======================================= CRIMELOG ====================================================
action50 = _role addaction ["Crime Log","maindialogs.sqf",["coplog"],1,false,true,"","player distance rathaus <= 3"];
//======================================== HOOKERS =====================================================
actionhook = _role addaction [format ["Buy Hooker ($%1)", huren_cost],"worker1.sqf", ["holen"],1,false,true,"","player distance hookerking <= 5 and isciv"];
//==================================== PRIVATE STORAGE ================================================
//========================================= BAIL ======================================================	 
action51 = _role addaction [format ["Pay Bail", slave_cost],"maindialogs.sqf", ["bail"],1,false,true,"","player distance bailflag <= 3 and isciv"];
//===================================== ITEM PROCESS ==================================================	 
action53 = _role addaction ["Process Diamond","itemprocess.sqf",["diamond rock", "diamond", 5, ""],1,false,true,"","player distance diamond_1 <= 5 and isciv"];
action54 = _role addaction ["Process Meth","itemprocess1.sqf",["pharm", "meth", 2, ""],1,false,true,"","player distance methlab <= 5 and isciv"];
action55 = _role addaction ["Process Oil","itemprocess.sqf",["Oil", "OilBarrel", 2, "oil"],1,false,true,"","player distance Oil_1 <= 5 and isciv"];
action56 = _role addaction ["Process Wheat","itemprocess.sqf",["getreide", "Bread", 2, "Baker"],1,false,true,"","player distance bakery <= 5 and isciv"];
action57 = _role addaction ["Process Strawberries","itemprocess.sqf",["straw", "Frozens", 3, "Baker"],1,false,true,"","player distance bakery <= 5 and isciv"];
//fa1
action58 = _role addaction ["Process LSD","itemprocess.sqf",["Unprocessed_LSD", "lsd", 5, "lsd ga1"],1,false,true,"","player distance gangarea1 <= 5 and isciv"];
action59 = _role addaction ["Process Cocaine","itemprocess.sqf",["Unprocessed_Cocaine", "cocaine", 5, "cocaine ga1"],1,false,true,"","player distance gangarea1 <= 5 and isciv"];
//fa2
action60 = _role addaction ["Process LSD","itemprocess.sqf",["Unprocessed_LSD", "lsd", 5, "lsd ga2"],1,false,true,"","player distance gangarea2 <= 5 and isciv"];
action61 = _role addaction ["Process Heroin","itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5, "heroin ga2"],1,false,true,"","player distance gangarea2 <= 5 and isciv"];
//fa3
action62 = _role addaction ["Process Heroin","itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5, "heroin ga3"],1,false,true,"","player distance gangarea3 <= 5 and isciv"];
action63 = _role addaction ["Process Marijuana","itemprocess.sqf",["Unprocessed_Marijuana", "marijuana", 5, "marijuana ga3"],1,false,true,"","player distance gangarea3 <= 5 and isciv"];
//fa4
action64 = _role addaction ["Process Heroin","itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5, "heroin ga4"],1,false,true,"","player distance gangarea4 <= 5 and isciv"];
action65 = _role addaction ["Process Marijuana","itemprocess.sqf",["Unprocessed_Marijuana", "marijuana", 5, "marijuana ga4"],1,false,true,"","player distance gangarea4 <= 5 and isciv"];
//======================================== WORKERS =====================================================
action67 = _role addaction [format ["Buy K9 ($%1)", dog_cost],"copdog.sqf", ["buydog"],1,false,true,"","player distance dogspawn <= 5 and (player == cop1 or player == cop2)"];
action78 = _role addaction ["Get in Trailer","trucking.sqf",[4],1,true,true,"",'_vcl = (nearestobjects [getpos player, ["cl_
_mackr","cl_trucktest_mackr","cl_flatbed_mackr"], 5] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
//======================================= TAXI Missions ====================================================
action82 = _role addaction ["Get taxi job","taxi.sqf", ["getajob_taxi"],1,false,true,"","player distance taxishop <= 5 and isciv"];
action83 = _role addaction ["Finish taxi mission","taxi.sqf", ["canceljob_taxi"],1,false,true,"","(player distance taxishop <= 5) and isciv and workplacejob_taxi_active"];	
//====================================== VEHICLE ACTIONS ================================================
action87 = _role addaction ["Pull out","noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "pullout.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and count (crew _vcl) > 0 and _vcl in INV_ServerVclArray and (call INV_isArmed)'];
action88 = _role addaction [localize "STRS_addAction_vehicleinfo","noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "vehinfo.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
//======================================== GANG FLAGS ===================================================
action90 = _role addaction ["Neutralise flag","gangflags.sqf",[gangarea1, "neutralise"],1,false,true,"",'_control = gangarea1 getvariable "control";player distance gangarea1 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
action91 = _role addaction ["Neutralise flag","gangflags.sqf",[gangarea2, "neutralise"],1,false,true,"",'_control = gangarea2 getvariable "control";player distance gangarea2 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
action92 = _role addaction ["Neutralise flag","gangflags.sqf",[gangarea3, "neutralise"],1,false,true,"",'_control = gangarea3 getvariable "control";player distance gangarea3 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
action93 = _role addaction ["Neutralise flag","gangflags.sqf",[gangarea4, "neutralise"],1,false,true,"",'_control = gangarea3 getvariable "control";player distance gangarea4 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
action94 = _role addaction ["Capture flag","gangflags.sqf",[gangarea4, "capture"],1,false,true,"",'player distance gangarea4 <= 6 and gangmember and !pickingup and getpos gangarea4 select 2 < 0'];
action95 = _role addaction ["Capture flag","gangflags.sqf",[gangarea1, "capture"],1,false,true,"",'player distance gangarea1 <= 6 and gangmember and !pickingup and getpos gangarea1 select 2 < 0'];
action96 = _role addaction ["Capture flag","gangflags.sqf",[gangarea2, "capture"],1,false,true,"",'player distance gangarea2 <= 6 and gangmember and !pickingup and getpos gangarea2 select 2 < 0'];
action97 = _role addaction ["Capture flag","gangflags.sqf",[gangarea3, "capture"],1,false,true,"",'player distance gangarea3 <= 6 and gangmember and !pickingup and getpos gangarea3 select 2 < 0'];
//======================================== SHOP EXPORT ==================================================
/*
_num1 = (shop1 call INV_getshopnum);
_num2 = (shop2 call INV_getshopnum);
_num4 = (shop4 call INV_getshopnum);
_num5 = (bailflag call INV_getshopnum);
action99 = _role addaction ["Shop 1 export","shopdialogs.sqf",[_num1],1,false,true,"","player distance shop1export <= 3"];
action99 = _role addaction ["Shop 2 export","shopdialogs.sqf",[_num2],1,false,true,"","player distance shop2export <= 3"];
action102 = _role addaction ["Shop 3 export","shopdialogs.sqf",[_num4],1,false,true,"","player distance shop4export <= 3"];
action103 = _role addaction ["Food and Candy","shopdialogs.sqf",[_num5],1,false,true,"",'player distance (nearestobjects [getpos player, ["ibr_van_BNK"],  10] select 0) < 3'];
*/
//======================================= GANG GUNSHOPS ==================================================
_num11  = (gangarea1 call INV_getshopnum);
_num12  = (gangarea2 call INV_getshopnum);
_num13  = (gangarea3 call INV_getshopnum);
_num14  = (gangarea4 call INV_getshopnum);
action104 = _role addaction ["Gang Shop","shopdialogs.sqf",[_num11],1,false,true,"","_control = gangarea1 getvariable ""control"";!isnil ""_control"" and player distance gangarea1 <= 5 and (_control == (call INV_mygang))"];
action105 = _role addaction ["Gang Shop","shopdialogs.sqf",[_num12],1,false,true,"","_control = gangarea2 getvariable ""control"";!isnil ""_control"" and player distance gangarea2 <= 5 and (_control == (call INV_mygang))"];
action106 = _role addaction ["Gang Shop","shopdialogs.sqf",[_num13],1,false,true,"","_control = gangarea3 getvariable ""control"";!isnil ""_control"" and player distance gangarea3 <= 5 and (_control == (call INV_mygang))"];
action107 = _role addaction ["Gang Shop","shopdialogs.sqf",[_num14],1,false,true,"","_control = gangarea4 getvariable ""control"";!isnil ""_control"" and player distance gangarea4 <= 5 and (_control == (call INV_mygang))"];
//===================================== Gas station Robbing===============================================
action108 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 1"],1,false,true,"","isciv and station1money >= 5000 and player distance fuel1 <= 2 and Brycesavailable"];
action109 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 2"],1,false,true,"","isciv and station2money >= 5000 and player distance fuel2 <= 2 and pornavailable"];
action110 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 3"],1,false,true,"","isciv and station3money >= 5000 and player distance fuel3 <= 2 and houseavailable"];
action111 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 4"],1,false,true,"","isciv and station4money >= 5000 and player distance fuel4 <= 2 and gaspitavailable"];
action112 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 5"],1,false,true,"","isciv and station5money >= 5000 and player distance fuel5 <= 2 and chipsavailable"];
action113 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 6"],1,false,true,"","isciv and station6money >= 5000 and player distance fuel6 <= 2 and mannyavailable"];
action114 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 7"],1,false,true,"","isciv and station7money >= 5000 and player distance fuel7 <= 2 and mikesavailable"];
action115 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 8"],1,false,true,"","isciv and station8money >= 5000 and player distance fuel8 <= 2 and hausavailable"];
action116 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 9"],1,false,true,"","isciv and station9money >= 5000 and player distance fuel9 <= 2 and haus1available"];
action117 = _role addaction ["Rob Pharmacy","robpharmacy.sqf",["pharmacy"],1,false,true,"","isciv and pharmmoney >= 5000 and player distance pharmacy <= 2"];
action118 = _role addaction ["Rob Bar","robbar.sqf",["bar"],1,false,true,"","isciv and barmoney >= 5000 and player distance pub1 <= 2 and fionasavailable"];
action119 = _role addaction ["Rob Bar","robbar.sqf",["bar1"],1,false,true,"","isciv and barmoney1 >= 5000 and player distance pub2 <= 2 and southavailable"];
action120 = _role addaction ["Rob Bar","robbar.sqf",["bar2"],1,false,true,"","isciv and barmoney2 >= 5000 and player distance pub3 <= 2 and macksavailable"];
action121 = _role addaction ["Rob Bar","robbar.sqf",["bar3"],1,false,true,"","isciv and barmoney3 >= 5000 and player distance pub4 <= 2 and hermannsavailable"];
actionrobd = _role addaction ["Rob Store","robbar.sqf",["donutstore"],1,false,true,"","isciv and donutmoney1 >= 5000 and player distance donutguy <= 5 and robdonutavailable"];
actionrobd1 = _role addaction ["Rob Store","robbar.sqf",["donutstore2"],1,false,true,"","isciv and donutmoney2 >= 5000 and player distance donutguy2 <= 5 and robdonut1available"];

//======================== Buy Donut =================================
actiondonut1 = _role addaction ["Buy Donut","scripts\foster\buydonuts.sqf",["donut 1"],1,false,true,"","isciv and player distance donutguy <= 5"];
actiondonut2 = _role addaction ["Buy Half Dozen Donuts","scripts\foster\buydonuts.sqf",["donut 6"],1,false,true,"","isciv and player distance donutguy <= 5"];
actiondonut3 = _role addaction ["Buy Dozen Donuts","scripts\foster\buydonuts.sqf",["donut 12"],1,false,true,"","isciv and player distance donutguy <= 5"];
actiondonut4 = _role addaction ["Buy Donut","scripts\foster\buydonuts.sqf",["donut 1"],1,false,true,"","isciv and player distance donutguy2 <= 5"];
actiondonut5 = _role addaction ["Buy Half Doze Donuts","scripts\foster\buydonuts.sqf",["donut 6"],1,false,true,"","isciv and player distance donutguy2 <= 5"];
actiondonut6 = _role addaction ["Buy Dozen Donuts","scripts\foster\buydonuts.sqf",["donut 12"],1,false,true,"","isciv and player distance donutguy2 <= 5"];

//========================   unflip vehicle     ================================
action122 = _role addaction ["Unflip vehicle","unflipvehicle.sqf",["unflip"],1,false,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_VehicleArray'];
//======================================== Debit Card ===================================================
action123 = _role addaction ["Sign-up for Debit Card","debitcardsignup.sqf",["mainbank"],1,false,true,"","player distance mainbank <= 15 and (!SigningUpForDebitCard)"];

//======================================== PMC ==========================================================
actionpmc1 = _role addaction ["Raise / Lower Gates","gateController.sqf",[cgate1],1,false,true,"","isciv and ((player distance pmcgatecp < 2) or (player distance pmcgatecp2 < 2)) and ((getPlayerUID player) in PMC_id)"];
actionpmc2 = _role addaction ["Raise / Lower Gates","gateController.sqf",[cgate3],1,false,true,"","isciv and ((player distance pmcgatecp3 < 2) or (player distance pmcgatecp4 < 2)) and ((getPlayerUID player) in PMC_id)"];
actionpmcskin = _role addaction ["Switch to PMC Uniform","noscript.sqf",'["olrpg_pmcuni"] call clothes;',1,true,true,"",'player distance pmcbank < 2 and isciv and ((getplayeruid player) in PMC_id)'];
actionpmcskin2 = _role addaction ["Switch to PMC Pilot Uniform","noscript.sqf",'["BAF_Pilot_DDPM"] call clothes;',1,true,true,"",'player distance pmcbank < 2 and isciv and ((getplayeruid player) in PMC_id)'];
actionpmcskin3 = _role addaction ["Switch to PMC Marksman Uniform","noscript.sqf",'["olrpg_pmcmark"] call clothes;',1,true,true,"",'player distance pmcbank < 2 and isciv and ((getplayeruid player) in PMC_id)'];
actionpmcskin4 = _role addaction ["Switch to PMC Command Uniform","noscript.sqf",'["olrpg_pmccom"] call clothes;',1,true,true,"",'player distance pmcbank < 2 and isciv and ((getplayeruid player) in CommandPMC_id)'];
actionrep = _role addaction ["[Service Helicopter]","scripts\foster\Pmcrepair.sqf",[],1,false,true,"",'player distance pmchelipad2 <= 8 and ((getplayeruid player) in PMC_id)'];
//========================================MAFIA==========================================================
action48 = _role addaction ["Impound vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);[_vcl, "impound"] execVM "impound.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_vcl in INV_ServerVclArray and player distance _vcl < 10 and _vcl distance towgate < 50'];
actionass = _role addaction ["Switch to Assassin Clothes","noscript.sqf",'["TK_INS_Soldier_EP1"] call clothes;',1,true,true,"",'player distance assassinshop < 10 and ("assassinlic" call INV_HasLicense)'];
actionSave8 = _role addaction ["[Take Land Vehicle From Storage]","retrieveVehicleLand2.sqf",[],1,false,true,"","player distance savepoint <= 3"];
actionSave9 = _role addaction ["[Take Land Vehicle From Storage]","retrieveVehicleLand3.sqf",[],1,false,true,"","player distance savepointx <= 3"];
actionSave = _role addaction ["[Take Boat From Storage]","retrieveVehicleBoat.sqf",[],1,false,true,"","player distance BoatSavePoint <= 5"];
actionSave2 = _role addaction ["[SAVE YOUR LAND VEHICLE]","noscript.sqf",'(nearestobjects [getpos player, ["LandVehicle"], 3] select 0) execVM "saveVehicleLand.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and _vcl in INV_VehicleArray and (player distance savepoint <= 30 or player distance savepointx <= 30 or player distance LandSavePoint <= 30)'];
action222 = _role addaction ["[Take Land Vehicle From Storage]","retrieveVehicleLand.sqf",[],1,false,true,"","player distance LandSavePoint <= 3"];
actionSave4 = _role addaction ["[SAVE YOUR AIR VEHICLE]","noscript.sqf",'(nearestobjects [getpos player, ["Air"], 3] select 0) execVM "saveVehicleAir.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and _vcl in INV_VehicleArray and (player distance AirSavePoint <= 50)'];
actionSave5 = _role addaction ["[Take Air Vehicle From Storage]","retrieveVehicleAir.sqf",[],1,false,true,"","player distance AirSavePoint <= 3"];
actionSave6 = _role addaction ["[Take Air Vehicle From Storage]","retrieveVehicleAir.sqf",[],1,false,true,"","player distance AirSavePoint2 <= 3"];
actionSave7 = _role addaction ["[SAVE YOUR BOAT]","noscript.sqf",'(nearestobjects [getpos player, ["Ship"], 3] select 0) execVM "saveVehicleBoat.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Ship"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and _vcl in INV_VehicleArray and player distance BoatSavePoint <= 50'];
//========================================UNDERCOVER========================================
actionuc1 = _role addaction ["Switch to Black Suit (Uniform)","noscript.sqf",'["Functionary1"] call clothes;',1,true,true,"",'player distance specbox < 10 and iscop and ((getplayeruid player) in Undercover_id)'];
actionuc2 = _role addaction ["Switch to Camo Pants (Uniform)","noscript.sqf",'["ibr_lingorman2"] call clothes;',1,true,true,"",'player distance specbox < 10 and iscop and ((getplayeruid player) in Undercover_id)'];
actionuc3 = _role addaction ["Switch to Shorts (Uniform)","noscript.sqf",'["sah_civilian5_shorts"] call clothes;',1,true,true,"",'player distance specbox < 10 and iscop and ((getplayeruid player) in Undercover_id)'];
actionuc4 = _role addaction ["Switch to Rocker (Uniform)","noscript.sqf",'["Rocker1"] call clothes;',1,true,true,"",'player distance specbox < 10 and iscop and ((getplayeruid player) in Undercover_id)'];
actionuc5 = _role addaction ["Switch to Turban (Uniform)","noscript.sqf",'["TK_CIV_Takistani04_EP1"] call clothes;',1,true,true,"",'player distance specbox < 10 and iscop and ((getplayeruid player) in Undercover_id)'];
//========================================Flyers Towing========================================
flyerAction1 = _role addaction ["Switch to Mechanic Uniform","noscript.sqf",'["Flyers_Mechanic"] call clothes;',1,true,true,"",'player distance towatm < 2 and ((getplayeruid player) in Tow_id)'];
flyerAction2 = _role addaction ["Switch to Mechanic w/ Vest Uniform","noscript.sqf",'["Flyers_Mechanic_Vest"] call clothes;',1,true,true,"",'player distance towatm < 2 and ((getplayeruid player) in Tow_id)'];
flyerAction3 = _role addaction ["Switch to Supervisor Uniform","noscript.sqf",'["Flyers_Supervisor"] call clothes;',1,true,true,"",'player distance towatm < 2 and ((getplayeruid player) in Tow_id)'];
flyerAction4 = _role addaction ["Switch to Supervisor w/ Vest Uniform","noscript.sqf",'["Flyers_Supervisor_Vest"] call clothes;',1,true,true,"",'player distance towatm < 2 and ((getplayeruid player) in Tow_id)'];