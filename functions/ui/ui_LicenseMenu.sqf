if (!createDialog "UI_ListMenuSmall") exitWith { hint "Dialog Error!" };

_licenseArea = ((nearestObjects [getPosATL player, ["tcg_atm", "Functionary1_EP1", "Land_bags_stack_EP1", "Barrels", "Infostand_2_EP1", "UNBasicAmmunitionBox_EP1", "FlagCarrierTakistan_EP1"], 5]) select 0);

if (isNil "_licenseArea") exitWith {
  systemChat format ["[DEBUG] If you see this please take a screenshot and send it to a developer."];
  systemChat format ["[DEBUG] ERROR FINDING LOCATION: %1", _licenseArea];
};

_somethingDisplayed = false;

{
  if ((str(_licenseArea) in (_x select 3)) && (getPlayerUID player in (call compile (_x select 4)))) then {
    if (!((_x select 1) call OL_license_Owns)) then {
      _index = lbAdd [1500, format ["%1 - ($%2)", _x select 0, _x select 2]];
      lbSetData [1500, _index, _x select 1];
      _somethingDisplayed = true;
    };
  };
} forEach OL_LicenseArray;

if (!_somethingDisplayed) exitWith {
  lbAdd [1500, "No Licenses Available!"];
  ctrlEnable [1600, false];
};

buttonSetAction [1600, "[lbData [1500, (lbCurSel 1500)]] call OL_license_buy; closeDialog 0; [] call OL_ui_LicenseMenu;"];
lbSetCurSel [1500, 0];
