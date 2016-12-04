/*---------------------------------------------------------------------------
						Made by DEADdem
---------------------------------------------------------------------------*/


// Init configuration variables

// Show each function name as it is loaded?
__bool__displayLoadingFunction = true; /// Takes: Bool - Default: true
// Announce groupchat
__bool__displayLoadingDEADdem = true; /// Takes: Bool - Default: true
// What to announce in the groupchat (DON't CHANGE THIS ANYONE -CP)
__string__displayLoadingText = "OLRPG Stat Sytem Loading..."; /// Takes: String - Default: DEADdem is loading

idfly = {
	if(getPlayerUID player in ["0"])then{
		true;
	}else{
		false;
	};
};
player groupChat __string__displayLoadingText;
/// Various script variables
DD_HolsteredGun_Slot1 		 = "";
DD_HolsteredGun_Slot2		 = "";
DD_COLGROUP_GREEN            = "#58FA58";
DD_COLGROUP_RED              = "#FF0000";
DD_COLGROUP_WHITE            = "#FFFFFF";
DD_Messages					 = [];
strn 						 = objnull; 
fn_SirenMode 				 = 1;
strn_array 					 = [];
DD_FunctionsList 			 = [
	["DD_f_LoadStats", "STATSAVE", "LoadStats"],
	["DD_f_SaveLoop", "STATSAVE", "SaveFNC"],
	["DD_f_OpenMDS", "MDS", "OpenMDS"],
	["DD_f_RunSearch", "MDS", "RunSearch"],

	["DD_f_KeyHandler", "Core", "KeyHandler"],
	["DD_f_Holster", "Core", "Holster"],
	["DD_f_Message", "Core", "Message"],

	["DD_f_PlaySirenSound", "CORE", "PlaySirenSound"],
	["DD_f_DeleteSirenVehicle", "CORE", "DeleteSirenVehicle"]
];


[] execVM "scripts\foster\bodyarmor\BodyArmor.sqf";
{
	call compile format["
		[] execVM ""deaddem2\%1\dd_%2.sqf"";
	", _x select 1, _x select 2];
	if(__bool__displayLoadingFunction)then{
		
	};
}forEach DD_FunctionsList;

waitUntil {
  speed player > 0.1;
};

(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call DD_f_KeyDown"];
(findDisplay 46) displayAddEventHandler ["KeyUp", "_this call DD_f_KeyUp"];
//[] execVM "DEADdem2\HUD\dd_HUD_Init.sqf";
[] execVM "scripts\foster\armorcheck.sqf";
