/*
        MySQL Statistic Loader
                by DEADdem
        Usage without permission is
        prohibited.
*/
HowManyBruv = {
        _Key = _this select 0;
        _Array = _this select 1;
 
        _Amount = 0;
        {
                if(_x == _Key)then{
                        _Amount = _Amount + 1;
                };
        }forEach _Array;
 
        _Amount;
};
CreateNestedMagArray = {
        _mags = magazines player;
        _giveReturn = [];
        _doneMags = [];
        {
 
                if(_x in _doneMags)then{
                }else{                 
                        _howManyOfCurrent = [_x, magazines player] call HowManyBruv;
                        _doneMags set[(count(_doneMags)), _x];
                        _giveReturn set[count(_giveReturn), [_x, _howManyOfCurrent]];
                };
        }forEach _mags;
        _giveReturn;
};
 
DD_f_LoadStats = {
        _key = _this select 0;
        if(isNil "_key")exitWith{player groupChat format["Stat Loading Failed: No key given in %1", _this];};  
       
                Donate_id = [];
                Donate_id2 = [];
                Donate_id3= [];
                Donate_id4 = [];
                Donate_id5 = [];
                Donate_id6 = [];
                TopDonator_id = [];
                BankIncrease1_id = [];
                BankIncrease2_id = [];
                BankIncrease3_id = [];
                WeightIncrease1_id = [];
                WeightIncrease2_id = [];
                WeightIncrease3_id = [];
                CarSaveIncrease1_id = [];
                CarSaveIncrease2_id = [];
                CarSaveIncrease3_id = [];
                Reporter_id = [];
                ReporterLead_id = [];
				Tow_id = [];
				CommandPMC_id = [];
                PMC_id = [];
                PO1_id = [];
                PO2_id = [];
                PO3_id = [];
                Cpl_id = [];
                Sgt_id = [];
                Lt_id = [];
                Cpt_id = [];
                Chief_id = [];
                Deputy_id = [];
				SgtDeputy_id = [];
                Sheriff_id = [];
                K9_id = [];
                PDAviation_id = [];
                SWAT_id = [];
                CoastGuard_id = [];
				FTO_id = [];
				Corrections_id = [];
                Undercover_id = [];
                EMT1_id = [];
                EMT2_id = [];
                EMT3_id = [];
                FD_id = [];
                AirESU_id = [];
                ESUCommand_id = [];
                TierX_id = [];
                adminlevel4  = [];
                adminlevel3 = [];
                adminlevel2 = [];
               
        if(_key == "lolfuckya")then{
                player groupChat "Welcome to the Community!";
                INV_SavedVehicleAir = [];
                INV_SavedVehLand = [];
        }else{
               
                //Get Data
               
                _side = side player;
                _Stats = _this select 1;
                _Ranks = _this select 2;
               
			    //Check Stats
				
				_civnum = player;
				_uid = getPlayerUID player;
				_nameUser = _stats select 16;
				_userId = _stats select 1;

				if(!(_userId == getPlayerUID player))exitWith{
					if (_nameUser == "0") then {
						systemChat format["Stat Loading Error: Too many concurrent requests!",_nameUser];
					} else {					
						systemChat format["Stat Loading Error: You nearly loaded with %1's Stats!",_nameUser];
					};					
					
					[] spawn { 
						_time = ceil(random 5);
					
						systemChat format["Retrying in %1 seconds...", _time]; 
						sleep _time;
						
						systemChat "Retrying...";
						[] call fnc_RequestStats;
					};
				};
			   
                //Load Player Ranks
               
                _donorRank =       [_ranks select 3]  call AM_Server_StrToArr; //Global
                _BankIncrease =    [_ranks select 4]  call AM_Server_StrToArr; //Global
                _WeightIncrease =  [_ranks select 5]  call AM_Server_StrToArr; //Global
                _CarSaveIncrease = [_ranks select 6]  call AM_Server_StrToArr; //Global
                _adminRank =       [_ranks select 19] call AM_Server_StrToArr; //Global
               
                _CopRank =         [_ranks select 9]  call AM_Server_StrToArr; //Police
                _isSheriff =       [_ranks select 10]  call AM_Server_StrToArr; //Police
                _isK9 =            [_ranks select 11]  call AM_Server_StrToArr; //Police
                _isAviation =      [_ranks select 12] call AM_Server_StrToArr; //Police
                _isSWAT =          [_ranks select 13] call AM_Server_StrToArr; //Police
                _isCoastGuard =    [_ranks select 14] call AM_Server_StrToArr; //Police
                _isFTO =           [_ranks select 16] call AM_Server_StrToArr; //Police
				_isCorrections =   [_ranks select 20] call AM_Server_StrToArr; //Police
				_isUndercover =    [_ranks select 15] call AM_Server_StrToArr; //Police
               
                _PMCRank =         [_ranks select 7]  call AM_Server_StrToArr; //Civilian
				_ReporterRank =    [_ranks select 8]  call AM_Server_StrToArr; //Civilian
				_isTow =   		   [_ranks select 21] call AM_Server_StrToArr; 	//Civilian
                _isUndercover =    [_ranks select 15] call AM_Server_StrToArr; //Civilian
               
                _EMTRank =         [_ranks select 17] call AM_Server_StrToArr; //ESU
                _isEMTAir =        [_ranks select 18] call AM_Server_StrToArr; //ESU
               
                //Load Global Ranks
               
                switch(_donorRank)do{
                        case 0:{};
                        case 1:{
                                Donate_id =  [getplayeruid player];
                        };
                        case 2:{
                                Donate_id =  [getplayeruid player];
                                Donate_id2 = [getplayeruid player];
                        };
                        case 3: {
                                Donate_id =  [getplayeruid player];
                                Donate_id2 = [getplayeruid player];
                                Donate_id3 = [getplayeruid player];
                        };
                        case 4:
                        {
                                Donate_id =  [getplayeruid player];
                                Donate_id2 = [getplayeruid player];
                                Donate_id3 = [getplayeruid player];
                                Donate_id4 = [getplayeruid player];
                        };
                        case 5:{
                                Donate_id =  [getplayeruid player];
                                Donate_id2 = [getplayeruid player];
                                Donate_id3 = [getplayeruid player];
                                Donate_id4 = [getplayeruid player];
                                Donate_id5 = [getplayeruid player];
                        };
                        case 6:{
                                Donate_id =  [getplayeruid player];
                                Donate_id2 = [getplayeruid player];
                                Donate_id3 = [getplayeruid player];
                                Donate_id4 = [getplayeruid player];
                                Donate_id5 = [getplayeruid player];
                                Donate_id6 = [getplayeruid player];
                        };
                        case 7:{
                                Donate_id =  [getplayeruid player];
                                Donate_id2 = [getplayeruid player];
                                Donate_id3 = [getplayeruid player];
                                Donate_id4 = [getplayeruid player];
                                Donate_id5 = [getplayeruid player];
                                Donate_id6 = [getplayeruid player];
                                TierX_id =   [getplayeruid player];
                        };
                        case 8:{
                                Donate_id =  [getplayeruid player];
                                Donate_id2 = [getplayeruid player];
                                Donate_id3 = [getplayeruid player];
                                Donate_id4 = [getplayeruid player];
                                Donate_id5 = [getplayeruid player];
                                Donate_id6 = [getplayeruid player];
                                TierX_id =   [getplayeruid player];
                                TopDonator_id = [getplayeruid player];
                        };
                };
               
                switch(_BankIncrease)do{
                        case 0: {};
                        case 1: {
                                BankIncrease1_id = [getplayeruid player];
                        };
                        case 2: {
                                BankIncrease2_id = [getplayeruid player];
                        };
                        case 3: {
                                BankIncrease3_id = [getplayeruid player];
                        };
                };
               
                switch(_WeightIncrease)do{
                        case 0: {};
                        case 1: {
                                WeightIncrease1_id = [getplayeruid player];
                        };
                        case 2: {
                                WeightIncrease2_id = [getplayeruid player];
                        };
                        case 3: {
                                WeightIncrease3_id = [getplayeruid player];
                        };
                };
               
                switch(_CarSaveIncrease)do{
                        case 0: {};
                        case 1: {
                                CarSaveIncrease1_id = [getplayeruid player];
                        };
                        case 2: {
                                CarSaveIncrease2_id = [getplayeruid player];
                        };
                        case 3: {
                                CarSaveIncrease3_id = [getplayeruid player];
                        };
                };
               
                switch(_adminRank)do {
                        case 0: {};
                        case 1: {
                                adminlevel2 = [getplayeruid player];
                        };
                        case 2: {
                                adminlevel3 = [getplayeruid player];
                        };
                        case 3:{
                                adminlevel4 = [getplayeruid player];
                        };
                        case 4:{
                                SwagDevs = [getplayeruid player];
                                Developer_id = [getplayeruid player];
                        };
                };
               
                //Load Side Ranks
               
                switch(_side)do{
                        case west:{
                                _inventory = [(_stats select 2)] call AM_Server_StrToArr;
                                _weapons = [(_stats select 3)] call AM_Server_StrToArr;
                                _magazines = [(_stats select 4)] call AM_Server_StrToArr;
                                _licenses = [(_stats select 5)] call AM_Server_StrToArr;
                                _groundVeh = [_stats select 6] call AM_Server_StrToArr;
                                _airVeh = [_stats select 7] call AM_Server_StrToArr;
                                _bank = [_stats select 8] call AM_Server_StrToArr;
								_statwipe = [_stats select 17] call AM_Server_StrToArr;
								_statwipeReason = [_stats select 18] call AM_Server_StrToArr;
                               
                                INV_InventarArray = _inventory;
                                INV_LizenzOwner = _licenses;
                                kontostand = _bank;
                                savedVehiclesWest = _groundVeh;
								
                                if(_statwipe !=0 )then{
									systemChat format["Your Statistics have been wiped for %1. If you believe this is a error please contact TheGamingChief.", _statwipeReason];
									systemChat format["Your Statistics have been wiped for %1. If you believe this is a error please contact TheGamingChief.", _statwipeReason];
									systemChat format["Your Statistics have been wiped for %1. If you believe this is a error please contact TheGamingChief.", _statwipeReason];
									systemChat format["Your Statistics have been wiped for %1. If you believe this is a error please contact TheGamingChief.", _statwipeReason];
									INV_InventarArray = [["handy", 1],["schluesselbund", 1]];
									INV_LizenzOwner = [];
									savedVehiclesWest = [];
									kontostand = 25000;
									_weapons = [];
									_magazines = [];
                                };
                               
                                {
                                        player addWeapon _x;
                                }forEach _weapons;
                               
                                {
                                        for "_mC" from 1 to (_x select 1) do {
                                                player addMagazine (_x select 0);
                                        };                                     
                                }forEach _magazines;                   
                               
                                switch(_CopRank)do{
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
                                                Lt_id =  [getplayeruid player];
                                        };
                                        case 7:{
                                                PO1_id = [getplayeruid player];
                                                PO2_id = [getplayeruid player];
                                                PO3_id = [getplayeruid player];
                                                Cpl_id = [getplayeruid player];
                                                Sgt_id = [getplayeruid player];
                                                Lt_id =  [getplayeruid player];
                                                Cpt_Id = [getplayeruid player];
                                        };
                                        case 8:{                                       
                                                PO1_id = [getplayeruid player];
                                                PO2_id = [getplayeruid player];
                                                PO3_id = [getplayeruid player];
                                                Cpl_id = [getplayeruid player];
                                                Sgt_id = [getplayeruid player];
                                                Lt_id =  [getplayeruid player];
                                                Cpt_Id = [getplayeruid player];
                                                Chief_id = [getplayeruid player];
                                        };
                                };
                       
                                switch(_isSheriff)do{
                                        case 0: {};
                                        case 1:{
                                                Deputy_id = [getplayeruid player];
                                        };
                                        case 2:{
                                                Deputy_id = [getplayeruid player];
                                                SgtDeputy_id = [getplayeruid player];
                                        };
                                        case 3:{
                                                Deputy_id = [getplayeruid player];
												SgtDeputy_id = [getplayeruid player];
                                                Sheriff_id = [getplayeruid player];
                                        };
                                };
                       
                                if(_isK9 != 0)then{
                                        K9_id = [getplayeruid player];
                                };
                               
                                if(_isAviation != 0)then{
                                        PDAviation_id = [getplayeruid player];
                                };
                               
                                if(_isSwat != 0)then{
                                        SWAT_id = [getplayeruid player];
                                };
                               
                                if(_isCoastGuard != 0)then{
                                        CoastGuard_id = [getplayeruid player];
                                };
								
								if(_isFTO != 0)then{
                                        FTO_id = [getplayeruid player];
                                };
								if(_isCorrections != 0)then{
                                        Corrections_id = [getplayeruid player];
                                };
                                if(_isUndercover != 0)then{
                                        Undercover_id = [getplayeruid player];
                                };
								
                                {
                                        if (_civnum == _x) then
                                        {
                                                if !(_uid in Chief_id) then
 
                                                {
                                                        player groupChat "This slot is reserved to the Chief of Police! You will be kicked back to lobby in 10 seconds!";
														sleep 10;
                                                        endMission "LOSER";
                                                }
                                                else
                                                {
                                                        player groupChat "Welcome Chief, Go Kick Some Ass!!!";
                                                };
                                        };
                                } foreach copchiefarray;
 
                                {
                                        if (_civnum == _x) then
                                        {
                                                if !(_uid in Sheriff_id) then
                                                {
                                                        player groupChat "This slot is reserved for the Sheriff! You will be kicked back to lobby in 10 seconds!";
                                                        sleep 10;
                                                        endMission "LOSER";
                                                }
                                                else
                                                {
                                                        player groupChat "Welcome Sheriff, remember to set an example for the Patrol Division.";
                                                };
                                        };
                                } foreach copsheriffarray;
 
                                {
                                        if (_civnum == _x) then
                                        {
                                                if !(_uid in Deputy_id) then
                                                {
                                                        player groupChat "This slot is reserved for a Sheriff's Deputy! You will be kicked back to lobby in 10 seconds!";
                                                        sleep 10;
                                                        endMission "LOSER";
                                                }
                                                else
                                                {
                                                        player groupChat "Welcome Deputy, remember to set an example for the Patrol Division.";
                                                };
                                        };
                                } foreach copdeputyarray;
 
                                {
                                        if (_civnum == _x) then
                                        {
                                                if !(_uid in Deputy_id) then
                                                {
                                                        player groupChat "This slot is reserved for a Sheriff's Deputy! You will be kicked back to lobby in 10 seconds!";
                                                        sleep 10;
                                                        endMission "LOSER";
                                                }
                                                else
                                                {
                                                        player groupChat "Welcome Deputy, remember to set an example for the Patrol Division.";
                                                };
                                        };
                                } foreach copdeputyarray2;
                        };
                        case civilian:
                        {
                                _inventory = [(_stats select 9)] call AM_Server_StrToArr;
                                _weapons = [(_stats select 10)] call AM_Server_StrToArr;
                                _magazines = [(_stats select 11)] call AM_Server_StrToArr;
                                _lic = [_stats select 12] call AM_Server_StrToArr;
                                _GVS = [_stats select 13] call AM_Server_StrToArr;
                                _AVS = [_stats select 14] call AM_Server_StrToArr;
                                _bank = [_stats select 8] call AM_Server_StrToArr;
								_statwipe = [_stats select 17] call AM_Server_StrToArr;
								_statwipeReason = [_stats select 18] call AM_Server_StrToArr;

                                INV_InventarArray = _inventory;
                                INV_LizenzOwner = _lic;
                                INV_SavedVehLand = _GVS;
                                INV_SavedVehAir = _AVS;
                                kontostand = _bank;
								
                                if(_statwipe !=0 )then{
									systemChat format["Your Statistics have been wiped for %1. If you believe this is a error please contact TheGamingChief.", _statwipeReason];
									systemChat format["Your Statistics have been wiped for %1. If you believe this is a error please contact TheGamingChief.", _statwipeReason];
									systemChat format["Your Statistics have been wiped for %1. If you believe this is a error please contact TheGamingChief.", _statwipeReason];
									systemChat format["Your Statistics have been wiped for %1. If you believe this is a error please contact TheGamingChief.", _statwipeReason];
									INV_InventarArray = [["handy", 1],["schluesselbund", 1]];
									INV_LizenzOwner = [];
									INV_SavedVehLand = [];
									INV_SavedVehAir = [];
									kontostand = 25000;
									_weapons = [];
									_magazines = [];
                                };
                               
                                {
                                        player addWeapon _x;
                                }forEach _weapons;
                               
                                {
                                        for "_mC" from 1 to (_x select 1) do {
                                                player addMagazine (_x select 0);
                                        };                                     
                                }forEach _magazines;
                               
                                switch(_PMCRank)do{
                                        case 0: {};
                                        case 1:{
                                                PMC_id = [getplayeruid player];
                                        };
                                        case 2:{
                                                PMC_id = [getplayeruid player];
                                                CommandPMC_id = [getplayeruid player];
                                        };
                                };
								
								switch (_ReporterRank)do{
									case 0: {};
									case 1:{
											Reporter_id = [getplayeruid player];
									};
									case 2:{
											Reporter_id = [getplayeruid player];
											ReporterLead_id = [getplayeruid player];
									};
								};
								if (_isTow != 0) then {
									Tow_id = [getplayeruid player];
								};
                                if(_isUndercover != 0)then{
                                        Undercover_id = [getplayeruid player];
                                };
                        };
                        case resistance:
                        {      
                                _bank = [_stats select 8] call AM_Server_StrToArr;
                                _lic = [_stats select 15] call AM_Server_StrToArr;
								_statwipe = [_stats select 17] call AM_Server_StrToArr;
								_statwipeReason = [_stats select 18] call AM_Server_StrToArr;
                               
                                INV_LizenzOwner = _lic;
                                kontostand = _bank;
								
                                if(_statwipe !=0 )then{
									systemChat format["Your Statistics have been wiped for %1. If you believe this is a error please contact TheGamingChief.", _statwipeReason];
									systemChat format["Your Statistics have been wiped for %1. If you believe this is a error please contact TheGamingChief.", _statwipeReason];
									systemChat format["Your Statistics have been wiped for %1. If you believe this is a error please contact TheGamingChief.", _statwipeReason];
									systemChat format["Your Statistics have been wiped for %1. If you believe this is a error please contact TheGamingChief.", _statwipeReason];
									INV_LizenzOwner = [];
									kontostand = 25000;
                                };
							   
                                switch(_EMTRank)do{
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
                                                FD_id = [getplayeruid player];                                         
                                        };
                                        case 5:{
                                                EMT1_id = [getplayeruid player];
                                                EMT2_id = [getplayeruid player];
                                                EMT3_id = [getplayeruid player];
                                                FD_id = [getplayeruid player]; 
                                                ESUCommand_id = [getplayeruid player];
                                        };
                                };
                               
                                if(_isEMTAir != 0)then{
                                        AirESU_id = [getplayeruid player];
                                };
                        };
                };
        };

		OL_StatsLoadedFromDB = true;
		
		systemChat "Statistics Loaded...";
};