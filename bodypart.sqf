////////////////////////////////////
////			         //
//      Copyright � TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////

_art = _this select 0;
if(iscop)exitwith{};
if(working)exitwith{player groupChat "Your still gathering parts";};
if (player getVariable "KOED")exitWith{player groupChat "You are dead and can't gather organs!";};
if (animationstate player != "civillying01" and animationstate player != "actspercmstpsnonwrfldnon_interrogate02_forgoten") then  
{
working=true;
_rand = round (random 6);
_randres = bodyarray select _rand;
_max      = 1;
_infos    = _resource call INV_getitemArray;
_name     = (_infos call INV_getitemName);
totalamount=0;
(format ["%1 switchmove ""%2"";", player, "AinvPknlMstpSlayWrflDnon_medic"]) call OL_network_Swag;
_amount = 1;
sleep 5;
titletext ["Gathering Body Part", "PLAIN DOWN", 1];
sleep 1;
titletext [format ["You got a %1!", _randres], "PLAIN"];
_avail = floor (INV_Tragfaehigkeit - (call INV_GetOwnWeight));
totalamount = totalamount + _amount;
if((totalamount*3) >= _avail)exitwith{totalamount = (_avail/3); player groupchat "maximum weight reached"; _i=6;};
player groupchat format["You got %1 %2.", _amount, _randres];
[_randres, totalamount] call INV_AddInvItem;
{deleteVehicle _x;} forEach (nearestObjects [player,["body"], 3]);
working=false;																					
}
else
{
player groupChat "You are handcuffed and you can't gather organs!"
};