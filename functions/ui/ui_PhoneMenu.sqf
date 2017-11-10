if (!createDialog "UI_ListMenuSmall") exitWith { hint "Dialog Error! (UI_ListMenuSmall)" };
_somethingDisplayed = false;

{
  if (!(isNull _x) && (isPlayer _x) && (_x != player)) then {
    _index = lbAdd [1500, format ["%1 - %2", _x, _x getVariable "RealName"]];
    lbSetData [1500, _index, format ["%1", _x]];
    _somethingDisplayed = true;
  };
} forEach playerarray;

if (!_somethingDisplayed) exitWith {
  lbAdd [1500, "No users online"];
  ctrlEnable [1600, false];
};

//buttonSetAction [1600, "[lbData [1500, (lbCurSel 1500)]] call OL_phone_CallPlayer; closeDialog 0;"];
buttonSetAction [1600, "[lbData [1500, (lbCurSel 1500)]] call OL_phone_CallPlayer; closeDialog 0;"];
