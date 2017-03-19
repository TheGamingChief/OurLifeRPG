// rob gas station script, called on client, the amount u steal is determined by a server loop, in stationrobloop.sqf
// written by eddie vedder


fn_LeftGasNotification1 =
{
	player groupChat "You are gone to far away from the Cashier and he has called the cops!.";
	(format ['server globalChat "Someone left Gas N Porn mid robbery and the owner has called 911! And locked the cash register!";']) call swag;
	station2money = 0;
	publicvariable "station2money";
};

fn_LeftGasNotification2 =
{
	player groupChat "You are gone to far away from the Cashier and he has called the cops!.";
	(format ['server globalChat "Someone left Gas N Pit mid robbery and the owner has called 911! And locked the cash register!";']) call swag;
	station4money = 0;
	publicvariable "station4money";
};

fn_LeftGasNotification3 =
{
	player groupChat "You are gone to far away from the Cashier and he has called the cops!.";
	(format ['server globalChat "Someone left Gas N Chips mid robbery and the owner has called 911! And locked the cash register!";']) call swag;
	station5money = 0;
	publicvariable "station5money";
};
fn_LeftGasNotification4 =
{
	player groupChat "You are gone to far away from the Cashier and he has called the cops!.";
	(format ['server globalChat "Someone left Mikes Hard Gas mid robbery and the owner has called 911! And locked the cash register!";']) call swag;
	station7money = 0;
	publicvariable "station7money";
};
fn_LeftGasNotification5 =
{
	player groupChat "You are gone to far away from the Cashier and he has called the cops!.";
	(format ['server globalChat "Someone left Gas Haus mid robbery and the owner has called 911! And locked the cash register!";']) call swag;
	station8money = 0;
	publicvariable "station8money";
};



_selection = ((_this select 3) select 0);

if (_selection == "station 1") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Bryces Gas n Go";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at Bryces Gas n Go has just gone off!";', _sel]) call swag;
	};

_west = playersNumber west;
if (_west < 2 && !debug) exitwith {player groupchat "You need 2 Police Officers online to rob Bryces Gas N Go!";};

Brycesavailable = false;

_sel = "Bryces Gas n Go";
[player, "Robbed Station"] call OL_player_WarrantAdd;
['geld', station1money] call INV_AddInvItem;

(format ['server globalChat "Someone robbed %1!";', _sel]) call swag;
player sidechat format ["You stole $%1 from the gas station!", station1money];

station1money = 0;
Brycesavailable = true;
publicvariable "station1money";

local_useBankPossible = false;
["local_useBankPossible", true, 300, [false, false]] call CP_fnc_VarQueueAdd;
};

if (_selection == "station 2") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Gas n Porn";
	player groupchat "You need a gun to rob the station!";
	};

_west = playersNumber west;
if (_west < 2 && !debug) exitwith {player groupchat "You need 2 Police Officers online to rob Gas N Porn!";};
pornavailable = false;
_sel = "Gas n Porn";
"if (iscop) then {player sideChat ""The silent alarm at Gas n Porn has gone off, Go investigate!""};" call swag;
('if(iscop) then {playsound "beep";}') call swag;
player groupChat "You are now robbing Gas n Porn, Please stay near the Clerk for 20 seconds to receive the money";
sleep 2;
1001 cutText ["Put your hands up this is a robbery!","PLAIN DOWN"];
sleep 5;
1001 cutText ["Clerk: Yes sir, let me open the register...","PLAIN DOWN"];
if (player distance fuel2 >= 3) exitWith {[] call fn_LeftGasNotification1;};
sleep 5;
1001 cutText ["Clerk: Damn registers stuck!","PLAIN DOWN"];
if (player distance fuel2 >= 3) exitWith {[] call fn_LeftGasNotification1;};
sleep 5;
1001 cutText ["Clerk: Here, take the money!","PLAIN DOWN"];
if (player distance fuel2 >= 3) exitWith {[] call fn_LeftGasNotification1;};
sleep 3;
if (player distance fuel2 >= 3) exitWith {[] call fn_LeftGasNotification1;};
player groupChat "Clerk has handed you the money! Now get out of there before the cops show up!";

[player, "Robbed Station"] call OL_player_WarrantAdd;
['geld', station2money] call INV_AddInvItem;

(format ['server globalChat "Someone robbed %1!";', _sel]) call swag;
player sidechat format ["You stole $%1 from the gas station!", station2money];

station2money = 0;
pornavailable = true;
publicvariable "station2money";

local_useBankPossible = false;
["local_useBankPossible", true, 300, [false, false]] call CP_fnc_VarQueueAdd;
};

if (_selection == "station 3") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "House of Gas";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at House of Gas has just gone off!";', _sel]) call swag;
	};

_west = playersNumber west;
if (_west < 2 && !debug) exitwith {player groupchat "You need 2 Police Officers online to rob House Of Gas!";};
houseavailable = false;
_sel = "House of Gas";
[player, "Robbed Station"] call OL_player_WarrantAdd;
['geld', station3money] call INV_AddInvItem;

