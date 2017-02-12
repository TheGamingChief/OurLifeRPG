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
_payout = 50000; 

if (_weapons < 1) exitWith {player groupChat "Punk you dont have my shipment, get out of here before you get shot!";gunrun3available = true;};

1001 cutText ["Guss: Thank you for the Shipment, lets do business again sometime!","PLAIN DOWN"];
['gunshipment', -1] call INV_AddInvItem;
sleep 3;
1001 cutText ["Guss: Here's your money...","PLAIN DOWN"];
player groupchat format["You've received $%1 from Guss!",_payout];
['geld',_payout] call INV_AddInvItem;
["GunRunning_Log", format ["%1 just got 50k for doing a gun running mission!", name player]] call fn_RMLogToServer;
(format['if(!("Illegal Weapon Trafficing" in %1_reason))then{%1_reason = %1_reason + ["Illegal Weapon Trafficing"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforgus;', player]) call broadcast;
sleep 3;
player groupChat "You Must Wait 5 Minutes To Do Another Run...";
sleep 300;
player groupChat "Gun Running Now Avaliable!";
gunrunavailable = true;
gunrun3available = true;


