/*
Script made by : TheGamingChief for OurLifeRPG
Version 1.0 (Stable)
File: SpawnVariables.sqf
Description: This file contains all the variables for the new spawn menu. Its allows for the animated map and whitelisted spawns.
Description Continued: Big thanks to ebay (Open DayZ Forums) for some of the concepts.
TeamSpeak: TS.OurLifeRPG.Net
Website: OurLifeRPG.Net
*/

_SpawnPoints =  [
					["San Milovitz (East Civilian Spawn)",	[6136.3,4344.29,0],0,0],
					["Crosino (West Civilian Spawn)",		[2650.73,4062.26,0],0,0],
					["Pueblo (Tier X Spawn)",				[4328.94,2359.72,0],0,0],
					["Hidden (Undercover Spawn)",			[5737.20,3747.97,0],0,0]
			   ];

spawnPick = {
	_array = call compile lbData [4569, (lbCurSel 4569)];
	_TierXLocation = [4328.94,2359.72,0];
	_UndercoverLocation = [8070.47,4726.93,0];
	_TierX =  [_array,_TierXLocation] call BIS_fnc_areEqual;
	_Undercover =  [_array,_UndercoverLocation] call BIS_fnc_areEqual;
	_CID =  [_array,_UndercoverLocation] call BIS_fnc_areEqual;
	if(!(getplayeruid player in TierX_id) and (_TierX)) exitWith {systemChat "Sorry, You're not whitelisted for this spawn!";};
	if(!(getplayeruid player in Undercover_id) and (_Undercover)) exitWith {systemChat "Sorry, You're not whitelisted for this spawn!";};
	if(_CID) then {iscop=true};
	player setPos _array; 
	player enableSimulation true;
	player allowDamage true;
	[nil,player,rSwitchMove,' ']call RE;
	closeDialog 0;
};

moveMap = {
	private ["_ctrl","_leader","_plot","_grid","_spawn","_text","_zoom"];
	disableSerialization;
	_text = _this select 0;
	
	_zoom = 0.05;
	
	{
		if(_text==(_x select 0))then { 
			_spawn=_x;
		};
	}forEach _SpawnPoints;
	
	
	if (isNil "_spawn") then {_spawn = [[],getMarkerPos "center"];_zoom = 4;};
	_grid = _spawn select 1;
	if (count _spawn > 4) then {_grid = getMarkerPos "center";_zoom = 4;};
	_EastCivLocation = [6136.3,4344.29,0];
	_WestCivLocation = [2650.73,4062.26,0];
	_TierXLocation = [4328.94,2359.72,0];
	_EastCiv =  [_grid,_EastCivLocation] call BIS_fnc_areEqual;
	_WestCiv =  [_grid,_WestCivLocation] call BIS_fnc_areEqual;
	_TierX =  [_grid,_TierXLocation] call BIS_fnc_areEqual;
	if (_EastCiv) then {_zoom = 0.15;};
	if (_WestCiv) then {_zoom = 0.15;};
	if (_TierX) then {_zoom = 0.15;};

	_ctrl = (findDisplay 65525) displayCtrl 8890;
	_ctrl ctrlMapAnimAdd [1,_zoom,_grid];
	ctrlMapAnimCommit _ctrl;

};

endfnc ={
	endMission "LOSER";
};

while {true} do {
	_spawn = lbText [4569, (lbCurSel 4569)];
	if (_spawn != "") then {
		[_spawn] call moveMap;
		uiSleep 1;
	};
};