(format ['server globalChat "Someone robbed %1!";', _sel]) call swag;
player sidechat format ["You stole $%1 from the gas station!", station3money];

houseavailable = true;
station3money = 0;
publicvariable "station3money";

local_useBankPossible = false;
["local_useBankPossible", true, 300, [false, false]] call CP_fnc_VarQueueAdd;
};

if (_selection == "station 4") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Gas n Pit";
	player groupchat "You need a gun to rob the station!";
	};

_west = playersNumber west;
if (_west < 2 && !debug) exitwith {player groupchat "You need 2 Police Officers online to rob Gas N Pit!";};
gaspitavailable = false;
_sel = "Gas n Pit";
"if (iscop) then {player sideChat ""The silent alarm at Gas n Pit has gone off, Go investigate!""};" call swag;
('if(iscop) then {playsound "beep";}') call swag;
player groupChat "You are now robbing Gas n Pit, Please stay near the Clerk for 20 seconds to receive the money";
sleep 2;
1001 cutText ["Put your hands up this is a robbery!","PLAIN DOWN"];
sleep 5;
1001 cutText ["Clerk: Yes sir, let me open the register...","PLAIN DOWN"];
if (player distance fuel4 >= 3) exitWith {[] call fn_LeftGasNotification2;};
sleep 5;
1001 cutText ["Clerk: Damn registers stuck!","PLAIN DOWN"];
if (player distance fuel4 >= 3) exitWith {[] call fn_LeftGasNotification2;};
sleep 5;
1001 cutText ["Clerk: Here, take the money!","PLAIN DOWN"];
if (player distance fuel4 >= 3) exitWith {[] call fn_LeftGasNotification2;};
sleep 3;
if (player distance fuel4 >= 3) exitWith {[] call fn_LeftGasNotification2;};
player groupChat "Clerk has handed you the money! Now get out of there before the cops show up!";

[player, "Robbed Station"] call OL_player_WarrantAdd;
['geld', station4money] call INV_AddInvItem;

(format ['server globalChat "Someone robbed %1!";', _sel]) call swag;
player sidechat format ["You stole $%1 from the gas station!", station4money];

station4money = 0;
gaspitavailable = true;
publicvariable "station4money";

local_useBankPossible = false;
["local_useBankPossible", true, 300, [false, false]] call CP_fnc_VarQueueAdd;
};

if (_selection == "station 5") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Gas n Chips";
	player groupchat "You need a gun to rob the station!";
	};

_west = playersNumber west;
if (_west < 2 && !debug) exitwith {player groupchat "You need 2 Police Officers online to rob Gas N Chips!";};
chipsavailable = false;
_sel = "Gas n Chips";
"if (iscop) then {player sideChat ""The silent alarm at Gas n Chips has gone off, Go investigate!""};" call swag;
('if(iscop) then {playsound "beep";}') call swag;
player groupChat "You are now robbing Gas n Chips, Please stay near the Clerk for 20 seconds to receive the money";
sleep 2;
1001 cutText ["Put your hands up this is a robbery!","PLAIN DOWN"];
sleep 5;
1001 cutText ["Clerk: Yes sir, let me open the register...","PLAIN DOWN"];
if (player distance fuel5 >= 3) exitWith {[] call fn_LeftGasNotification3;};
sleep 5;
1001 cutText ["Clerk: Damn registers stuck!","PLAIN DOWN"];
if (player distance fuel5 >= 3) exitWith {[] call fn_LeftGasNotification3;};
sleep 5;
1001 cutText ["Clerk: Here, take the money!","PLAIN DOWN"];
if (player distance fuel5 >= 3) exitWith {[] call fn_LeftGasNotification3;};
sleep 3;
if (player distance fuel5 >= 3) exitWith {[] call fn_LeftGasNotification3;};
player groupChat "Clerk has handed you the money! Now get out of there before the cops show up!";

[player, "Robbed Station"] call OL_player_WarrantAdd;
['geld', station5money] call INV_AddInvItem;

(format ['server globalChat "Someone robbed %1!";', _sel]) call swag;
player sidechat format ["You stole $%1 from the gas station!", station5money];

station5money = 0;
chipsavailable = true;
publicvariable "station5money";

local_useBankPossible = false;
["local_useBankPossible", true, 300, [false, false]] call CP_fnc_VarQueueAdd;
};

if (_selection == "station 6") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Mannys Gas Station";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at Mannys Gas has just gone off!";', _sel]) call swag;
	};

_west = playersNumber west;
if (_west < 2 && !debug) exitwith {player groupchat "You need 2 Police Officers online to rob Mannys Gas!";};
mannyavailable = false;
_sel = "Mannys Gas Station";

[player, "Robbed Station"] call OL_player_WarrantAdd;
['geld', station6money] call INV_AddInvItem;

(format ['server globalChat "Someone robbed %1!";', _sel]) call swag;
player sidechat format ["You stole $%1 from the gas station!", station6money];

