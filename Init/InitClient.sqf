[1112, "Init Client",60] call RL_LoadingSetText;
[] execVM "ServerLoad\respawn.sqf";
["ol_textures\images\Gps.paa",-0.06,-0.36] call bis_fnc_customGPS;
["clientloop"] execVM "ServerLoad\clientloop.sqf";
[0,0,0,["clientloop"]] execVM "gangs.sqf";
["init"] execVM "food.sqf";
[] execVM "gamerz\admininit.sqf";
[] execVM "gamerz\syncInfo.sqf";
[] execVM "ServerLoad\itemactions.sqf";
[] execVM "ServerLoad\petrolactions.sqf";
[] execVM "ServerLoad\SpeedCams.sqf";
[] execVM "ServerLoad\nametags.sqf";
[] execVM "ServerLoad\initplayer.sqf";
[] execVM "ServerLoad\markers.sqf";
[] execVM "ServerLoad\salaries.sqf";
[] execVM "Scripts\Misc\10MCleanUp.sqf";
[] execVM "Scripts\Misc\escape_menu_mod.sqf";

CodeBroadcast = [];
"CodeBroadcast" addPublicVariableEventHandler
{
    _params = _this select 1;
    if(local (_params select 0)) then
    {
        (_params select 1) execVM (_params select 2);
    };
};

player setVariable ["Attached",false,true];
player setVariable ["Cuffed",false,true];
player setVariable ["ZipTied",false,true];
player setVariable ["Gagged",false,true];
player setVariable ["Escort",false,true];

player addEventHandler ["fired", {["fired", (_this select 4), (_this select 1)] execVM "stun.sqf";}];
player addEventHandler ["handleDamage", {_this call compile preprocessfile "sethit.sqf"}];
//player addEventHandler ["HandleDamage",{_this call DDOPP_taser_handleHit}];
//player addEventHandler ["handleDamage", {_this call RLRPG_Cfg_Inv_HandleDamage;}];
waitUntil{vehicle player == player};

player addEventHandler ["fired",{_this execVM "fired.sqf"}];
[]spawn{while{true} do {sleep 1;
	if(player getVariable "flashed" and isciv) then
	{
		
		if (not(alive player)) exitWith {};
		2 cutText ["","WHITE OUT",0];
		sleep 5;
		2 cutText ["","WHITE IN",3];
		sleep 1;
		player setVariable ["flashed",false, true];
		
	};
	if(player getVariable "flashedB") then
	{
		
		if (not(alive player)) exitWith {};
		sleep 2.5;
		player say ["flash_bang",5];
		2 cutText ["","WHITE OUT",0];
		sleep 10;
		2 cutText ["","WHITE IN",3];
		sleep 1;
		player setVariable ["flashedB",false, true];
		
	};
};};

_h = [] execVM format ['Actions\fnc_%1_KeyPress.sqf',playerSide];
waitUntil{scriptDone  _h};
_h = [] execVM format ['Actions\fnc_%1_KeyEvents.sqf',playerSide];
waitUntil{scriptDone  _h};
_h = [] execVM format ['Actions\fnc_%1_Actions.sqf',playerSide];
waitUntil{scriptDone  _h};

waituntil {!(IsNull (findDisplay 46))};