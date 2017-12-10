if (!createDialog "UI_PaintballMenu") exitWith { hint "Dialog Error!" };

{
  switch (_x select 2) do {
    case ("BLUE_TEAM"): { lbAdd [1500, format ["%1 - %2", _x select 0, _x select 1]] };
    case ("RED_TEAM"):  { lbAdd [1502, format ["%1 - %2", _x select 0, _x select 1]] };
  };
} forEach (PB_MAN getVariable ["PB_Information", []]);

switch (player getVariable ["OL_PB_Team", ""]) do {
  case ("RED_TEAM"): {
    ctrlEnable [1600, false];
    ctrlEnable [1601, true];

    ctrlSetText [1601, "Leave Red Team"];
    buttonSetAction [1601, "[player] call Paintball_fnc_LeaveRequest;"];
  };
  case ("BLUE_TEAM"): {
    ctrlEnable [1601, false];
    ctrlEnable [1600, true];

    ctrlSetText [1600, "Leave Blue Team"];
    buttonSetAction [1600, "[player] call Paintball_fnc_LeaveRequest;"];
  };
  default {
    ctrlEnable [1600, true];
    ctrlEnable [1601, true];

    ctrlSetText [1600, "Join Blue Team"];
    ctrlSetText [1601, "Join Red Team"];

    buttonSetAction [1600, "['BLUE_TEAM', player] call Paintball_fnc_JoinRequest;"];
    buttonSetAction [1601, "['RED_TEAM', player] call Paintball_fnc_JoinRequest;"];
  };
};

if (lbSize 1500 == 0) then { lbAdd [1500, "No Players."] };
if (lbSize 1502 == 0) then { lbAdd [1502, "No Players."] };
