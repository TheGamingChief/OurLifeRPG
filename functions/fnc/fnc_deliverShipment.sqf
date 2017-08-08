if !(gunrun3available) exitwith {player groupchat "script already active"};
gunrun3available = false;
_payout = 75000;

if ("gunshipment" call INV_GetItemAmount < 1) exitWith {player groupChat "Punk you dont have my shipment, get out of here before you get shot!";gunrun3available = true;};

1001 cutText ["Guss: Thank you for the Shipment, lets do business again sometime!","PLAIN DOWN"];
['gunshipment', -1] call INV_AddInvItem;
uiSleep 3;
1001 cutText ["Guss: Here's your money...","PLAIN DOWN"];
player groupchat format["You've received $%1 from Guss!", _payout];
['geld',_payout] call INV_AddInvItem;
["GunRunning_Log", format ["%1 just got 75k for doing a gun running mission!", player getVariable "RealName"]] call RM_fnc_LogToServer;
uiSleep 3;
player groupChat "You Must Wait 10 Minutes To Do Another Run...";
uiSleep 600;
player groupChat "Gun Running Now Avaliable!";
gunrunavailable = true;
gunrun3available = true;
