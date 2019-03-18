if (_this) then {
  format["civ%1_mayor = 1;", rolenumber] call OL_network_Swag
} else {
  format["civ%1_mayor = 0;", rolenumber] call OL_network_Swag
};
