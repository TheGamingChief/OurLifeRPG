disableSerialization;
waitUntil {OL_StatsLoadedFromDB};

22254 cutRsc["Default", "plain"];
createDialog "TGC_SpawnMenu";

{
  _index = lbAdd [4569, _x select 0];
  _lb = (findDisplay 65525) displayCtrl 4569;
  _lb lbSetColor [_index, [1, 1, 1, 0.8]];

  if (getPlayerUID player in (call compile (_x select 4))) then {
    _lb lbSetPicture [_index,"\ca\ui\data\ui_server_connect_ca.paa"];
  } else {
    _lb lbSetPicture [_index,"\ca\ui\data\ui_server_locked_ca.paa"];
  };
  lbSetData [4569, _index, _x];
} forEach OL_SpawnPoints;

lbSetCurSel [4569, 0];