station6money = 0;
publicvariable "station6money";
mannyavailable = true;

local_useBankPossible = false;
["local_useBankPossible", true, 300, [false, false]] call CP_fnc_VarQueueAdd;
};

if (_selection == "station 7") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Mikes Hard Gas";
	player groupchat "You need a gun to rob the station!";
	};

_west = playersNumber west;
if (_west < 2 && !debug) exitwith {player groupchat "You need 2 Police Officers online to rob Mikes Hard Gas!";};
mikesavailable = false;
_sel = "Mikes Hard Gas";
"if (iscop) then {player sideChat ""The silent alarm at Mikes Hard Gas has gone off, Go investigate!""};" call swag;
('if(iscop) then {playsound "beep";}') call swag;
player groupChat "You are now robbing Mikes Hard Gas, Please stay near the Clerk for 20 seconds to receive the money";
sleep 2;
1001 cutText ["Put your hands up this is a robbery!","PLAIN DOWN"];
sleep 5;
1001 cutText ["Clerk: Yes sir, let me open the register...","PLAIN DOWN"];
if (player distance fuel7 >= 3) exitWith {[] call fn_LeftGasNotification4;};
sleep 5;
1001 cutText ["Clerk: Damn registers stuck!","PLAIN DOWN"];
if (player distance fuel7 >= 3) exitWith {[] call fn_LeftGasNotification4;};
sleep 5;
1001 cutText ["Clerk: Here, take the money!","PLAIN DOWN"];
if (player distance fuel7 >= 3) exitWith {[] call fn_LeftGasNotification4;};
sleep 3;
if (player distance fuel7 >= 3) exitWith {[] call fn_LeftGasNotification4;};
player groupChat "Clerk has handed you the money! Now get out of there before the cops show up!";

[player, "Robbed Station"] call OL_player_WarrantAdd;
['geld', station7money] call INV_AddInvItem;

(format ['server globalChat "Someone robbed %1!";', _sel]) call swag;
player sidechat format ["You stole $%1 from the gas station!", station7money];

station7money = 0;
publicvariable "station7money";
mikesavailable = true;

local_useBankPossible = false;
["local_useBankPossible", true, 300, [false, false]] call CP_fnc_VarQueueAdd;
};

if (_selection == "station 8") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Gas Haus";
	player groupchat "You need a gun to rob the station!";
	};

_west = playersNumber west;
if (_west < 2 && !debug) exitwith {player groupchat "You need 2 Police Officers online to rob Gas Haus!";};
hausavailable = false;
_sel = "Gas Haus";
"if (iscop) then {player sideChat ""The silent alarm at Gas Haus has gone off, Go investigate!""};" call swag;
('if(iscop) then {playsound "beep";}') call swag;
player groupChat "You are now robbing Gas Haus, Please stay near the Clerk for 20 seconds to receive the money";
sleep 2;
1001 cutText ["Put your hands up this is a robbery!","PLAIN DOWN"];
sleep 5;
1001 cutText ["Clerk: Yes sir, let me open the register...","PLAIN DOWN"];
if (player distance fuel8 >= 3) exitWith {[] call fn_LeftGasNotification5;};
sleep 5;
1001 cutText ["Clerk: Damn registers stuck!","PLAIN DOWN"];
if (player distance fuel8 >= 3) exitWith {[] call fn_LeftGasNotification5;};
sleep 5;
1001 cutText ["Clerk: Here, take the money!","PLAIN DOWN"];
if (player distance fuel8 >= 3) exitWith {[] call fn_LeftGasNotification5;};
sleep 3;
if (player distance fuel8 >= 3) exitWith {[] call fn_LeftGasNotification5;};
player groupChat "Clerk has handed you the money! Now get out of there before the cops show up!";

[player, "Robbed Station"] call OL_player_WarrantAdd;
['geld', station8money] call INV_AddInvItem;

(format ['server globalChat "Someone robbed %1!";', _sel]) call swag;
player sidechat format ["You stole $%1 from the gas station!", station8money];

station8money = 0;
publicvariable "station8money";
hausavailable = true;

local_useBankPossible = false;
["local_useBankPossible", true, 300, [false, false]] call CP_fnc_VarQueueAdd;
};

if (_selection == "station 9") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Gas Haus";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at Gas Haus has just gone off!";', _sel]) call swag;
	};

_west = playersNumber west;
if (_west < 2 && !debug) exitwith {player groupchat "You need 2 Police Officers online to rob Gas Haus!";};
haus1available = false;
_sel = "Gas Haus";

[player, "Robbed Station"] call OL_player_WarrantAdd;
['geld', station9money] call INV_AddInvItem;

(format ['server globalChat "Someone robbed %1!";', _sel]) call swag;
player sidechat format ["You stole $%1 from the gas station!", station9money];

station9money = 0;
publicvariable "station9money";
haus1available = true;

local_useBankPossible = false;
["local_useBankPossible", true, 300, [false, false]] call CP_fnc_VarQueueAdd;
};
