if (!saveAvailable || !OL_StatsLoadedFromDB) exitwith {player sidechat format["Your Save Button Is Disabled, Try again in 60 seconds"];};

[] call fnc_SaveStats;

saveAvailable = false;
sleep 60;
saveAvailable = true;