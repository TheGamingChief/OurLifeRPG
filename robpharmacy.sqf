// rob gas station script, called on client, the amount u steal is determined by a server loop, in stationrobloop.sqf
// written by eddie vedder

/*
robpharmacy.sqf
Script edited by : TheGamingChief And Foster for OurLifeRPG
Version 1.0 (Stable)
File: robpharmacy.sqf
Description: Script to allow robbing of the pharmacy, Made to take more take and provide cops time to respond.
TeamSpeak: TS.OurLifeRPG.Net
Website: OurLifeRPG.Net
Usage without permission is strictly prohibited.
Any questions comments or concerns should be forwarded to TheGamingChief@OurLifeRPG.Net
*/

fn_LeftPharmacyNotification = 
{
	player groupChat "You are gone to far away from the wheelchair and he has called the cops!.";
	(format ['server globalChat "Someone left the pharmacy mid robbery and the owner has called 911! And locked the cash register!";']) call broadcast;
	pharmmoney = 0;
	publicvariable "pharmmoney";
};

_selection = ((_this select 3) select 0);
_pharm = round random 12;

if (_selection == "pharmacy") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the pharmacy!";
	};
	
_west = playersNumber west;
if (_west < 2) exitwith {player groupchat "You need 2 Police Officers online to rob the pharmacy!";};
pharmacyavailable = false;
if (player distance pharmacy >= 5) exitWith {[] call fn_LeftPharmacyNotification;};	
"if (iscop) then {player sideChat ""The silent alarm at the pharmacy has gone off, Go investigate!""};" call broadcast;
('if(iscop) then {playsound "beep";}') call broadcast;

1001 cutText ["Put your hands up Doc this is a robbery!","PLAIN DOWN"];
sleep 3;
if (player distance pharmacy >= 5) exitWith {[] call fn_LeftPharmacyNotification;};	
1001 cutText ["Dr.Pacard: No need for the gun mister, what do you want?","PLAIN DOWN"];
sleep 5;
if (player distance pharmacy >= 5) exitWith {[] call fn_LeftPharmacyNotification;};	
1001 cutText ["Well give me all the medical supplies NOW!","PLAIN DOWN"];
sleep 5;
if (player distance pharmacy >= 5) exitWith {[] call fn_LeftPharmacyNotification;};	
1001 cutText ["Dr.Pacard: Mister, I only have a few supplies but you can have the money...","PLAIN DOWN"];
sleep 5;
if (player distance pharmacy >= 5) exitWith {[] call fn_LeftPharmacyNotification;};	
1001 cutText ["Fine, give me whats left and all the damn money!","PLAIN DOWN"];
sleep 5;
if (player distance pharmacy >= 5) exitWith {[] call fn_LeftPharmacyNotification;};	
1001 cutText ["Dr.Pacard: Im trying Mister...","PLAIN DOWN"];
sleep 5;
if (player distance pharmacy >= 5) exitWith {[] call fn_LeftPharmacyNotification;};	
1001 cutText ["Hurry up Doc, I hear the cops coming...","PLAIN DOWN"];
sleep 3;
1001 cutText ["Dr.Pacard: Here take it all, and leave...","PLAIN DOWN"];
(format['if(!("Robbed a the pharmacy" in %1_reason))then{%1_reason = %1_reason + ["Robbed pharmacy"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', pharmmoney] call INV_AddInvItem;
['pharm', _pharm] call INV_AddInvItem;
(format ['server globalChat "Someone robbed the pharmacy!";']) call broadcast;
player sidechat format ["You stole $%1 and %2 pharmacy Items!", pharmmoney,_pharm];
pharmmoney = 0;
publicvariable "pharmmoney";


};

// eddie vedder