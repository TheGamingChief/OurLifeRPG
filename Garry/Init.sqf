OL_CopBlacklisted = false;

waitUntil {OL_StatsLoadedFromDB};

[] call Messages_fnc_Request;

OL_StoredWeapons = [];
OL_StoredMagazines = [];

OL_CallerNumber = "";
OL_InCall = false;
OL_RecivingCall = false;
OL_TempNumber = nil;
OL_CurrentCaller = [];
OL_PhoneRecents = [];

OL_Trunk_VehicleObject = objNull;

fnc_DBLClick = {
  switch (lbText [1500, lbCurSel 1500]) do {
    case ('Store Sections'): {
      [OL_ActiveShop] call Shops_fnc_DisplayList
    };
    case ('Bought Weapons/Mags'): {
      [] call Shops_fnc_DisplayStored
    };
  };
};

fnc_CloseShop = {
  if ((_this select 1) == 1) then {
    for "_i" from 0 to (_this select 0) do {
      uiSleep 0.01;
      closeDialog 0;
    };
  };
};
/*69 cutRsc ["OL_Twitter", "PLAIN"];*/

[] call Luke_DOPP_Fixes;
[] call Luke_AntiCheat_LoggingFixes;
[] call Luke_AntiCheat_Check;
