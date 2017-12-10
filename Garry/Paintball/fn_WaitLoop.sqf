while {OL_PB_WaitLoop} do {
  if (OL_PB_MatchStarted) exitWith { OL_PB_WaitLoop = false };

  if (player distance PB_MAN >= 150) exitWith {
    ["SUCCE", "You have gone too far away from the paintball area and have been removed from the match!"] call Paintball_fnc_Notification;
    _index = {
      if ((_x select 1) == (getPlayerUID player)) exitWith { _forEachIndex };
    } forEach (PB_MAN getVariable ["PB_Information", []]);

    _currPB = PB_MAN getVariable ["PB_Information", []];

    _currPB set [_index, -1];
    _currPB = _currPB - [-1];

    PB_MAN setVariable ["PB_Information", _currPB, true];
    player setVariable ["OL_PB_Team", "", true];
  };
  if (!alive player || player getVariable "KOED") exitWith {
    ["SUCCE", "You have died and been removed from the match!"] call Paintball_fnc_Notification;
    _index = {
      if ((_x select 1) == (getPlayerUID player)) exitWith { _forEachIndex };
    } forEach (PB_MAN getVariable ["PB_Information", []]);

    _currPB = PB_MAN getVariable ["PB_Information", []];

    _currPB set [_index, -1];
    _currPB = _currPB - [-1];

    PB_MAN setVariable ["PB_Information", _currPB, true];
    player setVariable ["OL_PB_Team", "", true];
  };
  uiSleep 1;
};
