if (isNil "debugarray") then {debugarray = []};
if (isNil "debug") then {debug = false};

_h = []	execVM "ServerLoad\customfunctions.sqf";
waitUntil{scriptDone  _h};

_h = []	execVM "ServerLoad\strfuncs.sqf";
waitUntil{scriptDone  _h};

_h = []	execVM "ServerLoad\1007210.sqf";
waitUntil{scriptDone  _h};

_h = [] execVM "ServerLoad\4422894.sqf";
waitUntil{scriptDone  _h};

_h = [_this select 0, _this select 1] execVM "ServerLoad\broadcast.sqf";
waitUntil{scriptDone  _h};

