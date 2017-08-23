if ((_this select 0) == "use") then {
  _vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 6] select 0);

  if (isNil "_vcl") exitWith { player groupChat "You are not near any vehicles!" };
  if (!(player == vehicle player)) exitWith { player groupChat "You must be outside of the vehicle" };

  player groupchat "REFUELING";
  uiSleep 15;
  format ["%1 setFuel 1", _vcl] call OL_network_Swag;
  [(_this select 1), -1] call INV_AddInvItem;
  player groupchat "REFUELED";
};
