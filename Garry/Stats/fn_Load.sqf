_stats     = _this select 0;
_whitelist = _this select 1;
_phoneInfo = _this select 2;

if ((_stats select 0) != getPlayerUID player) exitWith {
  systemChat format ["You almost loaded with %1 stats!", _stats select 0];
  systemChat "Retrying....";
  [] call Stats_fnc_Request;
};

systemChat "Received Statistics From The Database...";

_AdminRank      = _whitelist select 3;
_PD_Rank        = _whitelist select 4;
_PD_Sheriff     = _whitelist select 5;
_PD_K9          = _whitelist select 6;
_PD_Aviation    = _whitelist select 7;
_PD_Swat        = _whitelist select 8;
_PD_CoastGuard  = _whitelist select 9;
_PD_Undercover  = _whitelist select 10;
_PD_FTO         = _whitelist select 11;
_PD_MedalRecipt = _whitelist select 12;
_EMS_Rank       = _whitelist select 13;
_EMS_Air        = _whitelist select 14;
_EMS_FD         = _whitelist select 15;
_PMC_Rank       = _whitelist select 16;
_Misc           = _whitelist select 17;

switch (_AdminRank) do {
  case 0: {};
  case 1: { adminlevel1 = [getPlayerUID player] };
  case 2: { adminlevel2 = [getPlayerUID player] };
  case 3: { adminlevel3 = [getPlayerUID player] };
  case 4: { adminlevel4 = [getPlayeruID player] };
  case 5: {
    OL_SwagDevs  = [getPlayerUID player];
    OL_Developer = [getPlayerUID player];
    isStaff      = true;
    player globalChat "Loaded in as Admin.";
  };
};

switch (_Misc) do {
  case 0: {};
  case 1: { OL_CheckpointWL = [getPlayerUID player] };
  case 2: { OL_CopBlacklisted = true };
  case 3: {};
  case 4: {};
  case 5: {};
  case 6: {};
  case 7: {};
  case 8: {};
  case 9: {};
  case 10: {};
};

if (OL_CopBlacklisted && (playerSide == west)) exitWith {
  player groupChat "You have been blacklisted from playing cop. If you feel this is an error please contact a member of PD High Command.";
  hint "You have been blacklisted from playing cop. If you feel this is an error please contact a member of PD High Command.";
  systemChat "You have been blacklisted from playing cop. If you feel this is an error please contact a member of PD High Command.";
  uiSleep 10;
  endMission "LOSER";
};

