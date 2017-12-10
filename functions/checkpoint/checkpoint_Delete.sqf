_target = cursorTarget;
if (isNull _target) exitWith { player groupChat "Fuck off" };
if ((player distance _target) > 8) exitWith { player groupChat "You must be within 8 meters of the object." };

if ((_target getVariable "AM_CP") == 1) exitWith {
  deleteVehicle _target;
  player groupChat format ["Successfully deleted (%1)", typeOf _target];
  ["CheckPointDelete_Log", format ["%1 (%2) has deleted %3 at (GRID: %4)", name player, getPlayerUID player, _target, mapGridPosition getpos player]] call RM_fnc_LogToServer;
};
player groupChat "You may only delete objects that have been placed by the Checkpoint Builder!";
