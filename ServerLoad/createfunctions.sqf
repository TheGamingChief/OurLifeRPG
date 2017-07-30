INV_DialogPlayers = {
  private ["_c", "_Fid", "_Fname", "_Fingame", "_Findex", "_Flistlen", "_Feigenenum"];
  _Fid        = _this select 0;
  _Fname      = _this select 1;
  _Fingame    = _this select 2;
  _Findex     = 0;
  _Flistlen   = 0;
  _Feigenenum = -1;

  for [{_c=0}, {_c < (count INV_PLAYERSTRINGLIST)}, {_c=_c+1}] do {
    _Fspieler = INV_PLAYERSTRINGLIST select _c;

    if ( ((_Fingame) or (_Fspieler call OL_ISSE_UnitExists)) ) then {
      if (_Fname) then {
        _Findex = lbAdd [_Fid, format ["%1 - (%2)", _Fspieler, name (call compile _Fspieler)]];
      } else {
        _Findex = lbAdd [_Fid, _Fspieler];
      };

      lbSetData [_Fid, _Findex, format["%1", _c]];
      if (_Fspieler == INV_ROLESTRING) then {_Feigenenum = _Flistlen;};
      _Flistlen = _Flistlen + 1;
    };
  };

  [_Flistlen, _Feigenenum];
};