switch (playerSide) do {
  case civilian: {
    Kontostand        = _stats select 3;
    INV_InventarArray = _stats select 4;
    OL_Licenses       = _stats select 6;
    _weapons          = (_stats select 5) select 0;
    _magazines        = (_stats select 5) select 1;

    { player addWeapon _x } forEach _weapons;

    {
      for "_mC" from 1 to (_x select 1) do { player addMagazine (_x select 0) };
    } forEach _magazines;

    switch (_PMC_Rank) do {
      case 0: {};
      case 1: {
        PMC_id        = [getPlayerUID player];
      };
      case 2: {
        PMC_id        = [getPlayerUID player];
        CommandPMC_id = [getPlayerUID player];
      };
    };

    if (_PD_UnderCover != 0) then { Undercover_id = [getplayeruid player]; };
  };
  case resistance: {
    Kontostand        = _stats select 3;
    INV_InventarArray = _stats select 10;
    OL_Licenses       = _stats select 12;
    _weapons          = (_stats select 11) select 0;
    _magazines        = (_stats select 11) select 1;

    { player addWeapon _x } forEach _weapons;

    {
      for "_mC" from 1 to (_x select 1) do { player addMagazine (_x select 0) };
    } forEach _magazines;

    switch (_EMS_Rank) do {
      case 0: {};
      case 1: {
        EMT1_id          = [getPlayerUID player];
      };
      case 2: {
        EMT1_id          = [getPlayerUID player];
        EMT2_id          = [getPlayerUID player];
      };
      case 3: {
        EMT1_id          = [getPlayerUID player];
        EMT2_id          = [getPlayerUID player];
        EMT3_id          = [getPlayerUID player];
      };
      case 4:{
        EMT1_id       	 = [getPlayerUID player];
        EMT2_id 	  		 = [getPlayerUID player];
        EMT3_id 	  		 = [getPlayerUID player];
        EMTSupervisor_id = [getPlayerUID player];
      };
      case 5: {
        EMT1_id       	 = [getPlayerUID player];
        EMT2_id 	  		 = [getPlayerUID player];
        EMT3_id 	  		 = [getPlayerUID player];
        EMTSupervisor_id = [getPlayerUID player];
        EMTLieutenant_id = [getPlayerUID player];
      };
      case 6: {
        EMT1_id       	 = [getPlayerUID player];
        EMT2_id 	  		 = [getPlayerUID player];
        EMT3_id 	  		 = [getPlayerUID player];
        EMTSupervisor_id = [getPlayerUID player];
        EMTLieutenant_id = [getPlayerUID player];
        EMTCaptain_id		 = [getPlayerUID player];
      };
      case 7: {
        EMT1_id       	 = [getPlayerUID player];
        EMT2_id 	  		 = [getPlayerUID player];
        EMT3_id 	  		 = [getPlayerUID player];
        EMTSupervisor_id = [getPlayerUID player];
        EMTLieutenant_id = [getPlayerUID player];
        EMTCaptain_id		 = [getPlayerUID player];
        EMTChief_id 		 = [getPlayerUID player];
      };
    };

    if (_EMS_Air != 0) then { AirESU_id = [getPlayerUID player] };
    if (_EMS_FD != 0)  then { FD_id     = [getPlayerUID player] };

    switch (true) do {
      case ((player == emt1) && !((getPlayerUID player) in EMTChief_id)): {
        player groupChat "This slot is reserved for the EMS Chief only! You will be kicked back to the lobby in 10 seconds.";
        uiSleep 10;
        endMission "LOSER";
      };
    };
  };
  case west: {
    Kontostand        = _stats select 3;
    INV_InventarArray = _stats select 7;
    OL_Licenses       = _stats select 9;
    _weapons          = (_stats select 8) select 0;
    _magazines        = (_stats select 8) select 1;

    { player addWeapon _x } forEach _weapons;

    {
      for "_mC" from 1 to (_x select 1) do { player addMagazine (_x select 0) };
    } forEach _magazines;

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
        LtDeputy_id  = [getPlayerUID player];
      };
      case 7: {
        JrDeputy_id  = [getPlayerUID player];
        Deputy_id 	 = [getPlayerUID player];
        SrDeputy_id  = [getPlayerUID player];
        CplDeputy_id = [getPlayerUID player];
        SgtDeputy_id = [getPlayerUID player];
        LtDeputy_id  = [getPlayerUID player];
        Sheriff_id   = [getPlayerUId player];
      };
    };

    if (_PD_Swat >= 1)        then { SWAT_id        = [getPlayerUID player] };
    if (_PD_Swat == 2)        then { CommandSWAT_id = [getPlayerUID player] };
    if (_PD_K9 != 0)          then { K9_id          = [getPlayerUID player] };
    if (_PD_Aviation != 0)    then { PDAviation_id  = [getPlayerUID player] };
    if (_PD_UnderCover != 0)  then { Undercover_id  = [getPlayerUID player] };
    if (_PD_CoastGuard != 0)  then { CoastGuard_id  = [getPlayerUID player] };
    if (_PD_FTO != 0)         then { FTO_id         = [getPlayerUID player] };
    if (_PD_MedalRecipt != 0) then { MedalRecipt_id = [getPlayerUID player] };

    _untrained = [cop1, cop2, cop3, cop4, cop5];
    if (player in _untrained) then {
      if (((getPlayerUID player) in PO1_id) || ((getPlayerUID player) in JrDeputy_id)) exitWith {
        player groupChat "You are whitelisted, join a whitelisted slot dumb dumb.";
        hint "You are whitelisted, join a whitelisted slot dumb dumb.";
        titleText ["You are whitelisted, join a whitelisted slot dumb dumb.", "BLACK"];
        uiSleep 10;
        endMission "LOSER";
      };
    } else {
      if ((!(getPlayerUID player in PO1_id)) && (!(getPlayerUID player in JrDeputy_id))) exitWith {
        player groupChat "You are not whitelisted for this slot. Returning to lobby in 10 seconds.";
        hint "You are not whitelisted for this slot. Returning to lobby in 10 seconds.";
        titleText ["You are not whitelisted for this slot. Returning to lobby in 10 seconds.", "BLACK"];
        uiSleep 10;
        endMission "LOSER";
      };
    };
  };
};

OL_CustomKeysArray = _stats select 15;
OL_PlayTime        = _stats select 16;
OL_Cop_PlayTime    = (_stats select 17) select 0;
OL_Civ_PlayTime    = (_stats select 17) select 1;
OL_EMS_PlayTime    = (_stats select 17) select 2;

OL_PhoneNumber = _PhoneInfo select 3;
OL_PhoneContacts = _PhoneInfo select 4;

_statWipeMessage = _stats select 14;

if (_statWipeMessage != "") then {
  player groupChat format ["Your Statistics have been wiped for %1. If you believe this is a error please contact a Head Administrator.", _statWipeMessage];
  player groupChat format ["Your Statistics have been wiped for %1. If you believe this is a error please contact a Head Administrator.", _statWipeMessage];

  INV_InventarArray = [["handy", 1],["schluesselbund", 1]];
  OL_Licenses   		= [];
  INV_SavedVehLand  = [];
  INV_SavedVehAir   = [];
  OL_PlayTime				= 0;
  OL_Cop_PlayTime   = 0;
  OL_Civ_PlayTime   = 0;
  OL_EMS_PlayTime   = 0;
  Kontostand 		  	= 25000;
  removeAllWeapons player;
  { player removeMagazine _x } forEach (magazines player);

  OL_NeedsStatwipe     = true;
  OL_StatsLoadedFromDB = true;
  [] spawn Stats_fnc_Save;
};

OL_StatsLoadedFromDB = true;
saveAvailable = true;

if (needReload player == 1) then { reload player };

[] call INV_RemoveEmptyItems;
systemChat "Statistics Loaded...";
