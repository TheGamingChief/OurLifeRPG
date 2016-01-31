class Swag_SpawnMenu {
    idd = -1;
    movingEnable = "1";
    controls[] = {RscFrame_1800, SwagText_1000, SwagDevBunker_1700, SwagCivSpawn_1701, SwagTierx_1702, SwagCivSpawn_1703};
	
class RscFrame_1800: RscBackground
{
	idc = 1800;
	x = 0.30826 * safezoneW + safezoneX;
	y = 0.281908 * safezoneH + safezoneY;
	w = 0.38665 * safezoneW;
	h = 0.262705 * safezoneH;
};
class SwagText_1000: RscText
{
	idc = 1000;
	text = "Swag Spawn Menu";
	x = 0.42204 * safezoneW + safezoneX;
	y = 0.262969 * safezoneH + safezoneY;
	w = 0.20767 * safezoneW;
	h = 0.0752248 * safezoneH;
};
class SwagDevBunker_1700: RscShortcutButton
{
	idc = 1700;
	text = "Undercover";
	x = 0.318341 * safezoneW + safezoneX;
	y = 0.476558 * safezoneH + safezoneY;
	w = 0.131916 * safezoneW;
	h = 0.0752251 * safezoneH;
	action = "if((getplayeruid player) in Undercover_id) then {[] execVM 'ServerLoad\SwaglifeDev.sqf';closedialog 0;}";
};

class SwagCivspawn_1701: RscShortcutButton
{
	idc = 1701;
	text = "East Side Spawn ";
	x = 0.502942 * safezoneW + safezoneX;
	y = 0.476559 * safezoneH + safezoneY;
	w = 0.132651 * safezoneW;
	h = 0.0791322 * safezoneH;
	action = "[] execVM 'ServerLoad\SwaglifeEastSide.sqf';closedialog 0;";
};
class SwagTierX_1702: RscShortcutButton
{
	idc = 1702;
	text = "TierX";
	x = 0.315399 * safezoneW + safezoneX;
	y = 0.342412 * safezoneH + safezoneY;
	w = 0.134858 * safezoneW;
	h = 0.0752251 * safezoneH;
	action = "if ((getplayeruid player) in Tierx_id) then {[] execVM 'ServerLoad\SwaglifeTierX.sqf';closeDialog 0;};";
};
class SwagCivSpawn_1703: RscShortcutButton
{
	idc = 1703;
	text = "West Side Spawn ";
	x = 0.499265 * safezoneW + safezoneX;
	y = 0.34632 * safezoneH + safezoneY;
	w = 0.132651 * safezoneW;
	h = 0.0791322 * safezoneH;
	action = "[] execVM 'ServerLoad\SwaglifeWestSide.sqf';closeDialog 0;";
};
};
