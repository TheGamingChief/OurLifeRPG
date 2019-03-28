private["_timer","_esOnline","_weps","_mags","_holder"];
_timer = if (({ (_x call OL_isse_UnitExists) && (_x in medicarray) && (isPlayer _x) } count playerarray) > 0) then { 720 } else { 60 };

if (player getVariable "KOED") exitWith {};
if (vehicle player != player) then { player action ["eject", (vehicle player)] };

if (!isNil "civmenuciv") then {
	civmenuciv setVariable ["Escorted",false,true];
	detach civmenuciv;
};

player setVariable ["KOED", true, true];
player setVariable ["tf_unable_to_use_radio", true, true];
player setVariable ["tf_voiceVolume", 0, true];
player setVariable ["ZipTied", false, true];
player setVariable ["Gagged", false, true];
player setVariable ["Escorted", false, true];

format['%1 allowDamage false', player] call OL_network_Swag;
[] call OL_Events_ActionToggle;
INV_shortcuts = true;

[nil,player,rSwitchMove,"adthppnemstpsraswpstdnon_2"] call RE;
if ("OL_License_civ_drivers" in OL_Licenses) then { player setVariable ["OL_Has_Drivers_License", true, true] };

while {_timer >= 0 && player getVariable "KOED"} do
{
	titleText [format["Life Timer: %1",_timer],"PLAIN"];
	player enableSimulation false;
	_timer = _timer - 1;
	uiSleep 1;
};
if (_timer <= 0) then {
	execVM "R3F_revive\reapparaitre_camp.sqf";
	[nil,player,rSwitchMove,"amovppnemstpsnonwnondnon"] call RE;
	{	if (!(_x in weapons player)) then { player addWeapon _x }	} forEach OL_DefaultItems;
	player setVariable ["KOED2",false,true];
	player setVariable ["tf_unable_to_use_radio", false, true];
	player setVariable ["tf_voiceVolume", 1.0, true];
	player setVariable ["TriedCPR", false, true];
	player enableSimulation true;
	format['deleteMarker ("OL_DeadTracker_" + "%1")', PlayerName] call OL_network_Swag;
	uiSleep 2;
	[RadioArr] call OL_tfar_addRadiosBack;
	[] call OL_startup_setVariables;
	if ("OL_License_civ_drivers" in OL_Licenses) then { player setVariable ["OL_Has_Drivers_License", true, true] };
	OL_isDead = false;
};

if (player getVariable "KOED") then
{
	format['%1 allowDamage true', player] call OL_network_Swag;
} else {
	format['%1 allowDamage true', player] call OL_network_Swag;
	[nil,player,rSwitchMove,"amovppnemstpsnonwnondnon"] call RE;
	hintSilent parseText format["<t color='#ff0000'>%1 You have been revived</t>", PlayerName];
	player setVariable ["tf_unable_to_use_radio", false, true];
	player setVariable ["tf_voiceVolume", 1.0, true];
	player setVariable ["TriedCPR", false, true];
	{	if (!(_x in weapons player)) then { player addWeapon _x }	} forEach OL_DefaultItems;
	if (!(getPlayerUID player in ["76561198073512197", "76561198291985397", "76561198122962728"])) then {
		player groupchat "Your legs are broken and need to be healed by EMS!";
		player setHit ["legs", 1];
	};
	player enableSimulation true;
	format ['deleteMarker ("OL_DeadTracker_" + "%1")', PlayerName] call OL_network_Swag;
	uiSleep 2;
	[] call OL_startup_setVariables;
	if ("OL_License_civ_drivers" in OL_Licenses) then { player setVariable ["OL_Has_Drivers_License", true, true] };
	[RadioArr] call OL_tfar_addRadiosBack;
	OL_isDead = false;
};

if (player getVariable "KOED2") then
{
	format['%1 allowDamage true', player]call OL_network_Swag;
} else {
	format['%1 allowDamage true', player]call OL_network_Swag;
	[nil,player,rSwitchMove,"amovppnemstpsnonwnondnon"] call RE;
	hintSilent parseText format["<t color='#ff0000'>%1 You have respawned</t>", PlayerName];
	player setVariable ["KOED", false, true];
	player setVariable ["tf_unable_to_use_radio", false, true];
	player setVariable ["tf_voiceVolume", 1.0, true];
	player setVariable ["TriedCPR", false, true];
	{	if (!(_x in weapons player)) then { player addWeapon _x }	} forEach OL_DefaultItems;
	player enableSimulation true;
	format['deleteMarker ("OL_DeadTracker_" + "%1")', PlayerName] call OL_network_Swag;
	sleep 2;
	[] call OL_startup_setVariables;
	if ("OL_License_civ_drivers" in OL_Licenses) then { player setVariable ["OL_Has_Drivers_License", true, true] };
	[RadioArr] call OL_tfar_addRadiosBack;
	[player, "Remove All Warrants", 0] call OL_player_WarrantRemove;
	OL_isDead = false;
};
