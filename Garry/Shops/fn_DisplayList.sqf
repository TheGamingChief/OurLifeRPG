_Object = _this select 0;

if (!(["OL_Shop_", str (_Object)] call OL_misc_StringStartsWith)) exitWith {};

_ShopInfo = missionNamespace getVariable format ["%1_Array", _Object];

OL_ActiveShop = _Object;

_Shops = _ShopInfo select 3;

if (!createDialog "UI_ShopCatList") exitWith { hint "Dialog Error!" };

{
  if ((getPlayerUID player) in (call compile (_x select 3))) then {
    _index = lbAdd [1500, format ["%1", _x select 0]];
    lbSetData [1500, _index, format ["[%1, %2, %3]", _x select 1, _x select 2, _x select 4]];
  };
} forEach _Shops;

if (lbSize 1500 == 0) exitWith {
  lbAdd [1500, "No shops to display."];
  ctrlEnable [1600, false];
};

lbSetCurSel [1500, 0];
buttonSetAction [1600, '[lbData [1500, lbCurSel 1500]] call Shops_fnc_DisplayCategory;'];
((findDisplay 070843) displayCtrl 1500) ctrlSetEventHandler ["onLBDblClick", '[lbData [1500, lbCurSel 1500]] call Shops_fnc_DisplayCategory;'];
