_CallerInfo = player getVariable ["OL_CallerInfo", []];

if (str (_CallerInfo) == "[]") exitWith {};

switch (_this select 0) do {
  case ("Answer Call"): {
    _channel     = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
    _frequency   = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwFrequency;
    _PlayerID    = _CallerInfo select 0;
    _PhoneNumber = _CallerInfo select 1;

    format ['if (getPlayerUID player in %1) then {
              [(call TFAR_fnc_activeSwRadio), 8] call TFAR_fnc_setSwChannel;
              [(call TFAR_fnc_activeSwRadio), %2] call TFAR_fnc_setSwFrequency;
              player sideChat "Connected Call!";
              player setVariable [""OL_inCall"", true, true];
              player setVariable [""OL_TFAR_OldInfo"", [%3, %4], true];
            }',
    [(_PlayerID), (getPlayerUID player)], _PhoneNumber, _channel, _frequency] call OL_network_Swag;
  };
  case ("Reject Call"): {
    format ["if (getPlayerUID player == %1) then { [%2] call OL_phone_RejectCall };", str (_PlayerID), player] call OL_network_Swag;
    player groupChat "You rejected the call!";
  };
};
