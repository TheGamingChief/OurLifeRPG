/*if (count _this != 2) exitWith { server globalChat "VEHICLE LOADING ERROR"; };
_vehicles = _this select 1;

{
  _id       = call compile (_x select 0);
  _object   = dummyobj;
  _class    = _x select 4;
  _damage   = _x select 5;
  _fuel     = _x select 6;
  _upgrades = _x select 7;
  _trunk    = _x select 8;
  _gear     = _x select 9;
  _status   = "STORED";

  OL_VehicleArray = OL_VehicleArray + [_id, _object, _class, _damage, _fuel, _upgrades, _trunk, _gear];
} forEach _vehicles;




grab_saved = {
  _type = _this select 0;
  _tmpVehicles = [];

  {
    if ((_x select 2) isKindOf _type) then {
      _tmpVehicles = _tmpVehicles + [_x];
    };
  } forEach OL_VehicleArray;
};

pullout = {

}



savannah = {

  forEach

};





["4","76561198291985397","nig","CIV","Lancer_Evo_X","0.1","1","3","[["eyeglasses",70]]","[["30Rnd Clip", 1]]","pink.paa",""]
["4","76561198291985397","nig","CIV","Lancer_Evo_X","0.1","1","3","[["eyeglasses",70]]","[["30Rnd Clip", 1]]","pink.paa",""]
["4","76561198291985397","nig","CIV","Lancer_Evo_X","0.1","1","3","[["eyeglasses",70]]","[["30Rnd Clip", 1]]","pink.paa",""]
["4","76561198291985397","nig","CIV","Lancer_Evo_X","0.1","1","3","[["eyeglasses",70]]","[["30Rnd Clip", 1]]","pink.paa",""]
["4","76561198291985397","nig","CIV","Lancer_Evo_X","0.1","1","3","[["eyeglasses",70]]","[["30Rnd Clip", 1]]","pink.paa",""]
["4","76561198291985397","nig","CIV","Lancer_Evo_X","0.1","1","3","[["eyeglasses",70]]","[["30Rnd Clip", 1]]","pink.paa",""]
 ["4","76561198291985397","nig","CIV","Lancer_Evo_X","0.1","1","3","[["eyeglasses",70]]","[["30Rnd Clip", 1]]","pink.paa",""]
*/
