/*
Script made by : Foster for OurLifeRPG
Version 1.1 (Stable)
File: Jailplates.sqf
Description: Making Jail Plates
TeamSpeak: TS.OurLifeRPG.Net
Website: OurLifeRPG.Net
*/
if !(platesavailable) exitwith {player groupchat "script already active"};
platesavailable = false;

_payout = 2500;

player groupchat "Loading License Plate Machine...";
sleep 10;
player groupchat "Processing License Plate...";
playsound "Oil_pump";
sleep 10;
player groupchat "Finalizing License Plate...";
sleep 10;
player groupchat "License Plate Complete!";
sleep 5;
player groupchat format["You've been paid $%1",_payout];
['geld',_payout] call INV_AddInvItem;
sleep 10;
player groupchat "You can now make another License Plate!";
platesavailable = true;