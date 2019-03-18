if (!createDialog "UI_ShopOptions") exitWith { hint "Dialog Error! (UI_ShopOptions)" };

_ShopInfo = missionNamespace getVariable format ["%1_Array", _this select 0];
_Cond = call compile (_ShopInfo select 4);

if (!_Cond) exitWith {
  lbAdd [1500, "You cannot access this shop."];
  ctrlEnable [1600, false];
  lbSetCurSel [1500, 0];
};

OL_ActiveShop = _this select 0;
/*_HasWeapons = false;*/
/*{*/
  /*if (_x select 5) exitWith { _HasWeapons = true };*/
/*} forEach (_ShopInfo select 3);*/

lbAdd [1500, "Store Sections"];
/*if (_HasWeapons) then { lbAdd [1500, "Bought Weapons/Mags"] };*/
lbAdd [1500, "Bought Weapons/Mags"];

buttonSetAction [1600, format ['
  switch (lbText [1500, lbCurSel 1500]) do {
    case ("Store Sections"): {
      [%1] call Shops_fnc_DisplayList
    };
    case ("Bought Weapons/Mags"): {
      [] call Shops_fnc_DisplayStored
    };
  };
', OL_ActiveShop]];

lbSetCurSel [1500, 0];
