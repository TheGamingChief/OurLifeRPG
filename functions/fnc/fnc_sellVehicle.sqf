private["_vcl","_pay"];
chopavailable = false;
_vcl = (nearestobjects [getpos player, ["LandVehicle"], 5] select 0);
_pay = (((typeof _vcl) call INV_getitemBuyCost) * 0.90);

if (isNil "_vcl") exitwith {player groupchat "Not near any vehicles";chopavailable = true;};
if (vehicle player != player) exitWith {player groupchat "You must be outside the vehicle!";chopavailable = true;};

if (player distance _vcl <= 10) then {
  _vcl setFuel 0;
  player groupChat "Chopping Vehicle and Disposing of Evidence!";
  uiSleep 5;
  player groupChat "Inspecting Car Parts Value! Please Wait";
  uiSleep 10;
  player groupChat "Calling Shady People About Dubs! Please Wait";
  uiSleep 10;
  player groupChat "Finalizing Price With Bossman! Please Wait";
  uiSleep 10;
  player groupChat "Vehicle has been sold!";
  deleteVehicle _vcl;
};

player groupChat format["Heres your money! $%1",_pay];
["geld",_pay] call INV_AddInvItem;
[player, "Chopped Vehicle"] call OL_player_WarrantAdd;
chopavailable = true;
