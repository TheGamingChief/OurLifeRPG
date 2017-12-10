_typeOfEnd = _this select 0;
waitUntil {!OL_PB_EndingPlayer};

OL_PB_EndingPlayer = true;

switch (_typeOfEnd) do {
  case ("HIT"): {
    ["SUCCE", "You have been hit out the match, returning you to the lobby and returning gear."] call Paintball_fnc_Notification;
    player setVariable ["PB_Alive", false, true];
  };
  case ("NO_PLAYERS"): {
    ["SUCCE", "The match has ended due to there being no players in the match."] call Paintball_fnc_Notification;
  };
  case ("TIME"): {
    ["SUCCE", "Time has ran out and the paintball match has ended, no one won!"] call Paintball_fnc_Notification;
  };
  case ("WINNER"): {
    if ((player getVariable ["OL_PB_Team", ""]) == (_this select 1)) then {
      ["SUCCE", "Your team has won the match and you have all received $25,000!"] call Paintball_fnc_Notification;
      ["geld", 25000] call INV_AddInvItem;
    } else {
      ["SUUC", "Your team has lost the match and received nothing!"] call Paintball_fnc_Notification;
    };
    player setVariable ["OL_PB_Team", "", true];
  };
};

if (count OL_PB_GearBefore < 1) exitWith { OL_PB_EndingPlayer = false };
if (OL_PB_Ejected) exitWith { OL_PB_EndingPlayer = false };

OL_PB_Ejected = true;

player setPosATL (getPosATL PB_Lobby);

if (isNil "OL_PB_GearBefore") exitWith { ["ERROR", "Could not end player due to OL_PB_GearBefore being nil."] call Paintball_fnc_Notification };

if ((typeOf player == "US_Soldier_EP1") || (typeOf player == "TK_INS_Soldier_EP1")) then {
  _h = [OL_PB_GearBefore select 0] spawn OL_fnc_Clothes;
  waitUntil {scriptDone _h};
};


player setVariable ["PB_Alive", false, true];

removeAllWeapons player;

{ player addMagazine _x } forEach (OL_PB_GearBefore select 3);

player addWeapon (OL_PB_GearBefore select 1);
player selectWeapon (OL_PB_GearBefore select 1);

player addWeapon (OL_PB_GearBefore select 2);

OL_PB_GearBefore = [];

OL_PB_PlayersReady = OL_PB_PlayersReady - 1;
publicVariable "OL_PB_PlayersReady";

OL_PB_EndingPlayer = false;

if (!OL_PB_MatchStarted) then {
  OL_PB_Ejected = false;
  OL_PB_EndingPlayer = false;
};
