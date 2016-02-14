/*
Script made by : Foster for OurLifeRPG
Version 1.1 (Stabel)
File: Slots.sqf
Description: Slot Machines for Casino.
TeamSpeak: TS.OurLifeRPG.Net
Website: OurLifeRPG.Net
*/

private["_winner","_rNumber","_wallet","_payout"];
_winner = random 10;
_rNumber = random 1000;
_payout = round(_rNumber*50);
_wallet = "geld" call INV_GetItemAmount; 
_art  = _this select 0;
_swag = 0;
_player = player;

slotsavailable = false;
player groupchat "Welcome to the Cicada Casino!";
sleep 1;

if (_wallet < 1000) exitWith {player groupChat "Sorry, you dont have enough money to play.";slotsavailable = true;};

['geld', -1000] call INV_AddInvItem;
player groupchat "Pulls Handle...";
[_player,"slot"] call fn_netSay3D;
sleep 1;
player groupchat "Slot One Stops...";
sleep 1;
player groupchat "Slot Two Stops...";
sleep 1;
player groupchat "Slot Three Stops...";

if (_winner > 1) exitWith {player groupChat "Sorry you've lost, please play again!";slotsavailable = true;};

//playsound "slot";
[_player,"slotwin"] call fn_netSay3D;
player groupchat format["YOU'VE WON $%1!!!",_payout];
['geld',_payout] call INV_AddInvItem;
player groupchat "Congratulations on your win at the Cicada Casino! You now must wait 5 minutes to spin again!";
sleep 3;
format['server globalChat "%1 JUST WON THE JACKPOT AT THE CICADA CASINO!";', name player] call broadcast;
sleep 300;
player groupchat "You can now use the slots again!";
slotsavailable = true;