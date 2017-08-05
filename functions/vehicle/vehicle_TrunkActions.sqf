_vcl = _this select 0;

if (isNil "_vcl") exitWith { player groupChat "wat - TRG" };
if (_vcl getVariable ["OL_TrunkInUse", false]) exitWith { player groupChat "The trunk is already in use." };

_curStorage = _vcl getVariable ["OL_TrunkStorage", []];

_action = _this select 0;
_vcl    = _this select 1;

switch (_action) do {
    case "OPEN": {
      if (!createDialog "itemkaufdialog") exitWith { hint "Dialog Error" };
      if (count _curStorage < 1) then { player groupChat "There is nothing stored in this vehicle" };

      ctrlSetText [91, "Take Item"];
      ctrlSetText [92, "Store Item"];

      ctrlSetText [765, format ["Storage: %1/%2", _weight, _maxweight]];

      {

      } forEach _curStorage;
    };
    case "ADD": {

    };
    case "REMOVE": {

    };
    case "SEARCH": {

    };
};
