disableSerialization;

_array = OL_SpawnPoints select (lbCurSel 4569);
_grid  = getMarkerPos "center";
_zoom  = 4;

if (_array select 0 == "") exitWith {};
{
  if ((_array select 0) == (_x select 0)) exitWith {
    switch (_x select 2) do {
      case (0): {
        _grid = _x select 1;
        _zoom = 0.15;
      };
      case (1): {
        if (getPlayerUID player in (call compile (_x select 4))) then {
          _grid = _x select 1;
          _zoom = 0.15;
        };
      };
    };
  };
} forEach OL_SpawnPoints;

_ctrl = (findDisplay 65525) displayCtrl 8890;
_ctrl ctrlMapAnimAdd [1, _zoom, _grid];
ctrlMapAnimCommit _ctrl;
