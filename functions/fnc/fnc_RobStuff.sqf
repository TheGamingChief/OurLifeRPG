_station			 		= _this select 0;
_stationScript 		= call compile format ["CP_RobScript_%1", _station];
_stationSettings 	= _stationScript select 0;

if (_stationSettings select 0 != "SETTINGS") exitWith { player groupChat "sorry, Foster broke this station..." };
_stationName			= _stationSettings select 1;
_stationCash			= _stationSettings select 2;
_stationAvail			= _stationSettings select 3;
_stationWarrant		= _stationSettings select 4;
_stationCancel 		= false;

if ((_stationWarrant == "Robbed Casino") && (("drill" call INV_GetItemAmount) == 0)) exitWith {player groupChat "You need a drill to rob the Casino Safe!";};
if ((playersNumber west < 2) && !debug) exitwith { player groupchat "There must be atleast 2 Police online to rob this!" };
if (!(call INV_isArmed)) 							  exitwith { player groupchat "Yo dumbass, you need a gun to rob this!"						 };

format['if (iscop) then { player sideChat "The silent alarm at %1 has gone off, go investigate!"; playsound "beep"; };', _stationName] call OL_network_Swag;
call compile format ["%1 = false", _stationAvail];

for "_i" from 1 to ((count _stationScript) - 1) do {
  _curScript = (_stationScript select _i);

  switch (_curScript select 0) do {
    case ("GROUPCHAT"): {
      player groupChat (_curScript select 1);
    };
    case ("TITLETEXT"): {
      1001 cutText [(_curScript select 1), "PLAIN DOWN"];
    };
    case ("PLAYSOUND"): {
        playSound (_curScript select 1);
    };
    case ("PLAYMOVE"): {
        player playMove (_curScript select 1);
    };
  };

  if ((vehicle player distance _station) >= 5) exitWith { _stationCancel = true };
  uiSleep (_curScript select 2);
};

if (_stationCancel) then {
  switch (_stationWarrant) do {
    case ("Robbed Bar"): {
      player groupChat "You are gone to far away from the Cashier and he has called the cops!.";
      format ['server globalChat "Someone left %1 mid robbery and the owner has called 911 and locked the register!";', _stationName] call OL_network_Swag;
    };
    case ("Robbed Casino"): {
      player groupChat "You have gone to far from the Safe and the owner has sound the alarm!.";
      format ['server globalChat "Someone left the Casino mid robbery and the owner has sound the alarm!";'] call OL_network_Swag;
    };
  };
} else {
  _cash = call compile _stationCash;

  ['geld', _cash] call INV_AddInvItem;
  if (_stationWarrant == "Robbed Dunkin Bronuts") then { ['donut', 12] call INV_AddInvItem };
  if (_stationWarrant == "Robbed Casino") then { ['drill', -1] call INV_AddInvItem };
  if (_stationWarrant == "Robbed Pharmacy") then { ['pharm', round random 12] call INV_AddInvItem };

  format ['server globalChat "Someone just robbed %1!";', _stationName] call OL_network_Swag;
  player sidechat format ["You stole $%1!", _cash];
};

call compile format['%1 = 0; publicVariable "%1"; %2 = true;', _stationCash, _stationAvail];
[player, _stationWarrant] call OL_player_WarrantAdd;
