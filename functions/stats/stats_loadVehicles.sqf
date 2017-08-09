if (count _this == 2) then {
  _vehicles = _this select 1;

  {
    _id       = call compile (_x select 0);
    _class    = _x select 1;
    _damage   = call compile (_x select 2);
    _fuel     = call compile (_x select 3);
    _upgrades = call compile (_x select 4);
    _trunk    = call compile (_x select 5);
    _gear     = call compile (_x select 6);

    _status   = ["NOMINAL", getPlayerUID player, PlayerName];

    OL_VehicleGarage = OL_VehicleGarage + [[_id, _class, _damage, _fuel, _upgrades, _trunk, _gear, _status]];
  } forEach _vehicles;
};
