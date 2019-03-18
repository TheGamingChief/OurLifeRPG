switch (_this select 0) do {
  case "OPEN": {
    if (dialog) then { closeDialog 0 };
    if (!createDialog "UI_BoloMenu") exitWith { hint "Dialog Error!" };
  };

  case "LIST": {
    if (dialog) then { closeDialog 0 };
    if (!createDialog "UI_ListMenuBig") exitWith { hint "Dialog Error!" };

    {
      if ((_x select 4) == "VALID") then {
        lbAdd [1500, format["Vehicle: %1", (_x select 2) select 0]];
        lbAdd [1500, format["Reason: %1", (_x select 2) select 1]];
        lbAdd [1500, format["Last Seen: %1", (_x select 2) select 2]];
        lbAdd [1500, format["Submitted By: %1 - %2", (_x select 3) select 1, (_x select 3) select 0]];
        lbAdd [1500, format["Start Time: %1", [(_x select 0) / 60 / 60] call BIS_fnc_timeToString]];
        lbAdd [1500, format["End Time: %1", [(_x select 1) / 60 / 60] call BIS_fnc_timeToString]];
        lbAdd [1500, format["Status: %1", _x select 4]];
        lbAdd [1500, "==============================================================================="];
      };
    } forEach OL_Bolos;

    if (!(getPlayerUID player in Cpl_id)) then {
      ctrlShow [1600, false]
    } else {
      ctrlSetText [1600, "View Expired Bolos"];
      buttonSetAction [1600, "['EXPIRED'] call OL_ui_BoloMenu"];
    };

    //displayAddEventHandler ["onLBDblClick", "[lbData [1500, lbCurSel 1500]] call OL_ui_BoloMenu; closeDialog 0;"];
    if ((lbSize 1500) == 0) exitWith {
      lbAdd [1500, "No Bolos To Display"];
    };
  };

  case "EXPIRED": {
    if (dialog) then { closeDialog 0 };
    if (!createDialog "UI_ListMenuBig") exitWith { hint "Dialog Error!" };

    _somethingDisplayed = false;

    {
      if ((_x select 4) == "EXPIRED") then {
        lbAdd [1500, format["Vehicle: %1", (_x select 2) select 0]];
        lbAdd [1500, format["Reason: %1", (_x select 2) select 1]];
        lbAdd [1500, format["Last Seen: %1", (_x select 2) select 2]];
        lbAdd [1500, format["Submitted By: %1 - %2", (_x select 3) select 1, (_x select 3) select 0]];
        lbAdd [1500, format["Start Time: %1", [(_x select 0) / 60 / 60] call BIS_fnc_timeToString]];
        lbAdd [1500, format["End Time: %1", [(_x select 1) / 60 / 60] call BIS_fnc_timeToString]];
        lbAdd [1500, format["Status: %1", _x select 4]];
        lbAdd [1500, "==============================================================================="];
        _somethingDisplayed = true;
      };
    } forEach OL_Bolos;

    if (!_somethingDisplayed) then { lbAdd [1500, "No expired bolos to display!"] };

    ctrlSetText [1600, "View Bolos"];
    buttonSetAction [1600, "['LIST'] call OL_ui_BoloMenu;"];
  };
};
