/*
MySQL Statistic Loader
by DEADdem and CP and TGC and Garry and NOT FOSTER

Usage without permission is prohibited.
*/

_key = _this select 0;
if (isNil "_key") exitWith {
	player groupChat format["Stat Loading Failed: No key given in %1", _this];
};

if (_key == "no_data") then {
	player groupChat "Welcome to the Community!";
	INV_SavedVehAir = [];
	INV_SavedVehLand = [];
} else {

	//Get Data
	_side 	= playerSide;
	_Stats 	= _this select 1;
	_Ranks 	= _this select 2;
	_userN 	=	(_this select 3) select 0;
	_userId =	(_this select 3) select 1;

	//Check Stats
	_civnum = player;
	_uid = getPlayerUID player;

	if (_userId != getPlayerUID player) exitWith {
		if (_userN == "0") then {
			systemChat format["Stat Loading Error: Too many concurrent requests!", _userN];
		} else {
			systemChat format["Stat Loading Error: You nearly loaded with %1's Stats!", _userN];
		};

		[] spawn {
			_time = ceil(random 5) + 5;

			systemChat format["Retrying in %1 seconds...", _time];
			uiSleep _time;

			systemChat "Retrying...";
			[] call fnc_RequestStats;
		};
	};

	//Load Player Ranks
	_donorRank =       [_ranks select 3]  call AM_Server_StrToArr; 	//Global
	_BankIncrease =    [_ranks select 4]  call AM_Server_StrToArr; 	//Global
	_WeightIncrease =  [_ranks select 5]  call AM_Server_StrToArr; 	//Global
	_CarSaveIncrease = [_ranks select 6]  call AM_Server_StrToArr; 	//Global
	_adminRank =       [_ranks select 19] call AM_Server_StrToArr; 	//Global

	_CopRank =         [_ranks select 9]  call AM_Server_StrToArr;  //Police
	_isSheriff =       [_ranks select 10] call AM_Server_StrToArr;  //Police
	_isK9 =            [_ranks select 11] call AM_Server_StrToArr;  //Police
	_isAviation =      [_ranks select 12] call AM_Server_StrToArr; 	//Police
	_isSWAT =          [_ranks select 13] call AM_Server_StrToArr; 	//Police
	_isCoastGuard =    [_ranks select 14] call AM_Server_StrToArr; 	//Police
	_isFTO =           [_ranks select 16] call AM_Server_StrToArr; 	//Police
	_isCorrections =   [_ranks select 20] call AM_Server_StrToArr; 	//Police
	_isUndercover =    [_ranks select 15] call AM_Server_StrToArr; 	//Police

	_PMCRank =         [_ranks select 7]  call AM_Server_StrToArr; 	//Civilian
	_ReporterRank =    [_ranks select 8]  call AM_Server_StrToArr; 	//Civilian
	_isTow =   		     [_ranks select 21] call AM_Server_StrToArr;	//Civilian
	_isUndercover =    [_ranks select 15] call AM_Server_StrToArr; 	//Civilian

	_EMTRank =         [_ranks select 17] call AM_Server_StrToArr; 	//ESU
	_isEMTAir =        [_ranks select 18] call AM_Server_StrToArr; 	//ESU

	//Load Global Ranks
	switch (_donorRank) do
	{
		case 0:{};
		case 1:{
			Donate_id =  [getplayeruid player];
		};
		case 2:{
			Donate_id  = [getplayeruid player];
			Donate_id2 = [getplayeruid player];
		};
		case 3:{
			Donate_id  = [getplayeruid player];
			Donate_id2 = [getplayeruid player];
			Donate_id3 = [getplayeruid player];
		};
		case 4:{
			Donate_id  = [getplayeruid player];
			Donate_id2 = [getplayeruid player];
			Donate_id3 = [getplayeruid player];
			Donate_id4 = [getplayeruid player];
		};
		case 5:{
			Donate_id  = [getplayeruid player];
			Donate_id2 = [getplayeruid player];
			Donate_id3 = [getplayeruid player];
			Donate_id4 = [getplayeruid player];
			Donate_id5 = [getplayeruid player];
		};
		case 6:{
			Donate_id  = [getplayeruid player];
			Donate_id2 = [getplayeruid player];
			Donate_id3 = [getplayeruid player];
			Donate_id4 = [getplayeruid player];
			Donate_id5 = [getplayeruid player];
			Donate_id6 = [getplayeruid player];
		};
		case 7:{
			Donate_id  = [getplayeruid player];
			Donate_id2 = [getplayeruid player];
			Donate_id3 = [getplayeruid player];
			Donate_id4 = [getplayeruid player];
			Donate_id5 = [getplayeruid player];
			Donate_id6 = [getplayeruid player];
			OL_TierX_ID = [getplayeruid player];
		};
		case 8:{
			Donate_id     = [getplayeruid player];
			Donate_id2    = [getplayeruid player];
			Donate_id3    = [getplayeruid player];
			Donate_id4    = [getplayeruid player];
			Donate_id5    = [getplayeruid player];
			Donate_id6 	  = [getplayeruid player];
			OL_TierX_ID 	= [getplayeruid player];
			TopDonator_id = [getplayeruid player];
		};
	};

	switch (_BankIncrease) do
	{
		case 0:{
			bank_limit = 15000000; //15m
			};
		case 1:{
			bank_limit = 25000000; //25m
		};
		case 2:{
			bank_limit = 50000000; //50m
		};
		case 3:{
			bank_limit = 100000000; //100m
		};
	};

	switch (_WeightIncrease) do
	{
		case 0:{
			INV_Tragfaehigkeit = 60;
		};
		case 1:{
			INV_Tragfaehigkeit = 100;
		};
		case 2:{
			INV_Tragfaehigkeit = 150;
		};
		case 3:{
			INV_Tragfaehigkeit = 300;
		};
	};

	switch (_CarSaveIncrease) do
	{
		case 0:{
			OL_CarSaveLimit = 10;
		};
		case 1:{
			OL_CarSaveLimit = 15;
		};
		case 2:{
			OL_CarSaveLimit = 20;
		};
		case 3:{
			OL_CarSaveLimit = 25;
		};
	};

	switch (_adminRank) do
	{
		case 0:{};
		case 1:{
			adminlevel1 = [getplayeruid player];
		};
		case 2:{
			adminlevel2 = [getplayeruid player];
		};
		case 3:{
			adminlevel3 = [getplayeruid player];
		};
		case 4:{
			adminlevel4 = [getplayeruid player];
		};
		case 5:{
			OL_SwagDevs  = [getplayeruid player];
			OL_Developer = [getplayeruid player];
			isStaff 		 = true;
			player globalChat "Loaded in as Admin";
		};
	};

//Load Side Ranks

	switch (_side) do
	{
		case west:
		{
			if (_key == "full_stats") then {
				_bank 					= ([_stats select 3] call AM_Server_StrToArr);
				_inventory 			= ([_stats select 7] call AM_Server_StrToArr);
				_weapons 				= ([_stats select 8] call AM_Server_StrToArr) select 0;
				_magazines 			= ([_stats select 8] call AM_Server_StrToArr) select 1;
				_licenses 			= ([_stats select 9] call AM_Server_StrToArr);
				//_groundVeh 			= ([_stats select 6] call AM_Server_StrToArr);
				//_airVeh 				= ([_stats select 7] call AM_Server_StrToArr);

				INV_InventarArray = _inventory;
				INV_LizenzOwner   = _licenses;
				kontostand 		  	= _bank;
				//INV_SavedVehLand = _groundVeh;

				{ player addWeapon _x; } forEach _weapons;

				{
					for "_mC" from 1 to (_x select 1) do {
						player addMagazine (_x select 0);
					};
				}forEach _magazines;
			};

			switch (_CopRank) do
			{
				case 0:{};
				case 1:{
					PO1_id = [getplayeruid player];
				};
				case 2:{
					PO1_id = [getplayeruid player];
					PO2_id = [getplayeruid player];
				};
				case 3:{
					PO1_id = [getplayeruid player];
					PO2_id = [getplayeruid player];
					PO3_id = [getplayeruid player];
				};
				case 4:{
					PO1_id = [getplayeruid player];
					PO2_id = [getplayeruid player];
					PO3_id = [getplayeruid player];
					Cpl_id = [getplayeruid player];
				};
				case 5:{
					PO1_id = [getplayeruid player];
					PO2_id = [getplayeruid player];
					PO3_id = [getplayeruid player];
					Cpl_id = [getplayeruid player];
					Sgt_id = [getplayeruid player];
				};
				case 6:{
					PO1_id = [getplayeruid player];
					PO2_id = [getplayeruid player];
					PO3_id = [getplayeruid player];
					Cpl_id = [getplayeruid player];
					Sgt_id = [getplayeruid player];
					Lt_id  = [getplayeruid player];
				};
				case 7:{
					PO1_id = [getplayeruid player];
					PO2_id = [getplayeruid player];
					PO3_id = [getplayeruid player];
					Cpl_id = [getplayeruid player];
					Sgt_id = [getplayeruid player];
					Lt_id  = [getplayeruid player];
					Cpt_Id = [getplayeruid player];
				};
				case 8:{
					PO1_id 	 = [getplayeruid player];
					PO2_id 	 = [getplayeruid player];
					PO3_id   = [getplayeruid player];
					Cpl_id   = [getplayeruid player];
					Sgt_id   = [getplayeruid player];
					Lt_id    = [getplayeruid player];
					Cpt_Id   = [getplayeruid player];
					Chief_id = [getplayeruid player];
				};
			};

			switch (_isSheriff) do
			{
				case 0:{};
				case 1:{
					Deputy_id = [getplayeruid player];
				};
				case 2:{
					Deputy_id 	 = [getplayeruid player];
					SgtDeputy_id = [getplayeruid player];
				};
				case 3:{
					Deputy_id 	 = [getplayeruid player];
					SgtDeputy_id = [getplayeruid player];
					Sheriff_id 	 = [getplayeruid player];
				};
			};

			if (_isK9 != 0) then {
				K9_id = [getplayeruid player];
			};
			if (_isAviation != 0) then {
				PDAviation_id = [getplayeruid player];
			};
			if (_isSwat != 0) then {
				SWAT_id = [getplayeruid player];
			};
			if (_isCoastGuard != 0) then {
				CoastGuard_id = [getplayeruid player];
			};
			if (_isFTO != 0) then {
				FTO_id = [getplayeruid player];
			};
			if (_isCorrections != 0) then {
				Corrections_id = [getplayeruid player];
			};
			if (_isUndercover != 0) then {
				Undercover_id = [getplayeruid player];
			};

			{
				if (_civnum == _x) then {
					if !(_uid in Chief_id) then {
  						player groupChat "This slot is reserved to the Chief of Police! You will be kicked back to lobby in 10 seconds!";
							uiSleep 10;
		   				endMission "LOSER";
					} else {
  						player groupChat "Welcome Chief, Go Kick Some Ass!!!";
					};
				};
			} forEach CopChiefArray;

			{
				if (_civnum == _x) then {
					if !(_uid in Cpt_ID)then {
  						player groupChat "This slot is reserved for Captains only! You will be kicked back to the lobby in 10 seconds!";
  						uiSleep 10;
  						endMission "LOSER";
					} else {
  						player groupChat format["Welcome Captain %1!",name player];
					};
				};
			} forEach CopCptArray;

			{
				if (_civnum == _x) then
				{
					if !(_uid in Sheriff_id) then
					{
  						player groupChat "This slot is reserved for the Sheriff! You will be kicked back to lobby in 10 seconds!";
  						uiSleep 10;
  						endMission "LOSER";
					}
					else
					{
  						player groupChat "Welcome Sheriff, remember to set an example for the Patrol Division.";
					};
				};
			} forEach CopSheriffArray;

			{
				if (_civnum == _x) then
				{
					if !(_uid in Deputy_id) then
					{
  						player groupChat "This slot is reserved for a Sheriff's Deputy! You will be kicked back to lobby in 10 seconds!";
  						uiSleep 10;
  						endMission "LOSER";
					}
					else
					{
  						player groupChat "Welcome Deputy, remember to set an example for the Patrol Division.";
					};
				};
			} forEach CopDeputyArray;
		};

		case civilian:
		{
			if (_key == "full_stats") then {
				_bank 			= ([_stats select 3]  call AM_Server_StrToArr);
				_inventory 	= ([_stats select 4]  call AM_Server_StrToArr);
				_weapons 		= ([_stats select 5] call AM_Server_StrToArr) select 0;
				_magazines 	= ([_stats select 5] call AM_Server_StrToArr) select 1;
				_lic 				= ([_stats select 6] call AM_Server_StrToArr);
				//_GVS 				= [_stats select 13] call AM_Server_StrToArr;
				//_AVS 				= [_stats select 14] call AM_Server_StrToArr;

				INV_InventarArray = _inventory;
				INV_LizenzOwner   = _lic;
				//INV_SavedVehLand  = _GVS;
				//INV_SavedVehAir   = _AVS;
				kontostand 		  = _bank;

				if ("car" call INV_haslicense) then {
					demerits = 10
				};

				{player addWeapon _x;}forEach _weapons;

				{
					for "_mC" from 1 to (_x select 1) do {
						player addMagazine (_x select 0);
					};
				}forEach _magazines;
			};

			switch (_PMCRank) do
			{
				case 0:{};
				case 1:{
					PMC_id = [getplayeruid player];
				};
				case 2:{
					PMC_id 		  = [getplayeruid player];
					CommandPMC_id = [getplayeruid player];
				};
			};

			switch (_ReporterRank) do
			{
				case 0:{};
				case 1:{
					Reporter_id = [getplayeruid player];
				};
				case 2:{
					Reporter_id 	= [getplayeruid player];
					ReporterLead_id = [getplayeruid player];
				};
			};

			if (_isTow != 0) then {
				Tow_id = [getplayeruid player];
			};
			if (_isUndercover != 0) then {
				Undercover_id = [getplayeruid player];
			};
		};

		case resistance:
		{
			if (_key == "full_stats") then {
				_bank 			= ([_stats select 3]  call AM_Server_StrToArr);
				_inventory 	= ([_stats select 10]  call AM_Server_StrToArr);
				_weapons 		= ([_stats select 11] call AM_Server_StrToArr) select 0;
				_magazines 	= ([_stats select 11] call AM_Server_StrToArr) select 1;
				_lic 				= ([_stats select 12] call AM_Server_StrToArr);
				//_GVS 				= [_stats select 13] call AM_Server_StrToArr;
				//_AVS 				= [_stats select 14] call AM_Server_StrToArr;

				INV_InventarArray = _inventory;
				INV_LizenzOwner   = _lic;
				//INV_SavedVehLand  = _GVS;
				//INV_SavedVehAir   = _AVS;
				kontostand 		  = _bank;

				{ player addWeapon _x; } forEach _weapons;

				{
					for "_mC" from 1 to (_x select 1) do {
						player addMagazine (_x select 0);
					};
				}forEach _magazines;
			};

			switch (_EMTRank) do
			{
				case 0:{};
				case 1:{
					EMT1_id = [getplayeruid player];
				};
				case 2:{
					EMT1_id = [getplayeruid player];
					EMT2_id = [getplayeruid player];
				};
				case 3:{
					EMT1_id = [getplayeruid player];
					EMT2_id = [getplayeruid player];
					EMT3_id = [getplayeruid player];
				};
				case 4:{
					EMT1_id = [getplayeruid player];
					EMT2_id = [getplayeruid player];
					EMT3_id = [getplayeruid player];
					FD_id   = [getplayeruid player];
				};
				case 5:{
					EMT1_id       = [getplayeruid player];
					EMT2_id 	  	= [getplayeruid player];
					EMT3_id 	  	= [getplayeruid player];
					FD_id   	  	= [getplayeruid player];
					ESUCommand_id = [getplayeruid player];
				};
			};

			if (_isEMTAir != 0) then {
				AirESU_id = [getplayeruid player];
			};

			{
				if (_civnum == _x) then
				{
					if !(_uid in ESUCommand_id) then
					{
  						player groupChat "This slot is reserved for the Chief Of EMS! You will be kicked back to lobby in 10 seconds!";
  						uiSleep 10;
  						endMission "LOSER";
					}
					else
					{
  						player groupChat format["Welcome Chief %1! Go save some lifes!",name player];
					};
				};
			}forEach EMSChiefArray;
		};
	};

	_statWipeMessage = _stats select 14;
	if (isNil "_statWipeMessage") then { _statWipeMessage = ""; };

	if (_statWipeMessage != "") then {
		player groupChat format["Your Statistics have been wiped for %1. If you believe this is a error please contact a Head Administrator.", _statWipeMessage];
		player groupChat format["Your Statistics have been wiped for %1. If you believe this is a error please contact a Head Administrator.", _statWipeMessage];

		INV_InventarArray = [["handy", 1],["schluesselbund", 1]];
		INV_LizenzOwner   = [];
		INV_SavedVehLand  = [];
		INV_SavedVehAir   = [];
		kontostand 		  	= 25000;
		_weapons          = [];
		_magazines 		 		= [];

		OL_NeedsStatwipe = true;
		OL_StatsLoadedFromDB = true;
		[] call fnc_SaveStats;
	};
};

OL_StatsLoadedFromDB = true;
saveAvailable = true;

[] call INV_RemoveEmptyItems;
systemChat "Statistics Loaded...";
