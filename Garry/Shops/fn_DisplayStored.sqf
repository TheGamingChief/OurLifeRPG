if (!createDialog "UI_ListMenuBig") exitWith { hint "Dialog Error! (UI_ListMenuBig)" };

_nearObjects = (nearestObjects [getPosATL player, ["Infostand_2_EP1", "Functionary2", "ibr_arl_officer"], 5]) - [player];
_nearObjects = _nearObjects select 0;

if (!(["OL_Shop_", str (_nearObjects)] call OL_misc_StringStartsWith)) exitWith { closeDialog 0 };

{
  if ((_x select 0) == (str (_nearObjects))) then {
    _index = lbAdd [1500, format ["%1 (x%2)", (_x select 1) call INV_getitemName, _x select 2]];
    lbSetData [1500, _index, format ["[%1, %2, %3]", str (_x select 1), _x select 2, _forEachIndex]];
  };
} forEach OL_StoredWeapons;

{
  if ((_x select 0) == (str (_nearObjects))) then {
    _index = lbAdd [1500, format ["%1 (x%2)", (_x select 1) call INV_getitemName, _x select 2]];
    lbSetData [1500, _index, format ["[%1, %2, %3]", str (_x select 1), _x select 2, _forEachIndex]];
  };
} forEach OL_StoredMagazines;

if (lbSize 1500 == 0) exitWith {
  lbAdd [1500, "No bought weapons or magazines."];
  ctrlSetText [1600, "Take Item"];
  ctrlEnable [1600, false];
  ctrlShow [1601, false];
};

lbSetCurSel [1500, 0];
buttonSetAction [1600, "[lbData [1500, lbCurSel 1500]] call Shops_fnc_TakeItem;"];
ctrlSetText [1600, "Take Item"];
