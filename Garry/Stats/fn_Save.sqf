if (!saveAvailable) exitwith { player sidechat "Your Save Button Is Disabled, Try again in 60 seconds" };

pv_SaveStatsRequest = [[playerSide, player, Kontostand, INV_InventarArray, call Stats_fnc_CreateWeaponArray, OL_Licenses, OL_CustomKeysArray, OL_PlayTime, [OL_Cop_PlayTime, OL_Civ_PlayTime, OL_EMS_PlayTime], OL_PhoneContacts, getPlayerUID player], OL_NeedsStatwipe];
publicVariableServer "pv_SaveStatsRequest";

server globalChat "SAVING PLAYER AS:";
systemChat format ["%1", switch (playerSide) do {
  case west:       { "Police Officer" };
  case civilian:   { "Civilian"       };
  case resistance: { "C.F.R."         };
}];

OL_NeedsStatwipe = false;
saveAvailable = false;
uiSleep 60;
saveAvailable = true;
