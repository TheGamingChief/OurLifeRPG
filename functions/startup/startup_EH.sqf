player addEventHandler ["fired", {
  ["fired", (_this select 4), (_this select 1)] spawn OL_fnc_Stun;
  _this spawn OL_events_HandleSmokes;
}];
player addEventHandler ["handleDamage", { _this call compile preprocessfile "sethit.sqf"; }];

"serverStationUpdate" addPublicVariableEventHandler {
  {
    call compile format["%1 = %2;", _x select 0, _x select 1];
  } forEach (_this select 1);
};

"OL_ServerCloudPacket" addPublicVariableEventHandler {
  _this = _this select 1;
  if (_this == "VAR_NOT_FOUND") exitWith {};

  switch (_this select 0) do {
    case (format["%1_Warrants", getPlayerUID player]): {
        player setVariable ["PlayerWarrants", _this select 1, true];
        player groupChat "I ran it!";
    };
    default {
        call compile format["%1 = %2", _this select 0, _this select 1];
    };
  };
};
