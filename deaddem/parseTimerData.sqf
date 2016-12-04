_timer = parseNumber (_this select 0);
player sideChat format["DEBUG: Timer Parsed to %1sec",_timer];
format['[%1] execVM "timer.sqf"', _timer] call broadcast;