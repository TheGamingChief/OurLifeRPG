
fn_LeftBarNotification2 =
{
	player groupChat "You are gone to far away from the Cashier and he has called the cops!.";
	(format ['server globalChat "Someone left Southside Pub mid robbery and the owner has called 911! And locked the cash register!";']) call swag;
	barmoney1 = 0;
	publicvariable "barmoney1";
};

fn_LeftBarNotification3 =
{
	player groupChat "You are gone to far away from the Cashier and he has called the cops!.";
	(format ['server globalChat "Someone left Macks Bar mid robbery and the owner has called 911! And locked the cash register!";']) call swag;
	barmoney2 = 0;
	publicvariable "barmoney2";
};

fn_LeftBarNotification4 =
{
	player groupChat "You are gone to far away from the Cashier and he has called the cops!.";
	(format ['server globalChat "Someone left Hermanns Haxe Cellar mid robbery and the owner has called 911! And locked the cash register!";']) call swag;
	barmoney3 = 0;
	publicvariable "barmoney3";
};

fn_LeftDonutNotification =
{
	player groupChat "You are gone to far away from the Cashier and he has called the cops!.";
	(format ['server globalChat "Someone left East Dunkin Bronuts mid robbery and the owner has called 911! And locked the cash register!";']) call swag;
	donutmoney1 = 0;
	publicvariable "donutmoney1";
};

fn_LeftDonutNotification1 =
{
	player groupChat "You are gone to far away from the Cashier and he has called the cops!.";
	(format ['server globalChat "Someone left West Dunkin Bronuts mid robbery and the owner has called 911! And locked the cash register!";']) call swag;
	donutmoney2 = 0;
	publicvariable "donutmoney2";
};

fn_LeftCasinoNotification =
{
	player groupChat "You have gone to far from the Safe and the owner has sound the alarm!.";
	(format ['server globalChat "Someone left the Casino mid robbery and the owner has sound the alarm!";']) call swag;
	casinomoney = 0;
	publicvariable "casinomoney";
};

_selection = ((_this select 3) select 0);

if (_selection == "bar1") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the bar!";
	};

_west = playersNumber west;
if (_west < 2 && !debug) exitwith {player groupchat "You need 2 Police Officers online to rob Southside Pub!";};
southavailable = false;
"if (iscop) then {player sideChat ""The silent alarm at Southside Pub has gone off, Go investigate!""};" call swag;
('if(iscop) then {playsound "beep";}') call swag;
1001 cutText ["Put your hands up man this is a robbery!","PLAIN DOWN"];
sleep 2;
player groupChat "You are now robbing the pub, Please stay near the Nathan for 30 seconds to receive the money";
sleep 4;
1001 cutText ["Nathan: Hey fam, im gonna to need you to settle down.","PLAIN DOWN"];
if (player distance pub2 >= 5) exitWith {[] call fn_LeftBarNotification2;};
sleep 7;
1001 cutText ["Nathan: Bruh, have you been smokin some weed or something...","PLAIN DOWN"];
sleep 7;
1001 cutText ["Nathan: Whatever nigga, just let me open up this bitch.","PLAIN DOWN"];
if (player distance pub2 >= 5) exitWith {[] call fn_LeftBarNotification2;};
sleep 7;
1001 cutText ["Nathan: Here take my god damn money you fucking faggot.","PLAIN DOWN"];
if (player distance pub2 >= 5) exitWith {[] call fn_LeftBarNotification2;};
sleep 5;
if (player distance pub2 >= 5) exitWith {[] call fn_LeftBarNotification2;};
player groupChat "Nathan has handed you the money! Now get out of there before the cops show up!";

[player, "Robbed Bar"] call OL_player_WarrantAdd;
['geld', barmoney1] call INV_AddInvItem;

(format ['server globalChat "Someone robbed the Southside Pub!";']) call swag;
player sidechat format ["You stole $%1!", barmoney1];

barmoney1 = 0;
publicvariable "barmoney1";
southavailable = true;
};


if (_selection == "bar2") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the bar!";
	};

