/*
Script made by : Foster for OurLifeRPG
Version 1.3 (Stable)
File: Slots.sqf
Description: Slot Machines for Casino.
TeamSpeak: TS.OurLifeRPG.Net
Website: OurLifeRPG.Net
*/

_art = ((_this select 3) select 0);
_winner = random 100;
_rNumber = random 1000;
_wallet = "geld" call INV_GetItemAmount; 
_player = player; 

_payout1 = round(_rNumber*20);
_payout2 = round(_rNumber*200);
_payout3 = round(_rNumber*1000);

if(_art == "1line") then
{
	IsSpinningSlots = true;
	if (_wallet < 1000) exitWith {player groupChat "Sorry, you dont have enough money to play.";IsSpinningSlots = false;};
	['geld', -1000] call INV_AddInvItem;
    player groupchat "Pulls Handle...";
	[_player, "slot", 100] call CBA_fnc_globalSay3d;
    uiSleep 1;
    player groupchat "Slot One Stops...";
    uiSleep 1;
    player groupchat "Slot Two Stops...";
    uiSleep 1;
    player groupchat "Slot Three Stops...";
    if (_winner > 30) exitWith {player groupChat "Sorry you've lost, please play again!";IsSpinningSlots = false;};
	[_player, "slotwin", 100] call CBA_fnc_globalSay3d;
    player groupchat format["YOU'VE WON $%1!!!",_payout1];
    ['geld',_payout1] call INV_AddInvItem;
    player groupchat "Congratulations on your win at the Cicada Casino! You now must wait 2 minutes to play 1 Line Slots again!";
    IsSpinningSlots = false;
    slots1available = false;
    uiSleep 120;
    player groupchat "You can now play 1 Line Slots again!";
    slots1available = true;
};


if(_art == "2line") then
{   
	IsSpinningSlots = true;
    if (_wallet < 10000) exitWith {player groupChat "Sorry, you dont have enough money to play.";IsSpinningSlots = false;};
	['geld', -10000] call INV_AddInvItem;
    player groupchat "Pulls Handle...";
	[_player, "slot", 100] call CBA_fnc_globalSay3d;
    uiSleep 1;
    player groupchat "Slot One Stops...";
    uiSleep 1;
    player groupchat "Slot Two Stops...";
    uiSleep 1;
    player groupchat "Slot Three Stops...";
    if (_winner > 15) exitWith {player groupChat "Sorry you've lost, please play again!";IsSpinningSlots = false;slots2available = true;};
	[_player, "slotwin", 100] call CBA_fnc_globalSay3d;
    player groupchat format["YOU'VE WON $%1!!!",_payout2];
    ['geld',_payout2] call INV_AddInvItem;
    player groupchat "Congratulations on your win at the Cicada Casino! You now must wait 10 minutes to play 2 Line Slots again";
    IsSpinningSlots = false;
    slots2available = false;
    uiSleep 600;
    player groupchat "You can now play 2 Line Slots again!";
    slots2available = true;
};

if(_art == "maxline") then
{
	IsSpinningSlots = true;
    if (_wallet < 25000) exitWith {player groupChat "Sorry, you dont have enough money to play.";IsSpinningSlots = false;};
	['geld', -25000] call INV_AddInvItem;
    player groupchat "Pulls Handle...";
	[_player, "slot", 100] call CBA_fnc_globalSay3d;
    uiSleep 1;
    player groupchat "Slot One Stops...";
    uiSleep 1;
    player groupchat "Slot Two Stops...";
    uiSleep 1;
    player groupchat "Slot Three Stops...";
    if (_winner > 2) exitWith {player groupChat "Sorry you've lost, please play again!";IsSpinningSlots = false;slots3available = true;};
	[_player, "slotwin", 100] call CBA_fnc_globalSay3d;
    player groupchat format["YOU'VE WON $%1!!!",_payout3];
    ['geld',_payout3] call INV_AddInvItem;
    player groupchat "Congratulations on your win at the Cicada Casino! You now must wait 30 minutes to play MAX Line Slots again!";
    IsSpinningSlots = false;
    slots3available = false;
    uiSleep 600;
    player groupchat "You can now play MAX Line Slots again!";
    slots3available = true;
};