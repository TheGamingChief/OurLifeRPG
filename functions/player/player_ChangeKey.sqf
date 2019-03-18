_action = _this select 0;
_key    = call compile (_this select 1);

_index = {
  if (_action == (_x select 0)) exitWith { _forEachIndex };
} forEach OL_CustomKeysArray;

switch (_action) do {
  case "INTERACTION MENU": {
    OL_InteractionMenu_Key = _key;
    ["KeyPress_E", "KeyDown"] call CBA_fnc_removeKeyHandler;
    [_key, [false, false, false], {[] spawn fnc_KeyPress_E; true;}, "keydown", "KeyPress_E"] call CBA_fnc_addKeyHandler;
  };
  case "RIFLE HOLSTER": {
    ["KeyPress_O", "KeyDown"] call CBA_fnc_removeKeyHandler;
    [_key,  [false, false, false], {[] spawn fnc_KeyPress_O; false;}, "keydown", "KeyPress_O"] call CBA_fnc_addKeyHandler;
  };
  case "PISTOL HOLSTER": {
    ["KeyPress_H", "KeyDown"] call CBA_fnc_removeKeyHandler;
    [_key,  [false, false, false], {[] spawn fnc_KeyPress_H; false;}, "keydown", "KeyPress_H"] call CBA_fnc_addKeyHandler;
  };
};

player groupChat format ["Change %1 Key To %2", _action, [_key] call OL_misc_getCustomKeyName];

if (isNil "_index") then { _index = count OL_CustomKeysArray };

OL_CustomKeysArray set [_index, [_action, _key]];