_west = playersNumber west;
if (_west < 2 && !debug) exitwith {player groupchat "You need 2 Police Officers online to rob Macks Bar!";};
macksavailable = false;
"if (iscop) then {player sideChat ""The silent alarm at Macks Bar has gone off, Go investigate!""};" call swag;
('if(iscop) then {playsound "beep";}') call swag;
1001 cutText ["Put your hands up old man this is a robbery!","PLAIN DOWN"];
sleep 2;
player groupChat "You are now robbing the bar, Please stay near the Mack for 30 seconds to receive the money";
sleep 4;
1001 cutText ["Mack: Get that gun outta my face boy!","PLAIN DOWN"];
if (player distance pub3 >= 5) exitWith {[] call fn_LeftBarNotification3;};
sleep 7;
1001 cutText ["Mack: Ok tough guy...","PLAIN DOWN"];
sleep 7;
1001 cutText ["Mack: Got damn kids these days...","PLAIN DOWN"];
if (player distance pub3 >= 5) exitWith {[] call fn_LeftBarNotification3;};
sleep 7;
1001 cutText ["Mack: Fine take it, but you better watch your back.","PLAIN DOWN"];
if (player distance pub3 >= 5) exitWith {[] call fn_LeftBarNotification3;};
sleep 5;
if (player distance pub3 >= 5) exitWith {[] call fn_LeftBarNotification3;};
player groupChat "Mack has handed you the money! Now get out of there before the cops show up!";

[player, "Robbed Bar"] call OL_player_WarrantAdd;
['geld', barmoney2] call INV_AddInvItem;

(format ['server globalChat "Someone robbed Macks Bar!";']) call swag;
player sidechat format ["You stole $%1!", barmoney2];

barmoney2 = 0;
publicvariable "barmoney2";
macksavailable = true;
};


if (_selection == "bar3") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the bar!";
	};

_west = playersNumber west;
if (_west < 2 && !debug) exitwith {player groupchat "You need 2 Police Officers online to rob Hermanns Haxe Cellar!";};
hermannsavailable = false;
"if (iscop) then {player sideChat ""The silent alarm at Hermanns Haxe Cellar has gone off, Go investigate!""};" call swag;
('if(iscop) then {playsound "beep";}') call swag;
1001 cutText ["Put your hands up old man this is a robbery!","PLAIN DOWN"];
sleep 2;
player groupChat "You are now robbing the bar, Please stay near the Hermann for 30 seconds to receive the money";
sleep 4;
1001 cutText ["Hermann: OK, OK I'm getting the money!","PLAIN DOWN"];
if (player distance pub4 >= 5) exitWith {[] call fn_LeftBarNotification4;};
sleep 7;
1001 cutText ["Hermann: This stupid shit won't open...","PLAIN DOWN"];
sleep 7;
1001 cutText ["Hermann: OK i got it open.","PLAIN DOWN"];
if (player distance pub4 >= 5) exitWith {[] call fn_LeftBarNotification4;};
sleep 7;
1001 cutText ["Hermann: Here take it.","PLAIN DOWN"];
if (player distance pub4 >= 5) exitWith {[] call fn_LeftBarNotification4;};
sleep 5;
if (player distance pub4 >= 5) exitWith {[] call fn_LeftBarNotification4;};
player groupChat "Hermann has handed you the money! Now get out of there before the cops show up!";

[player, "Robbed Bar"] call OL_player_WarrantAdd;
['geld', barmoney3] call INV_AddInvItem;

(format ['server globalChat "Someone robbed Hermanns Haxe Cellar!";']) call swag;
player sidechat format ["You stole $%1!", barmoney3];

barmoney3 = 0;
publicvariable "barmoney3";
hermannsavailable = true;
};

if (_selection == "bar5") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the saloon!";
	};

_west = playersNumber west;
if (_west < 2 && !debug) exitwith {player groupchat "You need 2 Police Officers online to rob Binkys Casket Saloon!";};
binkysavailable = false;
"if (iscop) then {player sideChat ""The silent alarm at Binkys Casket Saloon has gone off, Go investigate!""};" call swag;
('if(iscop) then {playsound "beep";}') call swag;
1001 cutText ["Put your hands up bro this is a robbery!","PLAIN DOWN"];
sleep 2;
player groupChat "You are now robbing the saloon, Please stay near the Binky for 30 seconds to receive the money";
sleep 4;
1001 cutText ["Binky: What The Hell Are You Doing Over There, Get Your Hands Off My Caskets!","PLAIN DOWN"];
if (player distance pub5 >= 5) exitWith {[] call fn_LeftBarNotification5;};
sleep 7;
1001 cutText ["Binky: Theres No Need For A Gun Put That Away.","PLAIN DOWN"];
sleep 7;
1001 cutText ["Binky: Ok, Ok Let Me Get You The Money.","PLAIN DOWN"];
if (player distance pub5 >= 5) exitWith {[] call fn_LeftBarNotification5;};
sleep 7;
1001 cutText ["Binky: Here Take The Money, Just Remember I Will Be Your Final Designated Driver.","PLAIN DOWN"];
if (player distance pub5 >= 5) exitWith {[] call fn_LeftBarNotification5;};
sleep 5;
if (player distance pub5 >= 5) exitWith {[] call fn_LeftBarNotification5;};
player groupChat "Binky has handed you the money! Now get out of there before the cops show up!";

