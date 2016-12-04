/*
Script made by : Foster for OurLifeRPG
Version 1.1 (Stable)
File: Chopshop2.sqf
Description: Adds option to sell a stolen car for 90% of the buy cost.
TeamSpeak: TS.OurLifeRPG.Net
Website: OurLifeRPG.Net
*/
 
chopavailable = false; 

private["_vcl","_pay"];
_vcl = (nearestobjects [getpos player, ["LandVehicle"], 5] select 0);
_pay = (((typeof _vcl) call INV_getitemBuyCost) * 0.90);
 
if(isnil ("_vcl")) exitwith {player groupchat "Not near any vehicles"; chopavailable = true;};
if(!(player == vehicle player)) exitWith {player groupchat "You must be outside the vehicle!"; chopavailable = true;};
if(player distance _vcl <= 10) then
{
_vcl setFuel 0;
player groupchat "Chopping Vehicle and Disposing of Evidence!";
sleep 5;
player groupchat "Inspecting Car Parts Value! Please Wait";
sleep 10;
player groupchat "Calling Shady People About Dubs! Please Wait";
sleep 10;
player groupchat "Finalizing Price With Bossman! Please Wait";
sleep 10;
player groupchat "Vehicle has been sold!";
deleteVehicle _vcl;
};
 
player groupchat format["Heres your money!$ %1",_pay];
['geld',_pay] call INV_AddInvItem;
(format['if(!("Chopped A Vehicle" in %1_reason))then{%1_reason = %1_reason + ["Chopped A Vehicle"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforchoping;', player]) call broadcast;

sleep 5;
chopavailable = true;