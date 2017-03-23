////////////////////////////////////
////			         //
//      Copyright � TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////
///-SCRIPT INFORMATION-//
//Initializing Profile Default
//
//-SCRIPT CONDITONS-//
//Script Begins: On Server Initialization
//Script Ends  : On EOF
//Wulfer Intelectual Property


_secondcounter = 0;
_minutecounter = 0;
_art = (_this select 3) select 0;

if (isNil "workplacejob_hostage_serverarray") then {workplacejob_hostage_serverarray = []};

if (_art == "serverloop") then

{

while {true} do

	{

	for [{_i=0}, {_i < (count workplacejob_hostage_serverarray)}, {_i=_i+1}] do

		{

		if (isNull ((workplacejob_hostage_serverarray select _i) select 0)) then

			{

			if (!(isNull ((workplacejob_hostage_serverarray select _i) select 1))) then

				{

				deleteVehicle ((workplacejob_hostage_serverarray select _i) select 1);
				deletemarker "htargetmarker";

				};

			workplacejob_hostage_serverarray set [_i,""];
			workplacejob_hostage_serverarray = workplacejob_hostage_serverarray - [""];
			//"if(iscop)then{player sidechat ""The threat to the hostage has been removed""}" call OL_network_Swag;
			sleep ((workplacejob_hostage_break)*60);
			workplacejob_hostage_active = false;
			publicvariable "workplacejob_hostage_active";

			};

		};
	sleep 10;

	};

};

if (_art == "getajob_hostage") then

{
_west = playersNumber west;
if (_west < 5) exitwith {player groupchat "You need 5 Police Officers online to take a hostage!";};
if(workplacejob_hostage_active)exitWith{player groupChat "There are currently no more hostages.";};
if(workplacejob_hostage_failed)exitWith{player groupChat "You have failed a hostage mission recently, maybe you can do it again later.";};

_array  = [[Hostagespawn1, 1], [Hostagespawn2, 1]];
_city   = (floor(random(count _array)));
_pos    = (_array select _city) select 0;
_radius = (_array select _city) select 1;
_a1	= 0;

//delete any left overs from last time this ran
deletemarker "htargetmarker";
deletevehicle hostage1;


//creating VIP
_group = createGroup east;
hostage1 = _group createUnit ["Functionary1_EP1", _pos, [], _radius, "FORM"];
hostage1 setvehicleinit 'hostage1 = this;this setVehicleVarName "hostage1";';

processInitCommands;


//  ";

// put vip inside the car



format["workplacejob_hostage_serverarray = workplacejob_hostage_serverarray + [[%1, hostage1]];", player] call OL_network_Swag;

_markerobj = createMarker ["htargetmarker",[0,0]];
_markername= "htargetmarker";
_markerobj setMarkerShape "ICON";
"htargetmarker" setMarkerType "Marker";
"htargetmarker" setMarkerColor "ColorRed";
"htargetmarker" setMarkerText "Hostage target";
_markername SetMarkerPos _start;

workplacejob_hostage_active = true; publicvariable "workplacejob_hostage_active";

player groupChat "The Hostage is marked on the map, don't let the police get you.";
player groupChat "You must notify the Police you have taken a hostage within 2mins or its considered fail roleplay.";

"if (iscop) then {player sideChat ""Someone is trying to take a hostage. The hostage has been marked on the map. Arrest the hostage taker before its too late!""};" call OL_network_Swag;

[player, "Hostage Taking"] call OL_player_WarrantAdd;
player groupchat "The police are on to you, hurry up!";

while {true} do

	{

	/* removed this so the mission keeps going even if assassin dies
	//if(!alive player)exitwith
	//	{
	//	deletevehicle hostage1;
	//	deletemarker "htargetmarker";

	//	};
	*/
	"htargetmarker" setmarkerpos getpos hostage1;


	if (_minutecounter >= 1800 and alive player) exitWith

		{
		kontostand = kontostand + 500000;
		player groupchat "Well done, you kept the hostage for 30 minutes, $500000 has been transfered to your account.";
		sleep 10;
		"server globalchat ""Hostage Taker WINS, he kept the hostage for 30 minutes."";" call OL_network_Swag;
		sleep 1;
		deletevehicle hostage1;
		deletemarker "htargetmarker";
		_minutecounter = 0;
		};

	if (!alive hostage1 and alive player) exitWith

		{

		player groupchat "Hostage has been killed, No one WINS!!";
		sleep 5;
		"server globalchat ""The Hostage has been Killed, No one WINS!"";" call OL_network_Swag;
		deletevehicle hostage1;
		deletemarker "htargetmarker";

		};

	if(hostage1 distance getmarkerpos "hostagezone" > 125) exitwith

		{

		"
		server globalchat ""The Hostage has escaped! Cops get $100000"";
		_copplayernumber = playersNumber west;
		_copbonus = 100000;
		if (iscop) then {Kontostand = (Kontostand + _copbonus); player sidechat format[""you received $%1 for hostage taker fleeing the area"", _copbonus];};
		" call OL_network_Swag;
		sleep 2;
		player groupchat "The hostage has escaped the containment area, keep him inside next time!";
		workplacejob_hostage_failed = true;
		deletevehicle hostage1;
		deletemarker "htargetmarker";


		};


	if(player distance hostage1 > 200) exitwith

		{

		"
		server globalchat ""The Hostage taker has lost!"";
		_copplayernumber = playersNumber west;
		_copbonus = 60000;
		if (iscop) then {Kontostand = (Kontostand + _copbonus); player sidechat format[""you received $%1 for the successful rescue of the hostage"", _copbonus];};
		" call OL_network_Swag;
		sleep 2;
		player groupchat "The Hostage was rescued, mission failed!";
		workplacejob_hostage_failed = true;
		deletevehicle hostage1;
		deletemarker "htargetmarker";


		};





	_minutecounter = _minutecounter + 1;
	_secondcounter = _secondcounter + 1;
	hintsilent format["Time past: %1 m", round(_minutecounter/60)];
    	hintsilent format["Time past: %1 m", round(_minutecounter/60)];
	sleep 1;

	};

deletevehicle hostage1;
deletemarker "htargetmarker";

sleep ((workplacejob_hostage_break)*60);
workplacejob_hostage_active = false;
publicvariable "workplacejob_hostage_active";

if (workplacejob_hostage_failed) then

	{

	sleep ((workplacejob_hostage_break)*60);
	workplacejob_hostage_failed = false;

	};

};








// written by Wulfer, template by Eddie Vedder
