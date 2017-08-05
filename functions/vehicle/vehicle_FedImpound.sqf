_veh = _this select 0;

format['
  hint format[localize "STRS_inventar_impound_gesehen", %1, %3];
  server globalChat "%2 Has Federally Impounded a Vehicle. Vehicle VIN #: %3";
', player, name player, _veh] call OL_network_Swag;

deleteVehicle _veh;