[player, "Robbed Bar"] call OL_player_WarrantAdd;
['geld', barmoney5] call INV_AddInvItem;

(format ['server globalChat "Someone robbed Binkys Casket Saloon!";']) call swag;
player sidechat format ["You stole $%1!", barmoney5];

barmoney5 = 0;
publicvariable "barmoney5";
binkysavailable = true;
};

if (_selection == "donutstore") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob a store!";
	};

_west = playersNumber west;
if (_west < 2 && !debug) exitwith {player groupchat "You need 2 Police Officers online to rob Dunkin Bronuts!";};
robdonutavailable = false;
"if (iscop) then {player sideChat ""The silent alarm at East Dunkin Bronuts has gone off, Go investigate!""};" call swag;
('if(iscop) then {playsound "beep";}') call swag;
1001 cutText ["Put your hands up lady this is a robbery!","PLAIN DOWN"];
sleep 2;
player groupChat "You are now robbing the store, Please stay near the front counter for 30 seconds to receive the money";
sleep 4;
1001 cutText ["Employee: We just opened sir, we dont have very much money!","PLAIN DOWN"];
if (player distance donutguy >= 7) exitWith {[] call fn_LeftDonutNotification;};
sleep 7;
1001 cutText ["Employee: Oh god, which key opens this register again...","PLAIN DOWN"];
sleep 7;
1001 cutText ["Employee: Ok... Take it, just please dont kill me.","PLAIN DOWN"];
if (player distance donutguy >= 7) exitWith {[] call fn_LeftDonutNotification;};
sleep 7;
1001 cutText ["Employee: Here take some donuts too jesus...","PLAIN DOWN"];
if (player distance donutguy >= 7) exitWith {[] call fn_LeftDonutNotification;};
sleep 5;
if (player distance donutguy >= 7) exitWith {[] call fn_LeftDonutNotification;};
player groupChat "Employee has handed you the money and donuts! Now get out of there before the cops show up!";

[player, "Robbed Dunkin Bronuts"] call OL_player_WarrantAdd;
['geld', donutmoney1] call INV_AddInvItem;
['donut', 12] call INV_AddInvItem;

(format ['server globalChat "Someone robbed East Dunkin Bronuts!";']) call swag;
player sidechat format ["You stole $%1!", donutmoney1];

donutmoney1 = 0;
publicvariable "donutmoney1";
robdonutavailable = true;
};

if (_selection == "donutstore2") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob a store!";
	};

_west = playersNumber west;
if (_west < 2 && !debug) exitwith {player groupchat "You need 2 Police Officers online to rob Dunkin Bronuts!";};
robdonut1available = false;
"if (iscop) then {player sideChat ""The silent alarm at West Dunkin Bronuts has gone off, Go investigate!""};" call swag;
('if(iscop) then {playsound "beep";}') call swag;
1001 cutText ["Put your hands up lady this is a robbery!","PLAIN DOWN"];
sleep 2;
player groupChat "You are now robbing the store, Please stay near the front counter for 30 seconds to receive the money";
sleep 4;
1001 cutText ["Employee: We just opened sir, we dont have very much money!","PLAIN DOWN"];
if (player distance donutguy2 >= 7) exitWith {[] call fn_LeftDonutNotification1;};
sleep 7;
1001 cutText ["Employee: Oh god, which key opens this register again...","PLAIN DOWN"];
sleep 7;
1001 cutText ["Employee: Ok... Take it, just please dont kill me.","PLAIN DOWN"];
if (player distance donutguy2 >= 7) exitWith {[] call fn_LeftDonutNotification1;};
sleep 7;
1001 cutText ["Employee: Here take some donuts too jesus...","PLAIN DOWN"];
if (player distance donutguy2 >= 7) exitWith {[] call fn_LeftDonutNotification1;};
sleep 5;
if (player distance donutguy2 >= 7) exitWith {[] call fn_LeftDonutNotification1;};
player groupChat "Employee has handed you the money and donuts! Now get out of there before the cops show up!";

