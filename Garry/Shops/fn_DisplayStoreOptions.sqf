if (!createDialog "UI_ListMenuSmall") exitWith { hint "Dialog Error! (UI_ListMenuSmall)" };

_ShopInfo = missionNamespace getVariable format ["%1_Array", _this select 0];
_Cond = call compile (_ShopInfo select 4);

if (!_Cond) exitWith {
  lbAdd [1500, "You cannot access this shop."];
  ctrlEnable [1600, false];
  lbSetCurSel [1500, 0];
};

lbAdd [1500, "Store Sections"];
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
', _this select 0]];

lbSetCurSel [1500, 0];
