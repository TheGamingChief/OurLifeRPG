////////////////////////////////////
////			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////

_house  = _this select 0;
_housename = _this select 1;

if ((_house == "frontdoor") and (player distance _housename <= 10)) then
{
_housename animate ["FrontDoor",1];
[_housename, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
};

if ((_house == "cfrontdoor") and (player distance _housename <= 10)) then
{
_housename animate ["FrontDoor",0];
[_housename, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
};

if ((_house == "backdoor") and (player distance _housename <= 10)) then
{
_housename animate ["BackDoor",1];
[_housename, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
};

if ((_house == "cbackdoor") and (player distance _housename <= 10)) then
{
_housename animate ["BackDoor",0];
[_housename, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
};

if ((_house == "garage") and (player distance _housename <= 10)) then
{
_housename animate ["Open_Gate_1_Rotate",1];player say 'MBG_B3_GarageOpen';sleep 1;_housename animate['Open_Gate_1_Slide',1];
};

if ((_house == "cgarage") and (player distance _housename <= 10)) then
{
_housename animate['Open_Gate_1_Slide',0];player say 'MBG_B3_GarageOpen';sleep 1;_housename animate['Open_Gate_1_Rotate',0];
};

if ((_house == "Acfrontdoor") and (player distance _housename <= 10)) then
{
_housename animate ["door_button1",0];
};

if ((_house == "Afrontdoor") and (player distance _housename <= 10)) then
{
_housename animate ["door_button1",1];
};

if ((_house == "Abackdoor") and (player distance _housename <= 10)) then
{
_housename animate ["door_button2",1];
};

if ((_house == "Acbackdoor") and (player distance _housename <= 10)) then
{
_housename animate ["door_button2",0];
};