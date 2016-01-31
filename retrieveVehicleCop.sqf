if (isNil {savedVehiclesWest select 0}) then {
player sideChat "You do not have any saved vehicles!";

} else {
	_rtv = (savedVehiclesWest select 0) call inv_getitemname;
	_rtv1 = (savedVehiclesWest select 1) call inv_getitemname;
	_rtv2 = (savedVehiclesWest select 2) call inv_getitemname;
	_rtv3 = (savedVehiclesWest select 3) call inv_getitemname;
	_rtv4 = (savedVehiclesWest select 4) call inv_getitemname;
	_rtv5 = (savedVehiclesWest select 5) call inv_getitemname;
	_rtv6 = (savedVehiclesWest select 6) call inv_getitemname;
	_rtv7 = (savedVehiclesWest select 7) call inv_getitemname;
	_rtv8 = (savedVehiclesWest select 8) call inv_getitemname;
	_rtv9 = (savedVehiclesWest select 9) call inv_getitemname;
	_rtv10 = (savedVehiclesWest select 10) call inv_getitemname;
	_rtv11 = (savedVehiclesWest select 11) call inv_getitemname;
	_rtv12 = (savedVehiclesWest select 12) call inv_getitemname;
	_rtv13 = (savedVehiclesWest select 13) call inv_getitemname;
	_rtv14 = (savedVehiclesWest select 14) call inv_getitemname;
	_rtv15 = (savedVehiclesWest select 15) call inv_getitemname;
	_rtv16 = (savedVehiclesWest select 16) call inv_getitemname;
	_rtv17 = (savedVehiclesWest select 17) call inv_getitemname;
	_rtv18 = (savedVehiclesWest select 18) call inv_getitemname;
	_rtv19 = (savedVehiclesWest select 19) call inv_getitemname;
	_rtv20 = (savedVehiclesWest select 20) call inv_getitemname;
	_rtv21 = (savedVehiclesWest select 21) call inv_getitemname;
	_rtv22 = (savedVehiclesWest select 22) call inv_getitemname;
	_rtv23 = (savedVehiclesWest select 23) call inv_getitemname;
	_rtv24 = (savedVehiclesWest select 24) call inv_getitemname;
	_rtv25 = (savedVehiclesWest select 25) call inv_getitemname;
	_rtv26 = (savedVehiclesWest select 26) call inv_getitemname;
	_rtv27 = (savedVehiclesWest select 27) call inv_getitemname;
	_rtv28 = (savedVehiclesWest select 28) call inv_getitemname;
	_rtv29 = (savedVehiclesWest select 29) call inv_getitemname;
	
	continue = false;
	vehicle2Spawn = test;

	player removeAction action222;
	player removeAction actionPolice;
	reTrieve = player addAction [_rtv,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 0);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve1 = player addAction [_rtv1,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 1);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve2 = player addAction [_rtv2,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 2);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve3 = player addAction [_rtv3,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 3);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve4 = player addAction [_rtv4,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 4);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve5 = player addAction [_rtv5,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 5);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve6 = player addAction [_rtv6,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 6);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve7 = player addAction [_rtv7,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 7);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve8 = player addAction [_rtv8,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 8);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve9 = player addAction [_rtv9,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 9);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve10 = player addAction [_rtv10,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 10);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve11 = player addAction [_rtv11,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 11);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve12 = player addAction [_rtv12,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 12);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve13 = player addAction [_rtv13,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 13);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve14 = player addAction [_rtv14,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 14);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve15 = player addAction [_rtv15,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 15);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve16 = player addAction [_rtv16,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 16);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve17 = player addAction [_rtv17,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 17);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve18 = player addAction [_rtv18,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 18);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve19 = player addAction [_rtv19,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 19);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve20 = player addAction [_rtv20,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 20);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve21 = player addAction [_rtv21,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 21);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve22 = player addAction [_rtv22,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 22);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve23 = player addAction [_rtv23,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 23);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve24 = player addAction [_rtv24,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 24);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve25 = player addAction [_rtv25,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 25);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve26 = player addAction [_rtv26,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 26);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve27 = player addAction [_rtv27,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 27);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve28 = player addAction [_rtv28,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 28);',1,true,true,"",'player distance savepoint2 <= 15'];
	reTrieve29 = player addAction [_rtv29,"noscript.sqf",'continue = true; vehicle2Spawn = (savedVehiclesWest select 29);',1,true,true,"",'player distance savepoint2 <= 15'];
	
	if(gettingcopcar == 1)exitWith{"You are getting a vehicle out of storage already..."};
	gettingcopcar = 1;

	player sideChat "Select a vehicle from the scroll menu!";

	waitUntil {continue};
	player removeAction reTrieve;
	player removeAction reTrieve1;
	player removeAction reTrieve2;
	player removeAction reTrieve3;
	player removeAction reTrieve4;
	player removeAction reTrieve5;
	player removeAction reTrieve6;
	player removeAction reTrieve7;
	player removeAction reTrieve8;
	player removeAction reTrieve9;
	player removeAction reTrieve10;
	player removeAction reTrieve11;
	player removeAction reTrieve12;
	player removeAction reTrieve13;
	player removeAction reTrieve14;
	player removeAction reTrieve15;
	player removeAction reTrieve16;
	player removeAction reTrieve17;
	player removeAction reTrieve18;
	player removeAction reTrieve19;
	player removeAction reTrieve20;
	player removeAction reTrieve21;
	player removeAction reTrieve22;
	player removeAction reTrieve23;
	player removeAction reTrieve24;
	player removeAction reTrieve25;
	player removeAction reTrieve26;
	player removeAction reTrieve27;
	player removeAction reTrieve28;
	player removeAction reTrieve29;

	player groupChat "RETRIEVING VEHICLE IN 3...";
	sleep 1;
	player groupChat "RETRIEVING VEHICLE IN 2...";
	sleep 1;
	player groupChat "RETRIEVING VEHICLE IN 1...";
	sleep 1;

	_crowns = ["ilpd_slick_b40_pb","ilpd_beat_f101","ilpd_slick_b40_PBG"];
	_genovahsCar = ["ilpd_slick_b40_npb"];
	_tahoe = ["tahoe_pd"];
	_k9 = ["suburban_pd_k9"];
	_traffic = ["ilpd_traffic_t101","ilpd_Traffic_black"];

	_v = format ["vehicle_%1_%2",player,round(time)];

		if ((vehicle2spawn in _crowns) or (vehicle2spawn in _genovahsCar) or (vehicle2spawn in _tahoe) or (vehicle2spawn in _k9) or (vehicle2spawn in _traffic))  then 
		{
			if(vehicle2spawn in _crowns) then {
				call compile format ['
				newvehicle = vehicle2spawn createVehicle %4; 
				newvehicle setVehicleInit "
				this setObjectTexture [0,""ol_textures\text\f101.paa""];this setObjectTexture [44,""ol_textures\text\f101.paa""];this setObjectTexture [45,""ol_textures\text\f101.paa""];this setObjectTexture [46,""ol_textures\text\f101.paa""];this setObjectTexture [47,""ol_textures\text\f101.paa""];this setObjectTexture [48,""ol_textures\text\f101.paa""];
				this setVehicleVarName ""vehicle_%1_%2""; 
				vehicle_%1_%2 = this; 
				clearWeaponCargo this; 
				clearMagazineCargo this;
				newvehicle lock true;
				"; 
				processInitCommands;
				INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2]; 
				"INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
				', player, round(time), INV_CALL_CREATVEHICLE, getPos saveSpawn2, getDir _logic];
			};
			if(vehicle2spawn in _genovahsCar) then {
				call compile format ['
				newvehicle = vehicle2spawn createVehicle %4; 
				newvehicle setVehicleInit "
				this setObjectTexture [0,""ol_textures\text\f101_chief.paa""];this setObjectTexture [44,""ol_textures\text\f101_chief.paa""];this setObjectTexture [45,""ol_textures\text\f101_chief.paa""];this setObjectTexture [46,""ol_textures\text\f101_chief.paa""];this setObjectTexture [47,""ol_textures\text\f101_chief.paa""];this setObjectTexture [48,""ol_textures\text\f101_chief.paa""];
				this setVehicleVarName ""vehicle_%1_%2""; 
				vehicle_%1_%2 = this; 
				clearWeaponCargo this; 
				clearMagazineCargo this;
				newvehicle lock true;
				"; 
				processInitCommands;
				INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2]; 
				"INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
				', player, round(time), INV_CALL_CREATVEHICLE, getPos saveSpawn2, getDir _logic];
			};
			if(vehicle2spawn in _tahoe) then {
				call compile format ['
				newvehicle = vehicle2spawn createVehicle %4; 
				newvehicle setVehicleInit "
				this setObjectTexture [0, ""ol_textures\text\tahoe_police.paa""];this setObjectTexture [45,""ol_textures\text\tahoe_police.paa""];this setObjectTexture [46,""ol_textures\text\tahoe_police.paa""];this setObjectTexture [47,""ol_textures\text\tahoe_police.paa""];this setObjectTexture [48,""ol_textures\text\tahoe_police.paa""];this setObjectTexture [49,""ol_textures\text\tahoe_police.paa""];this setObjectTexture [50,""ol_textures\text\tahoe_police.paa""];
				this setVehicleVarName ""vehicle_%1_%2""; 
				vehicle_%1_%2 = this; 
				clearWeaponCargo this; 
				clearMagazineCargo this;
				newvehicle lock true;
				"; 
				processInitCommands;
				INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2]; 
				"INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
				', player, round(time), INV_CALL_CREATVEHICLE, getPos saveSpawn2, getDir _logic];
			};
			if(vehicle2spawn in _k9) then {
				call compile format ['
				newvehicle = vehicle2spawn createVehicle %4; 
				newvehicle setVehicleInit "
				this setObjectTexture [0, ""ol_textures\text\sub_k9.paa""];this setObjectTexture [45, ""ol_textures\text\sub_k9.paa""];this setObjectTexture [46, ""ol_textures\text\sub_k9.paa""];this setObjectTexture [47, ""ol_textures\text\sub_k9.paa""];this setObjectTexture [48, ""ol_textures\text\sub_k9.paa""];this setObjectTexture [50, ""ol_textures\text\sub_k9.paa""];this setObjectTexture [49, ""ol_textures\text\sub_k9.paa""];
				this setVehicleVarName ""vehicle_%1_%2""; 
				vehicle_%1_%2 = this; 
				clearWeaponCargo this; 
				clearMagazineCargo this;
				newvehicle lock true;
				"; 
				processInitCommands;
				INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2]; 
				"INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
				', player, round(time), INV_CALL_CREATVEHICLE, getPos saveSpawn2, getDir _logic];
			};
			if(vehicle2spawn in _traffic) then {
				call compile format ['
				newvehicle = vehicle2spawn createVehicle %4; 
				newvehicle setVehicleInit "
				this setObjectTexture [0,""ol_textures\text\f101_traffic.paa""];this setObjectTexture [44,""ol_textures\text\f101_traffic.paa""];this setObjectTexture [45,""ol_textures\text\f101_traffic.paa""];this setObjectTexture [46,""ol_textures\text\f101_traffic.paa""];this setObjectTexture [47,""ol_textures\text\f101_traffic.paa""];this setObjectTexture [48,""ol_textures\text\f101_traffic.paa""];
				this setVehicleVarName ""vehicle_%1_%2""; 
				vehicle_%1_%2 = this; 
				clearWeaponCargo this; 
				clearMagazineCargo this;
				newvehicle lock true;
				"; 
				processInitCommands;
				INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2]; 
				"INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
				', player, round(time), INV_CALL_CREATVEHICLE, getPos saveSpawn2, getDir _logic];
			};
		}
		else
		{
			call compile format ['
			newvehicle = vehicle2spawn createVehicle %4; 
			newvehicle setVehicleInit "
			this setVehicleVarName ""vehicle_%1_%2""; 
			vehicle_%1_%2 = this; 
			clearWeaponCargo this; 
			clearMagazineCargo this;
			newvehicle lock true;
			"; 
			processInitCommands;
			INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2]; 
			"INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
			', player, round(time), INV_CALL_CREATVEHICLE, getPos saveSpawn2, getDir _logic];
		};
	_countbefore = count savedVehiclesWest;
	savedVehiclesWest = savedVehiclesWest - [vehicle2Spawn];
	_countafter = count savedVehiclesWest;
	if (!(_countbefore == (_countafter + 1))) then
	{
		player sideChat format ["Multiple %1 in the array adding back deleted ones.",vehicle2spawn call inv_getitemname];
		_i = 0;
		while {(count savedVehiclesWest) < (_countbefore - 1)} do 
		{
			_i = _i + 1;
			savedVehiclesWest set [count savedVehiclesWest, vehicle2Spawn];
		};
		player sideChat format ["Added back %1 car(s).",_i];	
	};

	server globalChat format ["%1",_v];

	["savedVehiclesWest",savedVehiclesWest] spawn clientsavevar;

	player sideChat format ["RETRIEVED %1",vehicle2spawn call inv_getitemname];

	sleep 3;
	continue = false;
	gettingcopcar = 0;

	action222 = player addaction ["Retrieve Saved Vehicle","retrieveVehicleLand.sqf",[],1,false,true,"","player distance LandSavePoint <= 3"];
};