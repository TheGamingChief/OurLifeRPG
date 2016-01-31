private ["_seconds","_maxSeconds","_countdown"];
if (getPlayerUID player == "76561198073512197") exitWith {};

//CONFIG
_maxSeconds = 5; //how many seconds players can talk on side channel before they get kicked to lobby
_msg = "NO VOICE ON GLOBAL / SIDE CHANNEL!"; //message to be displayed to the user
_countdown = true; //show countdown in chat
//CONFIG END

_seconds = 0;
while {true} do {
  waitUntil {(!isNull findDisplay 55) and (!isNull findDisplay 63) and ((ctrlText ((findDisplay 63) displayCtrl 101) == localize "STR_GLOBAL_CHANNEL") or (ctrlText ((findDisplay 63) displayCtrl 101) == localize "STR_SIDE_CHANNEL"))};
  //wait until microphone icon is showing (IDD 55) and channel label is displayed (IDD 63) and channel label says "Side channel"
  
  cutText [_msg,"PLAIN"]; //notify user
  if(_countdown) then {
    systemChat format["Returning to lobby in: %1",_maxSeconds - _seconds]; //countdown in chat
  };
  
  if (_seconds >= _maxSeconds) then {
    endMission "LOSER"; //return to lobby
  };
  
  _seconds = _seconds + 1;
  sleep 1;
};