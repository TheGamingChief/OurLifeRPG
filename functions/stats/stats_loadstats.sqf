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
	_adminRank 				= [_ranks select 3]  call AM_Server_StrToArr; 	//Global
	_donorRank 				= [_ranks select 4]  call AM_Server_StrToArr; 	//Global
	_BankIncrease 		= [_ranks select 5]  call AM_Server_StrToArr; 	//Global
	_WeightIncrease 	= [_ranks select 6]  call AM_Server_StrToArr; 	//Global
	_CarSaveIncrease 	= [_ranks select 7]  call AM_Server_StrToArr; 	//Global

	_PD_Rank 					= [_ranks select 8]  call AM_Server_StrToArr;  	//Police
	_PD_Sheriff 			= [_ranks select 9]  call AM_Server_StrToArr;  	//Police
	_PD_K9 						= [_ranks select 10] call AM_Server_StrToArr;  	//Police
	_PD_Aviation 			= [_ranks select 11] call AM_Server_StrToArr; 	//Police
	_PD_SWAT 					= [_ranks select 12] call AM_Server_StrToArr; 	//Police
	_PD_CoastGuard		= [_ranks select 13] call AM_Server_StrToArr; 	//Police
	_PD_UnderCover 		= [_ranks select 14] call AM_Server_StrToArr; 	//Police
	_PD_FTO 					= [_ranks select 15] call AM_Server_StrToArr; 	//Police
	_PD_MedalRecipt 	= [_ranks select 16] call AM_Server_StrToArr; 	//Police

	_EMS_Rank 				= [_ranks select 17] call AM_Server_StrToArr; 	//ESU
	_EMS_Air 					= [_ranks select 18] call AM_Server_StrToArr; 	//ESU
	_EMS_FD 					= [_ranks select 19] call AM_Server_StrToArr; 	//ESU

	_PMC_Rank 				= [_ranks select 20] call AM_Server_StrToArr; 	//Civilian
	_Flyers_Rank 			= [_ranks select 21] call AM_Server_StrToArr;		//Civilian
	_Misc 						= [_ranks select 22] call AM_Server_StrToArr; 	//Civilian


	//Load Global Ranks
	switch (_donorRank) do
	{
		case 0:{};
		case 1:{
			Donate_id =  [getPlayerUID player];
		};
		case 2:{
			Donate_id  = [getPlayerUID player];
			Donate_id2 = [getPlayerUID player];
		};
		case 3:{
			Donate_id  = [getPlayerUID player];
			Donate_id2 = [getPlayerUID player];
			Donate_id3 = [getPlayerUID player];
		};
		case 4:{
			Donate_id  = [getPlayerUID player];
			Donate_id2 = [getPlayerUID player];
			Donate_id3 = [getPlayerUID player];
			Donate_id4 = [getPlayerUID player];
		};
		case 5:{
			Donate_id  = [getPlayerUID player];
			Donate_id2 = [getPlayerUID player];
			Donate_id3 = [getPlayerUID player];
			Donate_id4 = [getPlayerUID player];
			Donate_id5 = [getPlayerUID player];
		};
		case 6:{
			Donate_id  = [getPlayerUID player];
			Donate_id2 = [getPlayerUID player];
			Donate_id3 = [getPlayerUID player];
			Donate_id4 = [getPlayerUID player];
			Donate_id5 = [getPlayerUID player];
			Donate_id6 = [getPlayerUID player];
		};
		case 7:{
			Donate_id  = [getPlayerUID player];
			Donate_id2 = [getPlayerUID player];
			Donate_id3 = [getPlayerUID player];
			Donate_id4 = [getPlayerUID player];
			Donate_id5 = [getPlayerUID player];
			Donate_id6 = [getPlayerUID player];
			OL_TierX_ID = [getPlayerUID player];
		};
		case 8:{
			Donate_id     = [getPlayerUID player];
			Donate_id2    = [getPlayerUID player];
			Donate_id3    = [getPlayerUID player];
			Donate_id4    = [getPlayerUID player];
			Donate_id5    = [getPlayerUID player];
			Donate_id6 	  = [getPlayerUID player];
			OL_TierX_ID 	= [getPlayerUID player];
			TopDonator_id = [getPlayerUID player];
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

	switch (_adminRank) do {
		case 0: {};
		case 1: {
			adminlevel1 = [getPlayerUID player];
		};
		case 2: {
			adminlevel2 = [getPlayerUID player];
		};
		case 3: {
			adminlevel3 = [getPlayerUID player];
		};
		case 4: {
			adminlevel4 = [getPlayerUID player];
		};
		case 5: {
			OL_SwagDevs  = [getPlayerUID player];
			OL_Developer = [getPlayerUID player];
			isStaff 		 = true;
			player globalChat "Loaded in as Admin";
		};
	};

	//Load Side Ranks
	switch (_side) do {
		case west: {
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

				{ player addWeapon _x } forEach _weapons;

				{
					for "_mC" from 1 to (_x select 1) do {
						player addMagazine (_x select 0)
					};
				} forEach _magazines;
			};

			switch (_PD_Rank) do {
				case 0: {};
				case 1: {
					PO1_id = [getPlayerUID player];
				};
				case 2: {
					PO1_id = [getPlayerUID player];
					PO2_id = [getPlayerUID player];
				};
				case 3: {
					PO1_id = [getPlayerUID player];
					PO2_id = [getPlayerUID player];
					PO3_id = [getPlayerUID player];
				};
				case 4: {
					PO1_id = [getPlayerUID player];
					PO2_id = [getPlayerUID player];
					PO3_id = [getPlayerUID player];
					Cpl_id = [getPlayerUID player];
				};
				case 5: {
					PO1_id = [getPlayerUID player];
					PO2_id = [getPlayerUID player];
					PO3_id = [getPlayerUID player];
					Cpl_id = [getPlayerUID player];
					Sgt_id = [getPlayerUID player];
				};
				case 6: {
					PO1_id = [getPlayerUID player];
					PO2_id = [getPlayerUID player];
					PO3_id = [getPlayerUID player];
					Cpl_id = [getPlayerUID player];
					Sgt_id = [getPlayerUID player];
					Lt_id  = [getPlayerUID player];
				};
				case 7: {
					PO1_id = [getPlayerUID player];
					PO2_id = [getPlayerUID player];
					PO3_id = [getPlayerUID player];
					Cpl_id = [getPlayerUID player];
					Sgt_id = [getPlayerUID player];
					Lt_id  = [getPlayerUID player];
					Cpt_Id = [getPlayerUID player];
				};
				case 8: {
					PO1_id 	 = [getPlayerUID player];
					PO2_id 	 = [getPlayerUID player];
					PO3_id   = [getPlayerUID player];
					Cpl_id   = [getPlayerUID player];
					Sgt_id   = [getPlayerUID player];
					Lt_id    = [getPlayerUID player];
					Cpt_Id   = [getPlayerUID player];
					Chief_id = [getPlayerUID player];
				};
			};

			switch (_PD_Sheriff) do {
				case 0: {};
				case 1: {
					JrDeputy_id  = [getPlayerUID player];
				};
				case 2: {
					JrDeputy_id  = [getPlayerUID player];
					Deputy_id 	 = [getPlayerUID player];
				};
				case 3: {
					JrDeputy_id  = [getPlayerUID player];
					Deputy_id 	 = [getPlayerUID player];
					SrDeputy_id  = [getPlayerUID player];
				};
				case 4: {
					JrDeputy_id  = [getPlayerUID player];
					Deputy_id 	 = [getPlayerUID player];
					SrDeputy_id  = [getPlayerUID player];
					CplDeputy_id = [getPlayerUID player];
				};
				case 5: {
					JrDeputy_id  = [getPlayerUID player];
					Deputy_id 	 = [getPlayerUID player];
					SrDeputy_id  = [getPlayerUID player];
					CplDeputy_id = [getPlayerUID player];
					SgtDeputy_id = [getPlayerUID player];
				};
				case 6: {
					JrDeputy_id  = [getPlayerUID player];
					Deputy_id 	 = [getPlayerUID player];
					SrDeputy_id  = [getPlayerUID player];
					CplDeputy_id = [getPlayerUID player];
					SgtDeputy_id = [getPlayerUID player];
					Sheriff_id   = [getPlayerUId player];
				};
			};

			if (_PD_K9 != 0) then {
				K9_id = [getPlayerUID player];
			};
			if (_PD_Aviation != 0) then {
				PDAviation_id = [getPlayerUID player];
			};
			if (_PD_SWAT != 0) then {
				SWAT_id = [getPlayerUID player];
			};
			if (_PD_UnderCover != 0) then {
				Undercover_id = [getPlayerUID player];
			};
			if (_PD_CoastGuard != 0) then {
				CoastGuard_id = [getPlayerUID player];
			};
			if (_PD_FTO != 0) then {
				FTO_id = [getPlayerUID player];
			};
			if (_PD_MedalRecipt != 0) then {
				MedalRecipt_id = [getPlayerUID player];
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

			switch (_PMC_Rank) do
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

			switch (_Misc) do {
				case 0:  {};
				case 1:  {};
				case 2:  {};
				case 3:  {};
				case 4:  {};
				case 5:  {};
				case 6:  {};
				case 7:  {};
				case 8:  {};
				case 9:  {};
				case 10: {};
			};

			if (_Flyers_Rank != 0) then {
				Tow_id = [getplayeruid player];
			};
			if (_PD_UnderCover != 0) then {
				Undercover_id = [getplayeruid player];
			};
		};

		case resistance:
		{
			if (_key == "full_stats") then {
				_bank 			= ([_stats select 3]  call AM_Server_StrToArr);
				_inventory 	= ([_stats select 10] call AM_Server_StrToArr);
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

			switch (_EMS_Rank) do
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
					EMT1_id       	 = [getplayeruid player];
					EMT2_id 	  		 = [getplayeruid player];
					EMT3_id 	  		 = [getplayeruid player];
					FD_id   	  		 = [getplayeruid player];
					EMTSupervisor_id = [getplayeruid player];
				};
				case 6: {
					EMT1_id       	 = [getplayeruid player];
					EMT2_id 	  		 = [getplayeruid player];
					EMT3_id 	  		 = [getplayeruid player];
					FD_id   	  		 = [getplayeruid player];
					EMTSupervisor_id = [getplayeruid player];
					EMTLieutenant_id = [getplayeruid player];
				};
				case 7: {
					EMT1_id       	 = [getplayeruid player];
					EMT2_id 	  		 = [getplayeruid player];
					EMT3_id 	  		 = [getplayeruid player];
					FD_id   	  		 = [getplayeruid player];
					EMTSupervisor_id = [getplayeruid player];
					EMTLieutenant_id = [getplayeruid player];
				};
			};

			if (_EMS_Air != 0) then {
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
			} forEach EMSChiefArray;
		};
	};

	if (count _stats != 0) then {
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
};

OL_StatsLoadedFromDB = true;
saveAvailable = true;

[] call INV_RemoveEmptyItems;
systemChat "Statistics Loaded...";
