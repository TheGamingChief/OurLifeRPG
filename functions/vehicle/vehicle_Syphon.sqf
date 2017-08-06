if ((_this select 0) == "use") then {
  _vcl = (nearestObjects [player,["Car", "Air", "Truck", "Motorcycle"], 6]) select 0;

  if (isNil "_vcl") exitWith { player groupChat "There is no vehicle near you!" };
  if ((fuel _vcl) < 0.1) exitWith { player groupChat "There is not enough fuel in this car to syphon!" };
  if (_vcl getVariable ["OL_Syphon", false]) exitWith { player groupChat "Someone else is syphoning the fuel!" };

  if ((!isNil "_vcl") && ((_this select 2) > 0)) then {
    _vcl setVariable ["OL_Syphon", true, true];
    [player, "AinvPknlMstpSlayWrflDnon_medic", 1, true] call OL_fnc_Animate;
    player groupchat "Syphoning fuel...";
    format ["%1 setFuel 0", _vcl] call OL_network_Swag;
    uiSleep 6;
    waitUntil {animationState player != "AinvPknlMstpSlayWrflDnon_medic"};
    player groupChat "You emptied the fuel";
    _vcl setVariable ["OL_Syphon", false, true];
    ["kanister", 1] call INV_AddInvItem;
  };
};
