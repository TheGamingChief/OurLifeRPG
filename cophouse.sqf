////////////////////////////////////
////			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////

_house  = ((_this select 3) select 0);
_housename = ((_this select 3) select 1);
_uid = getPlayerUID vehicle player;



if ((_house == "frontdoor") and (iscop) and (player distance chief <= 8)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["FrontDoor",1];
[_housename, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
};

if ((_house == "backdoor") and (iscop) and (player distance chief <= 8)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["BackDoor",1];
[_housename, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
};


if ((_house == "frontdoor") and (iscop) and (player distance wulf2 <= 8)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["FrontDoor",1];
[_housename, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
};

if ((_house == "frontdoor") and (iscop) and (player distance wulf3 <= 8)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["FrontDoor",1];
[_housename, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
};

if ((_house == "backdoor") and (iscop) and (player distance wulf3 <= 8)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["BackDoor",1];
[_housename, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
};

if ((_house == "fdoor1") and (iscop)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["door1",1];
sleep 10;
_housename animate ["door1",0];
};

if ((_house == "fdoor1") and (iscop) and (player distance playerhouse2a <= 8)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["door1",1];
sleep 10;
_housename animate ["door1",0];
};

if ((_house == "fdoor1") and (iscop) and (player distance playerhouse3a <= 8)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["door1",1];
sleep 10;
_housename animate ["door1",0];
};

if ((_house == "fdoor1") and (iscop) and (player distance playerhouse5a <= 8)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["door1",1];
sleep 10;
_housename animate ["door1",0];
};

if ((_house == "fdoor") and (iscop) and (player distance mansion1a <= 12)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["fdoor",1];
sleep 10;
_housename animate ["fdoor",0];
};


if ((_house == "frontdoor") and (iscop) and (player distance mansion2 <= 10)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["FrontDoor",1];
[_housename, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
};


if ((_house == "fdoor") and (iscop) and (player distance mansion3a <= 12)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["fdoor",1];
sleep 10;
_housename animate ["fdoor",0];
};

if ((_house == "fdoor") and (iscop) and (player distance mansion4a <= 12)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["fdoor",1];
sleep 10;
_housename animate ["fdoor",0];
};

if ((_house == "fdoor") and (iscop) and (player distance mansion5a <= 12)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["fdoor",1];
sleep 10;
_housename animate ["fdoor",0];
};

if ((_house == "frontdoor") and (iscop) and (player distance mansion6 <= 8)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["FrontDoor",1];
[_housename, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
};

if ((_house == "frontdoor") and (iscop) and (player distance mansiondos <= 8)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["FrontDoor",1];
[_housename, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
};

if ((_house == "frontdoor") and (iscop) and (player distance mansion7 <= 8)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["FrontDoor",1];
[_housename, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
};

if ((_house == "backdoor") and (iscop) and (player distance mansion7 <= 8)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["BackDoor",1];
[_housename, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
};

if ((_house == "frontdoor") and (iscop) and (player distance mansion8 <= 8)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["FrontDoor",1];
[_housename, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
};

if ((_house == "fdoor") and (iscop) and (player distance mansion9a <= 12)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["fdoor",1];
sleep 10;
_housename animate ["fdoor",0];
};

if ((_house == "fdoor") and (iscop) and (player distance mansion10a <= 12)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["fdoor",1];
sleep 10;
_housename animate ["fdoor",0];
};

if ((_house == "fdoor") and (iscop) and (player distance mansion11a <= 12)) then
{
(format ['server globalChat "Police are breaking down the %1 of a player house!";', _house]) call broadcast;
sleep 15;
_housename animate ["fdoor",1];
sleep 10;
_housename animate ["fdoor",0];
};
