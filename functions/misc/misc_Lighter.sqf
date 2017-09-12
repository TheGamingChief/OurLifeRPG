if (player == vehicle player) exitWith { player groupChat "You must be in a vehicle to use a lighter!" };
(vehicle player) setDamage 0.95;
player groupchat "The fuel is on fire!! GET OUT QUICKLY BEFORE IT EXPLODES!";
[(_this select 1), -1] call INV_AddInvItem;