INV_CreateVehicle = {
  private ["_classname","_logic"];
  _classname = _this select 0;
  _logic     = _this select 1;
  _type1     = ["MH6J_EP1"];
  _type2     = ["Mi17_Civilian","bd5j_civil_3","bd5j_civil_2","bd5j","GazelleUN","GazelleD","Gazelle","Gazelle1","Gazelle3","adf_as350","ibr_as350_specops","ibr_as350_jungle","OH58g","UH1H_TK_GUE_EP1","MH60S","HH65C","ibr_as350_civ"];
  _haloHelis = ["An2_TK_EP1","An2_1_TK_CIV_EP1","MH6J_EP1","UH1H_TK_EP1","UH1H_TK_GUE_EP1","UH60M_MEV_EP1","CH_47F_EP1","C130J_US_EP1","AH6X_EP1","Mi17_CDF","Mi17_Ins","Mi17_Civilian","C130J"];

  hint format['Buying a %1 from %2', getText(configFile >> "cfgVehicles" >> _classname >> "displayName"), _logic];

  if (_classname in _type1 || _classname in _type2 || _classname == "HMMWV_DES_EP1" || _classname == "fire_atv" || _classname == "DD_FOR13Taurus_P_P") then {
    if (_classname == "DD_FOR13Taurus_P_P") then {
      call compile format['
      newvehicle = _classname createVehicle %4;
      newvehicle setPos %4;
      newvehicle setDir %5;
      newvehicle setVehicleInit "
      this setObjectTexture [0,""\DD_FOR_13Taurus\livery\taurus.paa""];
      this setVehicleVarName ""vehicle_%1_%2"";
      vehicle_%1_%2 = this;
      clearWeaponCargo this;
      clearMagazineCargo this;
      newvehicle lock true;
      ";
      processInitCommands;
      INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
      "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call OL_network_Swag;
      ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
      newvehicle setVariable ["OL_Owner",   player,               true];
      newvehicle setVariable ["OL_OwnerID", getPlayerUID player,  true];
    };
    if (_classname == "fire_atv") then {
      call compile format['
      newvehicle = "ATV_US_EP1" createVehicle %4;
      newvehicle setPos %4;
      newvehicle setDir %5;
      newvehicle setVehicleInit "
      this setObjectTexture [0,""\ol_textures\text\atv_co4.paa""];
      this setVehicleVarName ""vehicle_%1_%2"";
      vehicle_%1_%2 = this;
      clearWeaponCargo this;
      clearMagazineCargo this;
      newvehicle lock true;
      ";
      processInitCommands;
      INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
      "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call OL_network_Swag;
      ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
      {newvehicle removeWeapon _x} forEach weapons newvehicle;
      newvehicle addWeapon "SportCarHorn";
      newvehicle addWeapon "NewAirHorn";
      newvehicle addWeapon "Intersection";
      newvehicle setVariable ["OL_Owner",   player,               true];
      newvehicle setVariable ["OL_OwnerID", getPlayerUID player,  true];
    };
    if (_classname == "HMMWV_DES_EP1") then {
        call compile format['
        newvehicle = _classname createVehicle %4;
        newvehicle setPos %4;
        newvehicle setDir %5;
        newvehicle setVehicleInit "
        this setObjectTexture [0,""\ol_textures\misc\PMC_Hmmv.paa""];
        this setVehicleVarName ""vehicle_%1_%2"";
        vehicle_%1_%2 = this;
        clearWeaponCargo this;
        clearMagazineCargo this;
        newvehicle lock true;
        ";
         processInitCommands;
         INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
         newvehicle setVariable ["TF_RadioType", "tf_mr6000l", true];
         "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call OL_network_Swag;
         ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
         {newvehicle removeWeapon _x}forEach weapons newvehicle;
         newvehicle addWeapon "TruckHorn";
         newvehicle setVariable ["OL_Owner",   player,               true];
         newvehicle setVariable ["OL_OwnerID", getPlayerUID player,  true];
    };
    if (_classname in _type1) then {
      call compile format ['
      newvehicle = _classname createVehicle %4;
      newvehicle setpos %4;
      newvehicle setdir %5;
      newvehicle setVehicleInit "
      nul = [this] execVM ""addons\heliDoor\heliDoor_init.sqf"";
      this setVehicleVarName ""vehicle_%1_%2"";
      vehicle_%1_%2 = this;
      clearWeaponCargo this;
      clearMagazineCargo this;
      newvehicle lock true;
      ";
      processInitCommands;
      INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
      "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call OL_network_Swag;
      ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getdir _logic];
      newvehicle setVariable ["OL_Owner",   player,               true];
      newvehicle setVariable ["OL_OwnerID", getPlayerUID player,  true];
    };
    if (_classname in _type2) then {
      call compile format ['
      newvehicle = _classname createVehicle %4;
      newvehicle setpos %4;
      newvehicle setdir %5;
      newvehicle setVehicleInit "
      nul = [this, 1] execVM ""\norrn_dbo_fastrope\scripts\NORRN_fastRope_init.sqf"";
      this setVehicleVarName ""vehicle_%1_%2"";
      vehicle_%1_%2 = this;
      clearWeaponCargo this;
      clearMagazineCargo this;
      newvehicle lock true;
      ";
      processInitCommands;
      INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
      "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call OL_network_Swag;
      ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getdir _logic];
      newvehicle setVariable ["OL_Owner",   player,               true];
      newvehicle setVariable ["OL_OwnerID", getPlayerUID player,  true];
    };
  } else {
    call compile format ['
      newvehicle = _classname createVehicle %4;
      newvehicle setpos %4;
      newvehicle setdir %5;
      newvehicle setVehicleInit "
      this setVehicleVarName ""vehicle_%1_%2"";
      vehicle_%1_%2 = this;
      clearWeaponCargo this;
      clearMagazineCargo this;
      newvehicle lock true;
      ";
      processInitCommands;
      INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
      "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call OL_network_Swag;
    ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getdir _logic];
    newvehicle setVariable ["OL_Owner",   player,               true];
    newvehicle setVariable ["OL_OwnerID", getPlayerUID player,  true];
  };
  if (_classname == "tcg_wave_red") then {
    newvehicle addweapon "DSHKM";
    newvehicle addmagazine "150Rnd_127x107_DSHKM";
    newvehicle addmagazine "150Rnd_127x107_DSHKM";
    newvehicle addmagazine "150Rnd_127x107_DSHKM";
    newvehicle addmagazine "150Rnd_127x107_DSHKM";
    newvehicle addmagazine "150Rnd_127x107_DSHKM";
    newvehicle addmagazine "150Rnd_127x107_DSHKM";
  };
  if (_classname in _haloHelis) then {
    newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
  };
  if (_classname == "olrpg_swat_command") then {
    newvehicle setVehicleInit '
      this addweaponCargo  ["SWAT",1];
      this addmagazineCargo ["15Rnd_9x19_M9",8];
      this addmagazineCargo ["SmokeShell",4];
      this addmagazineCargo ["RAB_L111A1",4];
      this addweaponCargo ["M32_EP1",1];
      this addmagazineCargo ["6Rnd_Smoke_M203",4];
      this addweaponCargo ["RH_mk14ebrsp",1];
      this addmagazineCargo ["20Rnd_762x51_DMR",4];
    '; processInitCommands;
  };
  if (_classname == "olrpg_tahoe_swat_um") then {
    newvehicle setVehicleInit '
      this addweaponCargo  ["SWAT",1];
      this addmagazineCargo ["15Rnd_9x19_M9",8];
      this addmagazineCargo ["SmokeShell",4];
      this addmagazineCargo ["RAB_L111A1",4];
      this addweaponCargo ["M32_EP1",1];
      this addmagazineCargo ["6Rnd_Smoke_M203",4];
      this addweaponCargo ["RH_mk14ebrsp",1];
      this addmagazineCargo ["20Rnd_762x51_DMR",4];
    '; processInitCommands;
  };
  if (_classname == "olrpg_swat_bearcat") then {
    newvehicle setVehicleInit '
      this addweaponCargo  ["SWAT",1];
      this addmagazineCargo ["15Rnd_9x19_M9",8];
      this addmagazineCargo ["SmokeShell",4];
      this addmagazineCargo ["RAB_L111A1",4];
      this addweaponCargo ["M32_EP1",1];
      this addmagazineCargo ["6Rnd_Smoke_M203",4];
      this addweaponCargo [""RH_mk14ebrsp",",1];
      this addmagazineCargo ["20Rnd_762x51_DMR",4];
    ';processInitCommands;
  };
  if (_classname == "olrpg_swat_f350") then {
    newvehicle setVehicleInit '
      this addmagazineCargo ["SmokeShell",4];
      this addmagazineCargo ["RAB_L111A1",4];
      this addweaponCargo ["DMR",1];
      this addmagazineCargo ["20Rnd_762x51_DMR",4];
      this addweaponCargo ["BAF_LRR_scoped_w",1];
      this addmagazineCargo ["5Rnd_86x70_L115A1",4];
    ';processInitCommands;
  };
  if (_classname == "olrpg_swat_suburban_um") then {
    newvehicle setVehicleInit '
      this addweaponCargo  ["SWAT",1];
      this addmagazineCargo ["15Rnd_9x19_M9",8];
      this addmagazineCargo ["SmokeShell",4];
      this addmagazineCargo ["RAB_L111A1",4];
      this addweaponCargo ["M32_EP1",1];
      this addmagazineCargo ["6Rnd_Smoke_M203",4];
      this addweaponCargo ["RH_mk14ebrsp",1];
      this addmagazineCargo ["20Rnd_762x51_DMR",4];
    '; processInitCommands;
  };

  newvehicle;
};

INV_CreateWeapon = {
  private["_class", "_menge", "_crate"];
  _class = _this select 0;
  _menge = _this select 1;
  _crate = _this select 2;
  _crate setDamage 0;

  _crate setvehicleinit format["
  this addweaponCargo [""%1"",%2];
  ", _class, _menge];
  processInitCommands;
};

INV_CreateMag = {
  private["_class", "_menge", "_crate"];
  _class = _this select 0;
  _menge = _this select 1;
  _crate = _this select 2;
  _crate setDamage 0;

  _crate setvehicleinit format["
  this addmagazineCargo [""%1"",%2];
  ", _class, _menge];
  processInitCommands;
};

INV_CreateItem = {
  private["_class", "_menge", "_stor"];
  _class = _this select 0;
  _menge = _this select 1;
  _stor  = _this select 2;
  [_class, _menge, _stor] call INV_AddItemStorage;
};
