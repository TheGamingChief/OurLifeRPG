if (playerSide == west || playerSide == resistance) exitWith { player groupChat "This item is for civilian use only!" };
if (player getVariable "KOED") exitWith { player groupChat "You are dead!" };
if (vehicle player != player) exitWith { player groupChat "This can only be used on foot!" };

_animation = "AinvPknlMstpSnonWrflDnon_medic";
_license   = "Field_Medic" call INV_HasLicense;
_chance    = 10;
_civs      = nearestobjects [position player, ["Man"], 3];
_civ       = nil;

{
  if ((_x getVariable "KOED") && (_x != player)) exitWith { _civ = _x };
} forEach _civs;

if (isNil "_civ") exitWith { player groupChat "There are no dead players nearby!" };
if (_civ getVariable "TriedCPR") exitWith { player groupChat "This person needs a real medic" };

_civ setVariable ["TriedCPR", true, true];
player groupChat "You examine the body...";

uiSleep 5;

if (_license) then {
  _chance = 3;
} else {
  player groupChat "You do not have Field Medic Training, good luck!";
};

if (ceil(random(_chance)) == 2) then {
  player groupChat "It looks like you should be able to handle this...";

  [_civ] execVM "R3F_revive\reanimer.sqf";
  ["cpr_kit", -1] call INV_addInvItem;
} else {
  player groupChat "Looks like this person might need a REAL medic...";
};
