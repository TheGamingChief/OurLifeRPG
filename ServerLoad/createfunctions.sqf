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
        _Findex = lbAdd [_Fid, format ["%1 - (%2)", _Fspieler, (call compile _Fspieler) getVariable "RealName"]];
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
  _type1     = ["HMMWV_DES_EP1", "fire_atv"];
  _haloHelis = ["An2_TK_EP1","An2_1_TK_CIV_EP1","MH6J_EP1","UH1H_TK_EP1","UH1H_TK_GUE_EP1","UH60M_MEV_EP1","CH_47F_EP1","C130J_US_EP1","AH6X_EP1","Mi17_CDF","Mi17_Ins","Mi17_Civilian","C130J"];
  _swatVehicles = ["olrpg_swat_command", "olrpg_tahoe_swat_um", "olrpg_swat_bearcat", "olrpg_swat_suburban_um"];
  _swatMarksman = ["olrpg_swat_f350"];

  hint format['Buying a %1 from %2', getText(configFile >> "cfgVehicles" >> _classname >> "displayName"), _logic];

  if (_classname in _type1) then {
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
  if (_classname in _haloHelis) then {
    newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
  };
  if (_classname in _swatVehicles) then {
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
  if (_classname in _swatMarksman) then {
    newvehicle setVehicleInit '
      this addmagazineCargo ["SmokeShell",4];
      this addmagazineCargo ["RAB_L111A1",4];
      this addweaponCargo ["DMR",1];
      this addmagazineCargo ["20Rnd_762x51_DMR",4];
      this addweaponCargo ["BAF_LRR_scoped_w",1];
      this addmagazineCargo ["5Rnd_86x70_L115A1",4];
    ';processInitCommands;
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