[player, "Robbed Dunkin Bronuts"] call OL_player_WarrantAdd;
['geld', donutmoney2] call INV_AddInvItem;
['donut', 12] call INV_AddInvItem;

(format ['server globalChat "Someone robbed West Dunkin Bronuts!";']) call swag;
player sidechat format ["You stole $%1!", donutmoney2];

donutmoney2 = 0;
publicvariable "donutmoney2";
robdonut1available = true;
};

if (_selection == "casino") then
{

if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob a Casino!";
	};

_drill = "drill" call INV_GetItemAmount;

_west = playersNumber west;

if (_drill < 1) exitWith {player groupChat "You need a drill to rob the Casino Safe!";};

if (_west < 4) exitwith {player groupchat "You need 4 Police Officers online to rob the casino!";};
robcasinoavailable = false;

"if (iscop) then {player sideChat ""The silent alarm at the Casino has gone off, Go investigate!""};" call swag;
('if(iscop) then {playsound "beep";}') call swag;
player groupChat "**You are now cracking the safe, Please stay near the safe till you finish opening it**";
sleep 1;

if (player distance cvault >= 3) exitWith {[] call fn_LeftCasinoNotification;};
1001 cutText ["God damn this drill is really light!","PLAIN DOWN"];
sleep 2;

if (player distance cvault >= 3) exitWith {[] call fn_LeftCasinoNotification;};
player playMove "amovpercmstpsraswrfldnon_gear";
sleep 2;
playsound "Drill";
player groupchat "Lays Drilling on floor...";
sleep 5;

if (player distance cvault >= 3) exitWith {[] call fn_LeftCasinoNotification;};
player playMove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
playsound "Drill";
player groupchat "Begins Drilling in the spindle hole...";
sleep 5;

if (player distance cvault >= 3) exitWith {[] call fn_LeftCasinoNotification;};
1001 cutText ["Damn interal relocking system!","PLAIN DOWN"];
sleep 2;

if (player distance cvault >= 3) exitWith {[] call fn_LeftCasinoNotification;};
player playMove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
playsound "Drill";
player groupchat "Begins Drilling into first bolt...";
sleep 5;

if (player distance cvault >= 3) exitWith {[] call fn_LeftCasinoNotification;};
1001 cutText ["There better be alot of money in this vault!","PLAIN DOWN"];
sleep 2;

if (player distance cvault >= 3) exitWith {[] call fn_LeftCasinoNotification;};
player playMove "AinvPknlMstpSnonWrflDnon_medic";
sleep 2;
playsound "Drill";
player groupchat "Begins Drilling into second bolt...";
sleep 5;


if (player distance cvault >= 3) exitWith {[] call fn_LeftCasinoNotification;};
1001 cutText ["Come on... Come on... Come on...","PLAIN DOWN"];
sleep 2;

if (player distance cvault >= 3) exitWith {[] call fn_LeftCasinoNotification;};
player playMove "AinvPknlMstpSnonWrflDnon_medic";
sleep 2;
playsound "Drill";
player groupchat "Begins Drilling into third bolt...";
sleep 5;


if (player distance cvault >= 3) exitWith {[] call fn_LeftCasinoNotification;};
1001 cutText ["Shit... Is that the cops...","PLAIN DOWN"];
sleep 2;

if (player distance cvault >= 3) exitWith {[] call fn_LeftCasinoNotification;};
player playMove "AinvPknlMstpSlayWrflDnon_medic";
sleep 2;
playsound "Drill";
player groupchat "Begins Drilling into last bolt...";
sleep 5;

if (player distance cvault >= 3) exitWith {[] call fn_LeftCasinoNotification;};
player playMove "amovpercmstpsraswrfldnon_gear";
player groupchat "Opening Safe...";
Playsound "Unlock";
sleep 5;
[player, "Robbed Casino"] call OL_player_WarrantAdd;
['geld', casinomoney] call INV_AddInvItem;
(format ['server globalChat "Someone robbed Casino for $%1!";', casinomoney]) call swag;
player sidechat format ["You stole $%1 from the Casino!", casinomoney];
player groupchat "Your Drill tip broke as you pull it out of the door...";
Playsound "splat";
['drill',-1] call INV_AddInvItem;

robcasinoavailable = true;
casinomoney = 0;
publicvariable "casinomoney";
};
