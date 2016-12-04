/*
Script made by : Foster for OurLifeRPG
Version 1.1 (Stable)
File: Chopshop.sqf
Description: Adds option to strip a car of it's speedupgrades.
TeamSpeak: TS.OurLifeRPG.Net
Website: OurLifeRPG.Net
*/

chopavailable = false;
 
private["_vcl","_tune","_payout","_pay1","_pay2","_pay3","_pay4","_pay5","_pay6"];
player groupchat "Please get back into your vehicle to strip it. You have 10 seconds!";
sleep 10;
_vcl = vehicle player;
if(player == _vcl) exitwith {player groupchat "You have must be in a vehicle to use this shop!";};

_tune = _vcl getvariable "tuning";

_payout = 0;
_pay1 = 13000;
_pay2 = 20000;
_pay3 = 30000;
_pay4 = 50000;
_pay5 = 65000;
_pay6 = 70000;

player groupchat "Stripping car of nice things! Please Wait!";
sleep 5;
player groupchat "Stealing 8/8 stereo system! Please Wait!";
sleep 5;

	switch (_tune) do {
		case 1: {_payout = _payout + _pay1;_vcl setvariable["tuning",0,true];};
		case 2: {_payout = _payout + _pay2;_vcl setvariable["tuning",0,true];};
		case 3: {_payout = _payout + _pay3;_vcl setvariable["tuning",0,true];};
		case 4: {_payout = _payout + _pay4;_vcl setvariable["tuning",0,true];};
		case 5: {_payout = _payout + _pay5;_vcl setvariable["tuning",0,true];};
		case 6: {_payout = _payout + _pay6;_vcl setvariable["tuning",0,true];};
		};

player groupchat format["You made $%1 from the car parts!",_payout];
['geld',_payout] call INV_AddInvItem;
(format['if(!("Striped A Vehicle In The Chopshop" in %1_reason))then{%1_reason = %1_reason + ["Striped A Vehicle In The Chopshop"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforstriping;', player]) call broadcast;


sleep 5;
chopavailable = true;