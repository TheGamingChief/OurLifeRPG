{
  switch (_x select 0) do {
    case "INTERACTION MENU": {
      OL_InteractionMenu_Key = _x select 1;
      ["KeyPress_E", "KeyDown"] call CBA_fnc_removeKeyHandler;
      [_x select 1, [false, false, false], {[] spawn fnc_KeyPress_E; true;}, "keydown", "KeyPress_E"] call CBA_fnc_addKeyHandler;
    };
    case "RIFLE HOLSTER": {
      ["KeyPress_O", "KeyDown"] call CBA_fnc_removeKeyHandler;
      [_x select 1,  [false,false,false], {[] spawn fnc_KeyPress_O; false;}, "keydown", "KeyPress_O"] call CBA_fnc_addKeyHandler;
    };
    case "PISTOL HOLSTER": {
      ["KeyPress_H", "KeyDown"] call CBA_fnc_removeKeyHandler;
      [_x select 1,  [false,false,false], {[] spawn fnc_KeyPress_H; false;}, "keydown", "KeyPress_H"] call CBA_fnc_addKeyHandler;
    };
  };
} forEach OL_CustomKeysArray;
