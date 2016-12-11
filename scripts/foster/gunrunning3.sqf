/*
Script made by : Foster for OurLifeRPG
Version 1.1 (Stable)
File: GunRunning3.sqf
Description: Gun running jobs.
TeamSpeak: TS.OurLifeRPG.Net
Website: OurLifeRPG.Net
*/
if !(gunrun3available) exitwith {player groupchat "script already active"};
gunrun3available = false;
_player = player;
_weapons = "gunshipment" call INV_GetItemAmount;
_payout = 100000; 

if (_weapons < 1) exitWith {player groupChat "Punk you dont have my shipment, get out of here before you get shot!";gunrun3available = true;};

1001 cutText ["Guss: Thank you for the Shipment, lets do business again sometime!","PLAIN DOWN"];
['gunshipment', -1] call INV_AddInvItem;
sleep 3;
1001 cutText ["Guss: Here's your money...","PLAIN DOWN"];
player groupchat format["You've received $%1 from Guss!",_payout];
['geld',_payout] call INV_AddInvItem;
["GunRunning_Log", format ["%1 just got 100k for doing a gun running mission!", name player]] call fn_RMLogToServer;
sleep 3;
player groupChat "You Must Wait 30 Minutes To Do Another Run...";
sleep 1800;
player groupChat "Gun Running Now Avaliable!";
gunrunavailable = true;
gunrun3available = true;


