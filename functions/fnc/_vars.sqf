DD_HolsteredGun_Slot1 	= "";
DD_HolsteredGun_Slot2		= "";
DD_COLGROUP_GREEN       = "#58FA58";
DD_COLGROUP_RED         = "#FF0000";
DD_COLGROUP_WHITE       = "#FFFFFF";
DD_Messages					 		= [];
strn 						 				= objnull;
fn_SirenMode 				 		= 0;
strn_array 					 		= [];
shopactivescript        = 0;
platesavailable         = true;
gunrunavailable         = true;
gunrun2available        = true;
gunrun3available        = true;
OL_VarQueue             = []; //[<str>var, <anything>value, <array>[<int>timeStart, <int>timeEnd], <array>[<bool>isSetVar, <bool>isSetVarGlobal]]
Rifle_Holster           = nil;
Pistol_Holster          = nil;
Radar_Holstered         = false;

CP_RobScript_pub1 = [
	["SETTINGS",  "Fionas Pub", "barmoney", "fionasavailable", "Robbed Bar"],
	["GROUPCHAT", "You are now robbing the pub, Please stay near the Fiona for 30 seconds to receive the money", 	2],
	["TITLETEXT", "Put your hands up chick this is a robbery!", 																									5],
	["TITLETEXT", "Fiona: Like Oh My God! Really...", 																														5],
	["TITLETEXT", "Fiona: Just wait till my Sugah Daddy hears about this...", 																		5],
	["TITLETEXT", "Fiona: Ohhh Sugah Daddy gonna fuck you up...", 																								5],
	["TITLETEXT", "Fiona: Here just take it, small dick jerk.", 																									2],
	["GROUPCHAT", "Fiona has handed you the money! Now get out of there before the cops show up!", 								0]
];
