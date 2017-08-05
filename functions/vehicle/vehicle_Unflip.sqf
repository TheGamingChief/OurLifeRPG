_vcl = _this select 0;

if (!(_vcl in INV_VehicleArray)) exitWith { player groupChat "You need the keys to unflip a vehicle." };

for "_i" from 0 to 15 do {
  if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { format ['%1 switchMove "%2"', player, "AinvPknlMstpSlayWrflDnon_medic"] call OL_network_Swag };
  if (player distance _vcl > 10) exitWith { player groupChat "You went too far away from the vehicle." };

  if (_i >= 15) exitWith {
    _vcl setVectorUp [0.1, 0.1, 1];
    player groupChat "Your vehicle has been unflipped.";
  };

  uiSleep 1;
};
