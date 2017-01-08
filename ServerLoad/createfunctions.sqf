INV_CreateGunboxLocal = {};
 
INV_DialogPlayers =
 
{
 
private ["_c", "_Fid", "_Fname", "_Fingame", "_Findex", "_Flistlen", "_Feigenenum"];
_Fid        = _this select 0;
_Fname      = _this select 1;
_Fingame    = _this select 2;
_Findex     = 0;
_Flistlen   = 0;
_Feigenenum = -1;
 
for [{_c=0}, {_c < (count INV_PLAYERSTRINGLIST)}, {_c=_c+1}] do
 
        {
 
        _Fspieler = INV_PLAYERSTRINGLIST select _c;
 
        if ( ((_Fingame) or (_Fspieler call ISSE_UnitExists)) ) then
 
                {
 
                if (_Fname) then
 
                        {
 
                        _Findex = lbAdd [_Fid, format ["%1 - (%2)", _Fspieler, name (call compile _Fspieler)]];
 
                        }
                        else
                        {
 
                        _Findex = lbAdd [_Fid, _Fspieler];
 
                        };
 
                        lbSetData [_Fid, _Findex, format["%1", _c]];
                        if (_Fspieler == INV_ROLESTRING) then {_Feigenenum = _Flistlen;};
                        _Flistlen = _Flistlen + 1;
 
                };
 
        };
 
[_Flistlen, _Feigenenum]
 
};
 
INV_CreateVehicle =
 
