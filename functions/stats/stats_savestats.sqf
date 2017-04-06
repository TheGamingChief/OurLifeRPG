if (!saveAvailable) exitwith {player sidechat format["Your Save Button Is Disabled, Try again in 60 seconds"];};

[] call fnc_SaveStats;

saveAvailable = false;
uiSleep 60;
saveAvailable = true;
