//Script Made By Speedy


private["_timer","_esOnline","_weps","_mags","_holder"];

if (player getVariable "KOED") exitWith {};
if (vehicle player != player) then
{
	player action ["eject", (vehicle player)];
};
_weps = weapons player;
_weps = _weps - ["ItemCompass","ItemRadio","ItemMap","ItemWatch","ItemGPS"];
_mags = magazines player;

_holder = "weaponholder" createVehicle (getPos player);
{
	_holder addWeaponCargoGlobal [_x,1];
} forEach _weps;
{
	_holder addMagazineCargoGlobal [_x,1];
} forEach _mags;
player setVariable ["KOED",true,true];
_timer = 720;
_esOnline = false;
player allowDamage false;
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
	player addWeapon "ItemRadio";
	player addWeapon "ItemCompass";
	player addWeapon "ItemWatch";
	player addWeapon "ItemGPS";
	player setVariable ["KOED2",false,true];
	player enableSimulation true;
};
		
if (player getVariable "KOED") then
{
	player allowDamage true;
} else {
	player allowDamage true;
	[nil,player,rSwitchMove,"amovppnemstpsnonwnondnon"] call RE;
	hintSilent parseText format["<t color='#ff0000'>%1 You have been revived</t>", name player];
	player addWeapon "ItemMap";
	player addWeapon "ItemRadio";
	player addWeapon "ItemCompass";
	player addWeapon "ItemWatch";
	player addWeapon "ItemGPS";
	sleep 15;
	player groupchat "Your legs are broken and need to be healed by EMS!";
	player setHit ["legs", 1];
	player enableSimulation true;
};

if (player getVariable "KOED2") then
{
	player allowDamage true;
} else {
	player allowDamage true;
	[nil,player,rSwitchMove,"amovppnemstpsnonwnondnon"] call RE;
	hintSilent parseText format["<t color='#ff0000'>%1 You have respawn</t>", name player];
	player setVariable ["KOED",false,false];
	player addWeapon "ItemMap";
	player addWeapon "ItemRadio";
	player addWeapon "ItemCompass";
	player addWeapon "ItemWatch";
	player addWeapon "ItemGPS";
	player enableSimulation true;
};