if (!saveAvailable) exitwith { player sidechat "Your Save Button Is Disabled, Try again in 60 seconds" };

[] spawn Stats_fnc_Save;

saveAvailable = false;
uiSleep 60;
saveAvailable = true;
