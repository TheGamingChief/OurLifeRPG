if ((_this select 0) == "RETRIEVE") exitWith {
  if (!createDialog "distribute") exitWith { hint "Dialog Error!" };
  lbAdd [1, "Retrieving vehicles from database"];
  ctrlEnable [2, false];

  _side = "NONE";
  switch (playerSide) do {
    case west: { _side = "WEST" };
    case resistance: { _side = "GUER" };
    case civilian: { _side = "CIV" };
  };

  [[_this select 1, player getVariable ["realname", name player], getPlayerUID player, _side], "Stats_fnc_RetrieveImpoundedVehicles", false, false, true] call Network_fnc_MP;
};

if ((_this select 0) == "DISPLAY") exitWith {
  if (dialog) then { closeDialog 0 };
  if (!(createDialog "distribute")) exitWith { hint "Dialog Error!" };

  if ((count (_this select 1)) == 0) exitWith {
    lbAdd [1, "No impounded vehicles found."];
    ctrlEnable [2, false];
  };

  _impoundLot = (_this select 1) select 0;
  _impoundArr = (_this select 1) select 1;

  lbClear 1;

  ctrlSetText [3, format ["Retrieve impounded vehicle ($%1)", impoundpay]];

  {
    _index = lbAdd [1, (_x select 4) call INV_getitemName];
    lbSetData [1, _index, str (_x)];
  } foreach _impoundArr;

  if (lbSize 1 == 0) exitWith {
    lbAdd [1, "No impounded vehicles."];
    ctrlEnable [2, false];
  };

  buttonSetAction [2, format ['[lbData [1, (lbCurSel 1)], %1] call OL_vehicle_ImpoundBuy;', _impoundLot]];
};
