player addEventHandler ["fired", {
  ["fired", (_this select 4), (_this select 1)] spawn OL_fnc_Stun;
  _this spawn OL_events_HandleSmokes;
}];
player addEventHandler ["handleDamage", { _this call OL_fnc_setHit }];

"serverStationUpdate" addPublicVariableEventHandler {
  {
    call compile format["%1 = %2;", _x select 0, _x select 1];
  } forEach (_this select 1);
};

"OL_ServerCloudPacket" addPublicVariableEventHandler {
  _this = _this select 1;

  if (typeName _this == "ARRAY") then {
    switch (_this select 0) do {
      case (format["%1_Warrants", getPlayerUID player]): {
        player setVariable ["PlayerWarrants", _this select 1, true];
      };
      case (format["%1_Shares", getPlayerUID player]): {
        OL_PlayerShares = _this select 1;

        //if (debug) then {
          _str = "Stocks Owned:\n\n";
          {
            _str = _str + (str(_x) + "\n");
          } forEach OL_PlayerShares;
          hint _str;
        //};
      };
      default {
        call compile format["%1 = %2", _this select 0, _this select 1];
      };
    };
  };
};
