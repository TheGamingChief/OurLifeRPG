//Script Made By Speedy
_civ = civmenuciv;

private["_timer","_esOnline","_weps","_mags","_holder"];

if (player getVariable "KOED") exitWith {};
if (vehicle player != player) then
{
	player action ["eject", (vehicle player)];
};
player setVariable ["KOED",true,true];
player setVariable ["tf_unable_to_use_radio", true];
player setVariable ["tf_voiceVolume", 0, true];
player setVariable ["ZipTied",false,true];
player setVariable ["Gagged",false,true];
player setVariable ["Escort",false,true];
_civ setVariable ["Escort",false,true];
detach _civ;
_timer = 720;
_esOnline = false;
player allowDamage false;
[] execVM "actions\actionsRemove.sqf";
[] execVM format ['Actions\fnc_%1_Actions.sqf',playerSide];

for "_i" from 0 to (count playableUnits) do
{
	if (side (playableUnits select _i) == Resistance) then
	{
		_esOnline = true;
	};
};
if (!_esOnline) then
{
	_timer = 60;
};

player allowDamage false;
[nil,player,rSwitchMove,"adthppnemstpsraswpstdnon_2"] call RE;

while {_timer >= 0 && player getVariable "KOED"} do
{
	titleText [format["Life Timer: %1", (_timer) ],"PLAIN"];
	player enableSimulation false;
	_timer = _timer - 1;
	sleep 1;
};
if (_timer <= 0) then {
    execVM "R3F_revive\reapparaitre_camp.sqf";
	[nil,player,rSwitchMove,"amovppnemstpsnonwnondnon"] call RE;
	player addWeapon "ItemMap";
	player addWeapon "ItemMap";
	player addWeapon "ItemCompass";
	player addWeapon "ItemWatch";
	player addWeapon "ItemGPS";
	player setVariable ["KOED2",false,true];
	player setVariable ["tf_unable_to_use_radio", false];
	player setVariable ["tf_voiceVolume", 1.0, true];
	player enableSimulation true;
	deleteMarker ("OL_DeadTracker_" + name player);	
	sleep 2;
	call AddRadioBack;
};
		
if (player getVariable "KOED") then
{
	player allowDamage true;
} else {
	player allowDamage true;
	[nil,player,rSwitchMove,"amovppnemstpsnonwnondnon"] call RE;
	hintSilent parseText format["<t color='#ff0000'>%1 You have been revived</t>", name player];
	player setVariable ["tf_unable_to_use_radio", false];
	player setVariable ["tf_voiceVolume", 1.0, true];
	player addWeapon "ItemMap";
	player addWeapon "ItemCompass";
	player addWeapon "ItemWatch";
	player addWeapon "ItemGPS";
	if (getPlayerUID player != "76561198073512197") then {
		sleep 5;
		player groupchat "Your legs are broken and need to be healed by EMS!";
		player setHit ["legs", 1];
	};
	player enableSimulation true;
	deleteMarker ("OL_DeadTracker_" + name player);	
	sleep 2;
	call AddRadioBack;
};

if (player getVariable "KOED2") then
{
	player allowDamage true;
} else {
	player allowDamage true;
	[nil,player,rSwitchMove,"amovppnemstpsnonwnondnon"] call RE;
	hintSilent parseText format["<t color='#ff0000'>%1 You have respawn</t>", name player];
	player setVariable ["KOED",false,false];
	player setVariable ["tf_unable_to_use_radio", false];
	player setVariable ["tf_voiceVolume", 1.0, true];
	player addWeapon "ItemMap";
	player addWeapon "ItemCompass";
	player addWeapon "ItemWatch";
	player addWeapon "ItemGPS";
	player enableSimulation true;
	deleteMarker ("OL_DeadTracker_" + name player);	
	sleep 2;
	call AddRadioBack;
};