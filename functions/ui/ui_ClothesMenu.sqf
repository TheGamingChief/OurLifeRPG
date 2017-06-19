private ["_nearATM", "_clothesArray", "_index"];

_nearStuff = nearestObjects [getPos player, ["tcg_atm", "olrpg_pdpilot", "TK_GUE_Soldier_Sniper_EP1"], 10] - [player];

if (isNil "_nearStuff") exitWith { player groupChat "wut...... - Garry" };
if (!createDialog "UI_ClothesMenu") exitWith { hint "Dialog Error!" };

_clothesArray = missionNamespace getVariable format ["OL_%1_ClothesArray", _nearStuff select 0];

if (isNil "_clothesArray") exitWith {
  player groupChat format ["Error trying to load %1 atm clothes array, screenshot this and show it to a developer.", _nearStuff select 0];
  closeDialog 0;
};

{
  if (getPlayerUID player in (call compile (_x select 1))) then {
    _index = lbAdd [1500, format["%1", _x select 2]];
    lbSetData [1500, _index, _x select 0];
  };
} forEach (_clothesArray select 1);

if (isNil "_index") exitWith {
  lbAdd [1500, "No clothes available here."];
  ctrlEnable [1600, false];
};

lbSetCurSel [1500, 0];
