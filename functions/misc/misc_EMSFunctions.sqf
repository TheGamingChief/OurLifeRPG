switch (_this select 0) do
{
  case "Elevator1": {
    titleText ["You are taking the Elevator to the Second Floor...","BLACK"];
    uiSleep 5;
    playSound "bell";
    player setPos position emselispawn1;
    titleText["","PLAIN"];
  };
  case "Elevator2": {
    titleText ["You are taking the Elevator to the First Floor...","BLACK"];
    uiSleep 5;
    playSound "bell";
    player setPos position emselispawn2;
    titleText["","PLAIN"];
  };
  case "SERVICE": {
    _vcl = (nearestobjects [getpos player, ["Air"], 10] select 0);
    if (isNil "_vcl") exitwith {player groupChat "Too far from your Helicopter!"};
    if (vehicle player != player) exitWith {player groupchat "You must be outside the Helicopter!"};
    player playMove "AinvPknlMstpSlayWrflDnon_medic";
    player groupchat "Repairing...";
    uiSleep 3;
    _vcl setDamage 0;
    player groupChat "Fueling...";
    uiSleep 3;
    _vcl setFuel 1;
    player groupChat "Service's Complete!";
  };
  case "CLEAR": {
    _vcl = (nearestobjects [getpos player, ["Air"], 5] select 0);
    if (isNil "_vcl") exitwith {player groupchat "Too far from your Helicopter!"};
    if (vehicle player != player) exitWith {player groupchat "You must be outside the Helicopter!"};
    player groupChat "Clearing the Helipad...";
    uiSleep 5;
    deleteVehicle _vcl;
    player groupChat "Helipad Clear!";
  };
};
