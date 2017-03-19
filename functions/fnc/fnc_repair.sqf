private["_vcl"];
_vcl = (nearestObjects[getPos player,["Air"],10] select 0);
if (isNil "_vcl") exitWith {player groupChat "No helicopters in range."};
if (vehicle player != player) exitWith {player groupChat "You can only do this action while on foot."};

player playMove "AinvPknlMstpSlayWrflDnon_medic";

player groupChat "Repairing, please wait...";
uiSleep 3;
_vcl setDamage 0;

player groupChat "Refueling, please wait...";
_vcl setFuel 1;

player groupChat "Service's complete.";