{
 
private ["_classname","_position","_dir"];
_classname = _this select 0;
_logic     = _this select 1;
hint format['Buying a %1 from %2', _this select 0, _this select 1];
_type = typeof vehicle player;
_type1 = ["MH6J_EP1"];
_type2 = ["Mi17_Civilian","bd5j_civil_3","bd5j_civil_2","bd5j","GazelleUN","GazelleD","Gazelle","Gazelle1","Gazelle3","adf_as350","ibr_as350_specops","ibr_as350_jungle","OH58g","UH1H_TK_GUE_EP1","MH60S","HH65C","ibr_as350_civ"];
_crowns = ["ilpd_slick_b40_pb","ilpd_beat_f101","ilpd_slick_b40_PBG"];
_crownsherif = ["ilpd_beat_f101_sh"];
_sheriff220 = ["ilpd_slick_f220_PBG","pd_cvpi"];
_sherifsub = ["suburban_pd_sheriff"];
_tahoe = ["tahoe_pd"];
_tahoesherif = ["tahoe_sh"];
_k9 = ["suburban_pd_k9"];
_k9sub = ["suburban_pd_stealth"];
_k9traffic = ["ilpd_Traffic_black","ilpd_traffic_t101"];
_traffic = [""];
_fireDeptTahoe=["firetahoe_sh"];
_fireDeptCrownVics = ["fireilpd_beat_f101"];
_fireDeptATV = ["fire_atv"];
_sirenSys = [];/*["tcg_taurus_pb_2","tcg_taurus_uc","tcg_taurus","tcg_taurus_wopb","tcg_taurus_shpb","tcg_taurus_sh","il_charger_pd","ilpd_charger_black","ilpd_charger_white","jailbus","il_bearcat","patrol","patrol_pb","patrol_np","patrol_slick","sheriff","whiteuc","blackuc","whited","greyd","whited","blackd","tcg_suburban_uc_black","tcg_suburban_uc_grey","tcg_suburban_uc_white","ilpd_beat_f101","ilpd_beat_f101_sh","ilpd_scu_black","ilpd_scu_white","ilpd_unmarked_scu","ilpd_unmarked_sandstone","ilpd_unmarked_maroon","ilpd_unmarked_darkblue","ilpd_unmarked_black","ilpd_unmarked_grey","ilpd_unmarked_white","ilpd_slick_b40_npb","ilpd_slick_f220_npb","ilpd_slick_b40_PBG","ilpd_slick_f220_PBG","ilpd_Traffic_black","ilpd_Traffic_white","tcg_suburban_patrol","tcg_suburban_sheriff","suburban_pd_k9","suburban_pd","suburban_pd_sheriff","suburban_pd_stealth","suburban_pd_black","ilpd_scu_darkblue","ilpd_scu_grey","ilpd_scu_maroon","ilpd_scu_sandstone","ilpd_Traffic_sandstone","ilpd_Traffic_maroon","ilpd_Traffic_grey","ilpd_Traffic_darkblue","il_fordcv_taxi","tahoe_pd","tahoe_sh","tahoe_uc_black","tahoe_uc_grey","tahoe_uc_1_grey","tahoe_uc_1_blue","tahoe_uc_1_green","ilpd_slick_b40_pb","ilpd_traffic_t101","pd_cvpi_hub","pd_cvpi","tahoe_uc_maroon","tahoe_uc_white","tahoe_uc_1_maroon","tahoe_uc_1_white","tahoe_uc_1_black","ilf350swat","il_f350sheriff","m5_pd_traffic"];                       */
 
        if ((_classname in _type1) or (_classname in _type2) or (_classname in _crowns) or  (_classname in _sheriff220) or (_classname in _sherifsub) or (_classname in _crownsherif) or (_classname in _tahoesherif) or (_classname in _tahoe) or (_classname in _k9) or (_classname in _k9sub) or (_classname in _k9traffic) or (_classname in _traffic) or (_classname in _fireDeptCrownVics) or (_classname in _fireDeptTahoe)  or (_classname in _fireDeptATV) or _classname == "cpl_ilpd_beat_f101" or _classname == "fto_ilpd_beat_f101" or _classname == "theJammySmith" or _classname == "chief_tahoe_pd" or _classname == "tahoe_sheriff" or _classname == "tahoe_sheriff_DNR" or _classname == "k9_sheriff" or _classname == "dd_ilpd_beat_f101" or _classname == "olrpg_cortahoe")  then
        {   
		        if(_classname in _fireDeptATV) then {
 
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
                 "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                 ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                 {newvehicle removeWeapon _x} forEach weapons newvehicle;
                 newvehicle addWeapon "SportCarHorn";
                 newvehicle addWeapon "NewAirHorn";
                 newvehicle addWeapon "Intersection";
				 newvehicle setVariable ["vcl_owner", getPlayerUID player, true];                
                };
		
		
                if(_classname in _fireDeptCrownVics) then {
 
                call compile format['
                newvehicle = "ilpd_beat_f101" createVehicle %4;
                newvehicle setPos %4;
                newvehicle setDir %5;
                newvehicle setVehicleInit "
                this setObjectTexture [0,""scripts\TheGamingChief\Misc\EMScv.paa""];this setObjectTexture [44,""scripts\TheGamingChief\Misc\EMScv.paa""];this setObjectTexture [45,""scripts\TheGamingChief\Misc\EMScv.paa""];this setObjectTexture [46,""scripts\TheGamingChief\Misc\EMScv.paa""];this setObjectTexture [47,""scripts\TheGamingChief\Misc\EMScv.paa""];this setObjectTexture [48,""scripts\TheGamingChief\Misc\EMScv.paa""];
                this setVehicleVarName ""vehicle_%1_%2"";
                vehicle_%1_%2 = this;
                clearWeaponCargo this;
                clearMagazineCargo this;
                newvehicle lock true;
                ";
                 processInitCommands;
                 INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                 "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                 ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                 {newvehicle removeWeapon _x} forEach weapons newvehicle;
                 newvehicle addWeapon "SportCarHorn";
                 newvehicle addWeapon "NewAirHorn";
                 newvehicle addWeapon "Intersection";
                 newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                 
                };
                if(_classname == "dd_ilpd_beat_f101") then {
 
                call compile format['
                newvehicle = "ilpd_beat_f101" createVehicle %4;
                newvehicle setPos %4;
                newvehicle setDir %5;
                newvehicle setVehicleInit "
                this setObjectTexture [0,""ol_textures\deaddem2\images\nzpnigga.paa""];this setObjectTexture [44,""ol_textures\deaddem2\images\nzpnigga.paa""];this setObjectTexture [45,""ol_textures\deaddem2\images\nzpnigga.paa""];this setObjectTexture [46,""ol_textures\deaddem2\images\nzpnigga.paa""];this setObjectTexture [47,""ol_textures\deaddem2\images\nzpnigga.paa""];this setObjectTexture [48,""ol_textures\deaddem2\images\nzpnigga.paa""];
                this setVehicleVarName ""vehicle_%1_%2"";
                vehicle_%1_%2 = this;
                clearWeaponCargo this;
                clearMagazineCargo this;
                newvehicle lock true;
                ";
                 processInitCommands;
                 INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                 "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                 ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                 {newvehicle removeWeapon _x} forEach weapons newvehicle;
                 newvehicle addWeapon "SportCarHorn";
                 newvehicle addWeapon "howler";
                 newvehicle addWeapon "FederalTakedown";
                 newvehicle addWeapon "winddown";
                 newvehicle setVariable ["vcl_owner", getPlayerUID player, true];

                 
                };
                
                if(_classname == "cpl_ilpd_beat_f101") then {
                    call compile format['
                    newvehicle = "ilpd_slick_b40_PBG" createVehicle %4;
                    newvehicle setPos %4;
                    newvehicle setDir %5;
                    newvehicle setVehicleInit "
                    this setObjectTexture [0,""ol_textures\deaddem2\images\cvpi_cpl.paa""];this setObjectTexture [44,""ol_textures\deaddem2\images\cvpi_cpl.paa""];this setObjectTexture [45,""ol_textures\deaddem2\images\cvpi_cpl.paa""];this setObjectTexture [46,""ol_textures\deaddem2\images\cvpi_cpl.paa""];this setObjectTexture [47,""ol_textures\deaddem2\images\cvpi_cpl.paa""];this setObjectTexture [48,""ol_textures\deaddem2\images\cvpi_cpl.paa""];
                    this setVehicleVarName ""vehicle_%1_%2"";
                    vehicle_%1_%2 = this;
                    clearWeaponCargo this;
                    clearMagazineCargo this;
                    newvehicle lock true;
                    ";
                     processInitCommands;
                     INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                     "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                     ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                     newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
				
				if(_classname == "fto_ilpd_beat_f101") then {
                    call compile format['
                    newvehicle = "ilpd_slick_b40_pb" createVehicle %4;
                    newvehicle setPos %4;
                    newvehicle setDir %5;
                    newvehicle setVehicleInit "
                    this setObjectTexture [0,""scripts\foster\f101_fto.paa""];this setObjectTexture [44,""scripts\foster\f101_fto.paa""];this setObjectTexture [45,""scripts\foster\f101_fto.paa""];this setObjectTexture [46,""scripts\foster\f101_fto.paa""];this setObjectTexture [47,""scripts\foster\f101_fto.paa""];this setObjectTexture [48,""scripts\foster\f101_fto.paa""];
                    this setVehicleVarName ""vehicle_%1_%2"";
                    vehicle_%1_%2 = this;
                    clearWeaponCargo this;
                    clearMagazineCargo this;
                    newvehicle lock true;
                    ";
                     processInitCommands;
                     INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                     "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                     ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                     newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
	
                if(_classname in _fireDeptTahoe) then {
                    call compile format['
                    newvehicle = "tahoe_sh" createVehicle %4;
                    newvehicle setPos %4;
                    newvehicle setDir %5;
                    newvehicle setVehicleInit "
                    this setObjectTexture [0,""scripts\TheGamingChief\Misc\EMS_firedept_tahoe.paa""];this setObjectTexture [44,""scripts\TheGamingChief\Misc\EMS_firedept_tahoe.paa""];this setObjectTexture [45,""scripts\TheGamingChief\Misc\EMS_firedept_tahoe.paa""];this setObjectTexture [46,""scripts\TheGamingChief\Misc\EMS_firedept_tahoe.paa""];this setObjectTexture [47,""scripts\TheGamingChief\Misc\EMS_firedept_tahoe.paa""];this setObjectTexture [48,""scripts\TheGamingChief\Misc\EMS_firedept_tahoe.paa""];
                    this setVehicleVarName ""vehicle_%1_%2"";
                    vehicle_%1_%2 = this;
                    clearWeaponCargo this;
                    clearMagazineCargo this;
                    newvehicle lock true;
                    ";
                     processInitCommands;
                     INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                     "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                     ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                     {newvehicle removeWeapon _x} forEach weapons newvehicle;
                     newvehicle addWeapon "SportCarHorn";
                     newvehicle addWeapon "NewAirHorn";
                     newvehicle addWeapon "Intersection";
                     newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
				
                if(_classname == "chief_tahoe_pd") then {
                    call compile format['
                    newvehicle = "tahoe_pd" createVehicle %4;
                    newvehicle setPos %4;
                    newvehicle setDir %5;
                    newvehicle setVehicleInit "
                    this setObjectTexture [0,""ol_textures\deaddem2\images\tahoe_chief.paa""];this setObjectTexture [44,""ol_textures\deaddem2\images\tahoe_chief.paa""];this setObjectTexture [45,""ol_textures\deaddem2\images\tahoe_chief.paa""];this setObjectTexture [46,""ol_textures\deaddem2\images\tahoe_chief.paa""];this setObjectTexture [47,""ol_textures\deaddem2\images\tahoe_chief.paa""];this setObjectTexture [48,""ol_textures\deaddem2\images\tahoe_chief.paa""];
                    this setVehicleVarName ""vehicle_%1_%2"";
                    vehicle_%1_%2 = this;
                    clearWeaponCargo this;
                    clearMagazineCargo this;
                    newvehicle lock true;
                    ";
                     processInitCommands;
                     INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                     "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                     ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                     {newvehicle removeWeapon _x} forEach weapons newvehicle;
                    newvehicle addWeapon "NewAirHorn";
                     newvehicle addWeapon "howler";
                     newvehicle addWeapon "FederalTakedown";
                     newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
				
        		if(_classname == "olrpg_cortahoe")then
        		{
                    call compile format['
                    newvehicle = "olrpg_cortahoe" createVehicle %4;
                    newvehicle setPos %4;
                    newvehicle setDir %5;
                    newvehicle setVehicleInit "
                    this setObjectTexture [0,""\ol_textures\text\corTahoe.paa""];this setObjectTexture [44,""\ol_textures\text\corTahoe.paa""];this setObjectTexture [45,""\ol_textures\text\corTahoe.paa""];this setObjectTexture [46,""\ol_textures\text\corTahoe.paa""];this setObjectTexture [47,""\ol_textures\text\corTahoe.paa""];this setObjectTexture [48,""\ol_textures\text\corTahoe.paa""];
                    this setVehicleVarName ""vehicle_%1_%2"";
                    vehicle_%1_%2 = this;
                    clearWeaponCargo this;
                    clearMagazineCargo this;
                    newvehicle lock true;
                    ";
                     processInitCommands;
                     INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                     "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                     ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                     newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
        		};
				
				if(_classname == "tahoe_sheriff") then {
                    call compile format['
                    newvehicle = "tahoe_sh" createVehicle %4;
                    newvehicle setPos %4;
                    newvehicle setDir %5;
                    newvehicle setVehicleInit "
                    this setObjectTexture [0,""scripts\foster\tahoe_sheriff.paa""];this setObjectTexture [44,""scripts\foster\tahoe_sheriff.paa""];this setObjectTexture [45,""scripts\foster\tahoe_sheriff.paa""];this setObjectTexture [46,""scripts\foster\tahoe_sheriff.paa""];this setObjectTexture [47,""scripts\foster\tahoe_sheriff.paa""];this setObjectTexture [48,""scripts\foster\tahoe_sheriff.paa""];
                    this setVehicleVarName ""vehicle_%1_%2"";
                    vehicle_%1_%2 = this;
                    clearWeaponCargo this;
                    clearMagazineCargo this;
                    newvehicle lock true;
                    ";
                     processInitCommands;
                     INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                     "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                     ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                     {newvehicle removeWeapon _x} forEach weapons newvehicle;
                    newvehicle addWeapon "NewAirHorn";
                     newvehicle addWeapon "howler";
                     newvehicle addWeapon "FederalTakedown";
                     newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
				
					if(_classname == "tahoe_sheriff_DNR") then {
                    call compile format['
                    newvehicle = "tahoe_sh" createVehicle %4;
                    newvehicle setPos %4;
                    newvehicle setDir %5;
                    newvehicle setVehicleInit "
                    this setObjectTexture [0,""scripts\foster\tahoe_sheriff_DNR.paa""];this setObjectTexture [44,""scripts\foster\tahoe_sheriff_DNR.paa""];this setObjectTexture [45,""scripts\foster\tahoe_sheriff_DNR.paa""];this setObjectTexture [46,""scripts\foster\tahoe_sheriff_DNR.paa""];this setObjectTexture [47,""scripts\foster\tahoe_sheriff_DNR.paa""];this setObjectTexture [48,""scripts\foster\tahoe_sheriff_DNR.paa""];
                    this setVehicleVarName ""vehicle_%1_%2"";
                    vehicle_%1_%2 = this;
                    clearWeaponCargo this;
                    clearMagazineCargo this;
                    newvehicle lock true;
                    ";
                     processInitCommands;
                     INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                     "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                     ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                     {newvehicle removeWeapon _x} forEach weapons newvehicle;
                    newvehicle addWeapon "NewAirHorn";
                     newvehicle addWeapon "howler";
                     newvehicle addWeapon "FederalTakedown";
                     newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
				
				if(_classname == "k9_sheriff") then {
                    call compile format['
                    newvehicle = "suburban_pd_k9" createVehicle %4;
                    newvehicle setPos %4;
                    newvehicle setDir %5;
                    newvehicle setVehicleInit "
                    this setObjectTexture [0, ""scripts\foster\k9_sheriff.paa""];this setObjectTexture [45, ""scripts\foster\k9_sheriff.paa""];this setObjectTexture [46, ""scripts\foster\k9_sheriff.paa""];this setObjectTexture [47, ""scripts\foster\k9_sheriff.paa""];this setObjectTexture [48, ""scripts\foster\k9_sheriff.paa""];this setObjectTexture [49, ""scripts\foster\k9_sheriff.paa""];this setObjectTexture [50, ""scripts\foster\k9_sheriff.paa""];              
                    this setVehicleVarName ""vehicle_%1_%2"";
                    vehicle_%1_%2 = this;
                    clearWeaponCargo this;
                    clearMagazineCargo this;
                    newvehicle lock true;
                    ";
                     processInitCommands;
                     INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                     "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                     ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                     {newvehicle removeWeapon _x} forEach weapons newvehicle;
                    newvehicle addWeapon "NewAirHorn";
                     newvehicle addWeapon "howler";
                     newvehicle addWeapon "FederalTakedown";
                     newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
				
                if(_classname == "theJammySmith") then {
                    call compile format['
                    newvehicle = "tahoe_uc_pink" createVehicle %4;
                    newvehicle setPos %4;
                    newvehicle setDir %5;
                    newvehicle setVehicleInit "
                    this setObjectTexture [0,""ol_textures\Deaddem2\images\tahoe.paa""];
                    this setVehicleVarName ""vehicle_%1_%2"";
                    vehicle_%1_%2 = this;
                    clearWeaponCargo this;
                    clearMagazineCargo this;
                    newvehicle lock true;
                    ";
                     processInitCommands;
                     INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                     "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                     ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                     newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
                if (_classname == "HMMWV_DES_EP1") then {
                    call compile format['
                    newvehicle = "HMMWV_DES_EP1" createVehicle %4;
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
                     "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                     ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                     newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
                if (_classname in _type1) then
                {
               
                call compile format ['
 
                newvehicle = _classname createVehicle %4;
                newvehicle setpos %4;
                newvehicle setdir %5;
                newvehicle setVehicleInit "
                nul = [this] execVM ""heliDoor\heliDoor_init.sqf"";
                this setVehicleVarName ""vehicle_%1_%2"";
                vehicle_%1_%2 = this;
                clearWeaponCargo this;
                clearMagazineCargo this;
                newvehicle lock true;
                ";
                processInitCommands;
                INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getdir _logic];
                newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
 
                };
                if (_classname in _type2) then
                {
               
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
                "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getdir _logic];
                newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
                if(_classname in _crowns) then {
                call compile format['
                newvehicle = _classname createVehicle %4;
                newvehicle setPos %4;
                newvehicle setDir %5;
                newvehicle setVehicleInit "
                this setObjectTexture [0,""ol_textures\text\f101.paa""];this setObjectTexture [44,""ol_textures\text\f101.paa""];this setObjectTexture [45,""ol_textures\text\f101.paa""];this setObjectTexture [46,""ol_textures\text\f101.paa""];this setObjectTexture [47,""ol_textures\text\f101.paa""];this setObjectTexture [48,""ol_textures\text\f101.paa""];
                this setVehicleVarName ""vehicle_%1_%2"";
                vehicle_%1_%2 = this;
                clearWeaponCargo this;
                clearMagazineCargo this;
                newvehicle lock true;
                ";
                 processInitCommands;
                 INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                 "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                 ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                 newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
                if(_classname in _crownsherif) then {
                call compile format['
                newvehicle = _classname createVehicle %4;
                newvehicle setPos %4;
                newvehicle setDir %5;
                newvehicle setVehicleInit "
                this setObjectTexture [0,""ol_textures\text\f101_sheriff.paa""];this setObjectTexture [44,""ol_textures\text\f101_sheriff.paa""];this setObjectTexture [45,""ol_textures\text\f101_sheriff.paa""];this setObjectTexture [46,""ol_textures\text\f101_sheriff.paa""];this setObjectTexture [47,""ol_textures\text\f101_sheriff.paa""];this setObjectTexture [48,""ol_textures\text\f101_sheriff.paa""];
                this setVehicleVarName ""vehicle_%1_%2"";
                vehicle_%1_%2 = this;
                clearWeaponCargo this;
                clearMagazineCargo this;
                newvehicle lock true;
                ";
                 processInitCommands;
                 INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                 "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                 ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                 newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
                if(_classname in _tahoesherif) then {
                call compile format['
                newvehicle = _classname createVehicle %4;
                newvehicle setPos %4;
                newvehicle setDir %5;
                newvehicle setVehicleInit "
                this setObjectTexture [0,""ol_textures\text\tahoe_sherif.paa""];this setObjectTexture [44,""ol_textures\text\tahoe_sherif.paa""];this setObjectTexture [45,""ol_textures\text\tahoe_sherif.paa""];this setObjectTexture [46,""ol_textures\text\tahoe_sherif.paa""];this setObjectTexture [47,""ol_textures\text\tahoe_sherif.paa""];this setObjectTexture [48,""ol_textures\text\tahoe_sherif.paa""];
                this setVehicleVarName ""vehicle_%1_%2"";
                vehicle_%1_%2 = this;
                clearWeaponCargo this;
                clearMagazineCargo this;
                newvehicle lock true;
                ";
                 processInitCommands;
                 INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                 "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                 ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                 newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
                if(_classname in _sheriff220) then {
                call compile format['
                newvehicle = _classname createVehicle %4;
                newvehicle setPos %4;
                newvehicle setDir %5;
                newvehicle setVehicleInit "
                this setObjectTexture [0,""ol_textures\text\f101_sheriff.paa""];this setObjectTexture [44,""ol_textures\text\f101_sheriff.paa""];this setObjectTexture [45,""ol_textures\text\f101_sheriff.paa""];this setObjectTexture [46,""ol_textures\text\f101_sheriff.paa""];this setObjectTexture [47,""ol_textures\text\f101_sheriff.paa""];this setObjectTexture [48,""ol_textures\text\f101_sheriff.paa""];
                this setVehicleVarName ""vehicle_%1_%2"";
                vehicle_%1_%2 = this;
                clearWeaponCargo this;
                clearMagazineCargo this;
                newvehicle lock true;
                ";
                 processInitCommands;
                 INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                 "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                 ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                 newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
                if(_classname in _sherifsub) then {
                call compile format['
                newvehicle = _classname createVehicle %4;
                newvehicle setPos %4;
                newvehicle setDir %5;
                newvehicle setVehicleInit "
                this setObjectTexture [0, ""scripts\foster\k9_sheriff.paa""];this setObjectTexture [45, ""scripts\foster\k9_sheriff.paa""];this setObjectTexture [46, ""scripts\foster\k9_sheriff.paa""];this setObjectTexture [47, ""scripts\foster\k9_sheriff.paa""];this setObjectTexture [48, ""scripts\foster\k9_sheriff.paa""];this setObjectTexture [49, ""scripts\foster\k9_sheriff.paa""];this setObjectTexture [50, ""scripts\foster\k9_sheriff.paa""];              
            	  this setVehicleVarName ""vehicle_%1_%2"";
                vehicle_%1_%2 = this;
                clearWeaponCargo this;
                clearMagazineCargo this;
                newvehicle lock true;
                ";
                 processInitCommands;
                 INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                 "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                 ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                 newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
 
                if(_classname in _tahoe) then {
                 call compile format['
                 newvehicle = _classname createVehicle %4;
                 newvehicle setPos %4;
                 newvehicle setDir %5;
                newvehicle setVehicleInit "
                this setObjectTexture [0, ""ol_textures\text\tahoe_police.paa""];this setObjectTexture [45,""ol_textures\text\tahoe_police.paa""];this setObjectTexture [46,""ol_textures\text\tahoe_police.paa""];this setObjectTexture [47,""ol_textures\text\tahoe_police.paa""];this setObjectTexture [48,""ol_textures\text\tahoe_police.paa""];this setObjectTexture [49,""ol_textures\text\tahoe_police.paa""];this setObjectTexture [50,""ol_textures\text\tahoe_police.paa""];
                this setVehicleVarName ""vehicle_%1_%2"";
                vehicle_%1_%2 = this;
                clearWeaponCargo this;
                clearMagazineCargo this;
                newvehicle lock true;
                ";
                 processInitCommands;
                 INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                 "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                 ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                 newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
                if(_classname in _k9) then {
                 call compile format['
                 newvehicle = _classname createVehicle %4;
                 newvehicle setPos %4;
                 newvehicle setDir %5;
                newvehicle setVehicleInit "
                this setObjectTexture [0, ""scripts\foster\k9sub.paa""];this setObjectTexture [45, ""scripts\foster\k9sub.paa""];this setObjectTexture [46, ""scripts\foster\k9sub.paa""];this setObjectTexture [47, ""scripts\foster\k9sub.paa""];this setObjectTexture [48, ""scripts\foster\k9sub.paa""];this setObjectTexture [49, ""scripts\foster\k9sub.paa""];this setObjectTexture [50, ""scripts\foster\k9sub.paa""];
                this setVehicleVarName ""vehicle_%1_%2"";
                vehicle_%1_%2 = this;
                clearWeaponCargo this;
                clearMagazineCargo this;
                newvehicle lock true;
                ";
                 processInitCommands;
                 INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                 "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                 ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                 newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
                if(_classname in _k9sub) then {
                 call compile format['
                 newvehicle = _classname createVehicle %4;
                 newvehicle setPos %4;
                 newvehicle setDir %5;
                newvehicle setVehicleInit "
                this setObjectTexture [0, ""scripts\foster\k9sub.paa""];this setObjectTexture [45, ""scripts\foster\k9sub.paa""];this setObjectTexture [46, ""scripts\foster\k9sub.paa""];this setObjectTexture [47, ""scripts\foster\k9sub.paa""];this setObjectTexture [48, ""scripts\foster\k9sub.paa""];this setObjectTexture [49, ""scripts\foster\k9sub.paa""];this setObjectTexture [50, ""scripts\foster\k9sub.paa""];
                this setVehicleVarName ""vehicle_%1_%2"";
                vehicle_%1_%2 = this;
                clearWeaponCargo this;
                clearMagazineCargo this;
                newvehicle lock true;
                ";
                 processInitCommands;
                 INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                 "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                 ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                 newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
				if(_classname in _k9traffic) then {
                call compile format['
                newvehicle = _classname createVehicle %4;
                newvehicle setPos %4;
                newvehicle setDir %5;
                newvehicle setVehicleInit "
                this setObjectTexture [0,""scripts\foster\k9cv.paa""];this setObjectTexture [44,""scripts\foster\k9cv.paa""];this setObjectTexture [45,""scripts\foster\k9cv.paa""];this setObjectTexture [46,""scripts\foster\k9cv.paa""];this setObjectTexture [47,""scripts\foster\k9cv.paa""];this setObjectTexture [48,""scripts\foster\k9cv.paa""];
                this setVehicleVarName ""vehicle_%1_%2"";
                vehicle_%1_%2 = this;
                clearWeaponCargo this;
                clearMagazineCargo this;
                newvehicle lock true;
                ";
                 processInitCommands;
                 INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                 "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                 ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                 newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
                if(_classname in _traffic) then {
                call compile format['
                newvehicle = _classname createVehicle %4;
                newvehicle setPos %4;
                newvehicle setDir %5;
                newvehicle setVehicleInit "
                this setObjectTexture [0,""ol_textures\text\f101_traffic.paa""];this setObjectTexture [44,""ol_textures\text\f101_traffic.paa""];this setObjectTexture [45,""ol_textures\text\f101_traffic.paa""];this setObjectTexture [46,""ol_textures\text\f101_traffic.paa""];this setObjectTexture [47,""ol_textures\text\f101_traffic.paa""];this setObjectTexture [48,""ol_textures\text\f101_traffic.paa""];
                this setVehicleVarName ""vehicle_%1_%2"";
                vehicle_%1_%2 = this;
                clearWeaponCargo this;
                clearMagazineCargo this;
                newvehicle lock true;
                ";
                 processInitCommands;
                 INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2];
                 "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if(""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeof vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
                 ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getDir _logic];
                 newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
                };
        }
 
        else
        {
       
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
        "INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
        ', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getdir _logic];
        newvehicle setVariable ["vcl_owner", getPlayerUID player, true];
 
        };
        if(_classname in _sirenSys) then {
                {newvehicle removeWeapon _x} forEach weapons newvehicle;
                newvehicle addWeapon "SportCarHorn";
                newvehicle addWeapon "takedownnew";
                newvehicle addWeapon "howler3";
        };
// Attack helicopter re-armament
// Ka-60
if (_classname == "Ka60_PMC") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
        hint "Reconfiguring helicopter armament...";
        newvehicle addweapon "CMFlareLauncher";
        newvehicle addmagazine "60Rnd_CMFlareMagazine";
 
};
 
// Tow INITS
// cooter
if (_classname == "cooter") then
{
        newvehicle setVehicleInit 'this addAction ["Unlock Impound","UnLockTowGate.sqf"]'; processInitCommands;
    newvehicle setVehicleInit 'this addAction ["Lock Impound","LockTowGate.sqf"]'; processInitCommands;
        hint "Initializing Tow Scripts";
        };
// Tow INITS
// il_towtruck
if (_classname == "il_towtruck") then
{
        newvehicle setVehicleInit 'this addAction ["Unlock Impound","UnLockTowGate.sqf"]'; processInitCommands;
        newvehicle setVehicleInit 'this addAction ["Lock Impound","LockTowGate.sqf"]'; processInitCommands;
        hint "Initializing Tow Scripts";
};
 
if (_classname == "TowingTractor") then
{
        newvehicle setVehicleInit 'this addAction ["Unlock Impound","UnLockTowGate.sqf"]'; processInitCommands;
    newvehicle setVehicleInit 'this addAction ["Lock Impound","LockTowGate.sqf"]'; processInitCommands;
        hint "Initializing Tow Scripts";
};

// Attack helicopter re-armament
// Armed Littlebird
if (_classname == "AH6J_EP1") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
        hint "Reconfiguring helicopter armament...";
        newvehicle removeweapon "FFARLauncher_14";
        newvehicle addweapon "CMFlareLauncher";
        newvehicle addmagazine "60Rnd_CMFlareMagazine";
};
//BOMBCAR
if (_classname == "Lada2_TK_CIV_EP1") then
{
        //newvehicle setVehicleInit 'this addAction ["Play Jihad Music","bombcarmusic.sqf",[],1,false,true,"","_this in _target"];this addAction ["Detonate","bombcarboom.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
        //newvehicle addAction ["Play Jihad Music","bombcarmusic.sqf",[],1,false,true,"","_this in _target"];newvehicle addAction ["Detonate","bombcarboom.sqf",[],1,false,true,"","_this in _target"];
        jihadAction = newvehicle addAction ["Play Jihad Music","bombcarmusic.sqf",[],1,false,true,"","_this in _target"];
        detAction = newvehicle addAction ["Detonate","bombcarboom.sqf",[],1,false,true,"","_this in _target"];
};
if (_classname == "big_boat") then
{
        pirateAction = newvehicle addAction ["Play Pirate Music","piratemusic.sqf",[],1,false,true,"","_this in _target"];
};
 
if (_classname == "tcg_wave_red") then
{
        newvehicle addweapon "DSHKM";
        newvehicle addmagazine "150Rnd_127x107_DSHKM";
        newvehicle addmagazine "150Rnd_127x107_DSHKM";
        newvehicle addmagazine "150Rnd_127x107_DSHKM";
        newvehicle addmagazine "150Rnd_127x107_DSHKM";
        newvehicle addmagazine "150Rnd_127x107_DSHKM";
        newvehicle addmagazine "150Rnd_127x107_DSHKM"; 
};
 
if (_classname == "Ka52Black") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
        hint "Reconfiguring helicopter armament...";
        newvehicle removeweapon "VikhrLauncher";
        newvehicle removeweapon "80mmLauncher";
        newvehicle removemagazine "12Rnd_Vikhr_KA50";
        newvehicle removemagazine "40Rnd_80mm";
};
 
if (_classname == "An2_TK_EP1") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};
 
if (_classname == "An2_1_TK_CIV_EP1") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};
 
if (_classname == "UH60M_EP1") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
        newvehicle removeMagazines ((magazines newvehicle) select 0);
};
 
if (_classname == "MH6J_EP1") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};
 
if (_classname == "UH1H_TK_EP1") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};
 
if (_classname == "UH1H_TK_GUE_EP1") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};
 
if (_classname == "UH60M_MEV_EP1") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};
 
if (_classname == "CH_47F_EP1") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};
 
if (_classname == "C130J_US_EP1") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};
 
if (_classname == "AH6X_EP1") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};
 
if (_classname == "Mi17_CDF") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};
 
if (_classname == "Mi17_Ins") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};
 
if (_classname == "Mi17_Civilian") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};
 
if (_classname == "C130J") then
{
        newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};
 
//Cop SUV Re-Skin
if (_classname == "SUV_UN_EP1") then
{
        newvehicle setVehicleInit 'this setObjectTexture [0, "ol_textures\images\suv_body_co2.paa"]'; processInitCommands;
};
 
if (_classname == "vehicleclass") then
{
        newvehicle setVehicleInit 'this setObjectTexture [0, "ol_textures\images\suv_body_co2.paa"]'; processInitCommands;
};
 
 
//MEMBER CAR RESKIN
if (_classname == "Volha_2_TK_CIV_EP1") then
{
        newvehicle setVehicleInit 'this setObjectTexture [0, "ol_textures\images\memvohla.paa"]'; processInitCommands;
};

// An-2 Terror
if (_classname == "An2_TK_EP1") then
{
        hint "Your plane awaits you on the southwest beach.";
        newvehicle addweapon "PKT";
        newvehicle addmagazine "100Rnd_762x54_PK";
        newvehicle addmagazine "100Rnd_762x54_PK";
        newvehicle addmagazine "100Rnd_762x54_PK";
        newvehicle addmagazine "100Rnd_762x54_PK";
        newvehicle addmagazine "100Rnd_762x54_PK";
        newvehicle addmagazine "100Rnd_762x54_PK";
        newvehicle addmagazine "100Rnd_762x54_PK";
        newvehicle addweapon "2A14";
        newvehicle addmagazine "40Rnd_23mm_AZP85";
        newvehicle addmagazine "40Rnd_23mm_AZP85";
        newvehicle addmagazine "40Rnd_23mm_AZP85";
        newvehicle addmagazine "40Rnd_23mm_AZP85";
        newvehicle addmagazine "40Rnd_23mm_AZP85";
        newvehicle addmagazine "40Rnd_23mm_AZP85";
        newvehicle addmagazine "40Rnd_23mm_AZP85";
};
 
// L39 Police
if (_classname == "L39_TK_EP1") then
{
        hint "Reconfiguring plane armament...";
        newvehicle addweapon "CMFlareLauncher";
        newvehicle addmagazine "60Rnd_CMFlareMagazine";
        newvehicle addweapon "Ch29Launcher_Su34";
        newvehicle addmagazine "4Rnd_Ch29";
        newvehicle addmagazine "150Rnd_23mm_GSh23L";
        newvehicle addmagazine "150Rnd_23mm_GSh23L";
        newvehicle addmagazine "150Rnd_23mm_GSh23L";
 
};
// Swat
if (_classname == "olrpg_swat_command") then
{
        newvehicle setVehicleInit 'this addweaponCargo  ["SWAT",1];'; processInitCommands;
		newvehicle setVehicleInit 'this addmagazineCargo ["15Rnd_9x19_M9",8];';processInitCommands;
		newvehicle setVehicleInit 'this addmagazineCargo ["SmokeShell",4];';processInitCommands;
		newvehicle setVehicleInit 'this addmagazineCargo ["RAB_L111A1",4];';processInitCommands;
		newvehicle setVehicleInit 'this addweaponCargo ["M32_EP1",1];';processInitCommands;
        newvehicle setVehicleInit 'this addmagazineCargo ["6Rnd_Smoke_M203",4];';processInitCommands;
		newvehicle setVehicleInit 'this addweaponCargo ["DMR",1];';processInitCommands;
        newvehicle setVehicleInit 'this addmagazineCargo ["20Rnd_762x51_DMR",4];';processInitCommands;
};
// Swat
if (_classname == "olrpg_tahoe_swat_um") then
{
        newvehicle setVehicleInit 'this addweaponCargo  ["SWAT",1];'; processInitCommands;
		newvehicle setVehicleInit 'this addmagazineCargo ["15Rnd_9x19_M9",8];';processInitCommands;
		newvehicle setVehicleInit 'this addmagazineCargo ["SmokeShell",4];';processInitCommands;
		newvehicle setVehicleInit 'this addmagazineCargo ["RAB_L111A1",4];';processInitCommands;
		newvehicle setVehicleInit 'this addweaponCargo ["M32_EP1",1];';processInitCommands;
        newvehicle setVehicleInit 'this addmagazineCargo ["6Rnd_Smoke_M203",4];';processInitCommands;
		newvehicle setVehicleInit 'this addweaponCargo ["DMR",1];';processInitCommands;
        newvehicle setVehicleInit 'this addmagazineCargo ["20Rnd_762x51_DMR",4];';processInitCommands;
};
if (_classname == "olrpg_swat_bearcat") then
{
        newvehicle setVehicleInit 'this addweaponCargo  ["SWAT",1];'; processInitCommands;
		newvehicle setVehicleInit 'this addmagazineCargo ["15Rnd_9x19_M9",8];';processInitCommands;
		newvehicle setVehicleInit 'this addmagazineCargo ["SmokeShell",4];';processInitCommands;
		newvehicle setVehicleInit 'this addmagazineCargo ["RAB_L111A1",4];';processInitCommands;
		newvehicle setVehicleInit 'this addweaponCargo ["M32_EP1",1];';processInitCommands;
        newvehicle setVehicleInit 'this addmagazineCargo ["6Rnd_Smoke_M203",4];';processInitCommands;
		newvehicle setVehicleInit 'this addweaponCargo ["DMR",1];';processInitCommands;
        newvehicle setVehicleInit 'this addmagazineCargo ["20Rnd_762x51_DMR",4];';processInitCommands;
};
if (_classname == "olrpg_swat_f350") then
{
		newvehicle setVehicleInit 'this addmagazineCargo ["SmokeShell",4];';processInitCommands;
		newvehicle setVehicleInit 'this addmagazineCargo ["RAB_L111A1",4];';processInitCommands;
		newvehicle setVehicleInit 'this addweaponCargo ["DMR",1];';processInitCommands;
        newvehicle setVehicleInit 'this addmagazineCargo ["20Rnd_762x51_DMR",4];';processInitCommands;
		newvehicle setVehicleInit 'this addweaponCargo ["BAF_LRR_scoped_w",1];';processInitCommands;
        newvehicle setVehicleInit 'this addmagazineCargo ["5Rnd_86x70_L115A1",4];';processInitCommands;
};
if (_classname == "olrpg_swat_suburban_um") then
{
        newvehicle setVehicleInit 'this addweaponCargo  ["SWAT",1];'; processInitCommands;
		newvehicle setVehicleInit 'this addmagazineCargo ["15Rnd_9x19_M9",8];';processInitCommands;
		newvehicle setVehicleInit 'this addmagazineCargo ["SmokeShell",4];';processInitCommands;
		newvehicle setVehicleInit 'this addmagazineCargo ["RAB_L111A1",4];';processInitCommands;
		newvehicle setVehicleInit 'this addweaponCargo ["M32_EP1",1];';processInitCommands;
        newvehicle setVehicleInit 'this addmagazineCargo ["6Rnd_Smoke_M203",4];';processInitCommands;
		newvehicle setVehicleInit 'this addweaponCargo ["DMR",1];';processInitCommands;
        newvehicle setVehicleInit 'this addmagazineCargo ["20Rnd_762x51_DMR",4];';processInitCommands;
};
};
 
INV_CreateWeapon =
 
{
 
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
 
INV_CreateMag =
 
{
 
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
 
INV_CreateItem =
 
{
 
private["_class", "_menge", "_stor"];
_class = _this select 0;
_menge = _this select 1;
_stor  = _this select 2;
[_class, _menge, _stor] call INV_AddItemStorage;
 
};
 
BC_KillCar =
{
        //[] call BC_KillCar;
        private["_sel","_baitCar"];
        _sel = lbCurSel 1004;
        _baitCar = bc_baitcars select _sel;
        _baitCar lock true;
        while {fuel _baitCar > 0} do
        {
                _baitCar setFuel ((fuel _baitCar) - 0.2);
        };
};
