class Swagswag_lifeesu
{
      idd = -1;
	  movingEnable = true;
	  controlsbackground[] = {RscPicture_1200};
	  controls[] = {RscPicture_1200,RscPicture_1201,RscPicture_1202,RscPicture_1203,RscPicture_1204,RscPicture_1205,RscPicture_1206,RscPicture_1207,RscPicture_1208,RscPicture_1209,RscPicture_1211,RscButton_1600,RscButton_1601,RscButton_1602,RscButton_1603,RscButton_1604,RscButton_1605,RscButton_1606,RscButton_1607,RscButton_1608,RscButton_1610,RscButton_1611,RscButton_1612,RscButton_1613,RscListbox_1500,RscCombo_2100,RscEdit_1400,RscListbox_1501};
	  name = "Swagswag_lifeesu";
	  onLoad = "with uiNameSpace do {Swagswag_lifeesu = _this select 0}";

class RscPicture_1200: RscPicture
{
    moving = 1;
	type = CT_STATIC;
	style = ST_PICTURE;
	idc = 1200;
	text = "ol_textures\images\ESU.PAA";
	x = 0.162422 * safezoneW + safezoneX;
	y = 0.0519829 * safezoneH + safezoneY;
	w = 0.669541 * safezoneW;
	h = 0.799345 * safezoneH;
};
class RscPicture_1201: RscPicture
{
	idc = 1201;
	text = "ol_textures\images\PHONE.PAA";
	x = 0.368352 * safezoneW + safezoneX;
	y = 0.466142 * safezoneH + safezoneY;
	w = 0.0510157 * safezoneW;
	h = 0.0687132 * safezoneH;
};
class RscPicture_1202: RscPicture
{
	idc = 1202;
	text = "ol_textures\images\SETTINGS.PAA";
	x = 0.450724 * safezoneW + safezoneX;
	y = 0.466138 * safezoneH + safezoneY;
	w = 0.0510157 * safezoneW;
	h = 0.0687132 * safezoneH;
};
class RscPicture_1203: RscPicture
{
	idc = 1203;
	text = "ol_textures\images\WARRANTS.PAA";
	x = 0.533095 * safezoneW + safezoneX;
	y = 0.466138 * safezoneH + safezoneY;
	w = 0.0510157 * safezoneW;
	h = 0.0687132 * safezoneH;
};
class RscPicture_1204: RscPicture
{
	idc = 1204;
	text = "ol_textures\images\CIVILIAN.PAA";
	x = 0.615467 * safezoneW + safezoneX;
	y = 0.466138 * safezoneH + safezoneY;
	w = 0.0510157 * safezoneW;
	h = 0.0687132 * safezoneH;
};
class RscPicture_1205: RscPicture
{
	idc = 1205;
	text = "ol_textures\images\SAVE.PAA";
	x = 0.696369 * safezoneW + safezoneX;
	y = 0.466138 * safezoneH + safezoneY;
	w = 0.0510157 * safezoneW;
	h = 0.0687132 * safezoneH;
};
class RscPicture_1206: RscPicture
{
	idc = 1206;
	text = "ol_textures\images\OIL.PAA";
	x = 0.368352 * safezoneW + safezoneX;
	y = 0.571631 * safezoneH + safezoneY;
	w = 0.0510157 * safezoneW;
	h = 0.0687132 * safezoneH;
};
class RscPicture_1207: RscPicture
{
	idc = 1207;
	text = "ol_textures\images\DMV.PAA";
	x = 0.450724 * safezoneW + safezoneX;
	y = 0.571631 * safezoneH + safezoneY;
	w = 0.0510157 * safezoneW;
	h = 0.0687132 * safezoneH;
};
class RscPicture_1208: RscPicture
{
	idc = 1208;
	text = "ol_textures\images\LAWS.PAA";
	x = 0.532361 * safezoneW + safezoneX;
	y = 0.571631 * safezoneH + safezoneY;
	w = 0.0510157 * safezoneW;
	h = 0.0687132 * safezoneH;
};
class RscPicture_1209: RscPicture
{
	idc = 1209;
	text = "ol_textures\images\GANGS.PAA";
	x = 0.615468 * safezoneW + safezoneX;
	y = 0.571631 * safezoneH + safezoneY;
	w = 0.0510157 * safezoneW;
	h = 0.0687132 * safezoneH;
};
/*class RscPicture_1210: RscPicture
{
	idc = 1210;
	text = "ol_textures\images\BANK.PAA";
	x = 0.69637 * safezoneW + safezoneX;
	y = 0.57163 * safezoneH + safezoneY;
	w = 0.0510157 * safezoneW;
	h = 0.0687132 * safezoneH;
};*/
class RscPicture_1211: RscPicture
{
	idc = 1211;
	text = "ol_textures\images\stockmarket.PAA";
	//x = 0.368352 * safezoneW + safezoneX;
	//y = 0.675821 * safezoneH + safezoneY;
	//w = 0.0510157 * safezoneW;
	//h = 0.0700156 * safezoneH;
	x = 0.69637 * safezoneW + safezoneX;
	y = 0.57163 * safezoneH + safezoneY;
	w = 0.0510157 * safezoneW;
	h = 0.0687132 * safezoneH;
};
class RscButton_1600: Swag_RscButton
{
    action = "[] call OL_phone_ShowMenu";

	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	idc = 1600;
	x = 0.366881 * safezoneW + safezoneX;
	y = 0.464836 * safezoneH + safezoneY;
	w = 0.0524866 * safezoneW;
	h = 0.0700156 * safezoneH;
};
class RscButton_1601: Swag_RscButton
{
    action = "closeDialog 0;createDialog ""balca_environment"";[0] call c_proving_ground_fnc_environment";

	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	idc = 1601;
	x = 0.449988 * safezoneW + safezoneX;
	y = 0.463533 * safezoneH + safezoneY;
	w = 0.0524866 * safezoneW;
	h = 0.0700156 * safezoneH;
};
class RscButton_1602: Swag_RscButton
{
    action = "[0,1,2,[""coplog""]] execVM 'maindialogs.sqf';";

	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	idc = 1602;
	x = 0.530154 * safezoneW + safezoneX;
	y = 0.464835 * safezoneH + safezoneY;
	w = 0.0524866 * safezoneW;
	h = 0.0700156 * safezoneH;
};
class RscButton_1603: Swag_RscButton
{
    action = "[0,0,0,[""playerlist""]] execVM 'maindialogs.sqf';";

	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	idc = 1603;
	x = 0.613997 * safezoneW + safezoneX;
	y = 0.464836 * safezoneH + safezoneY;
	w = 0.0524866 * safezoneW;
	h = 0.0700156 * safezoneH;
};
class RscButton_1604: Swag_RscButton
{
    action = "if (OL_StatsLoadedFromDB) then { [] spawn OL_stats_SaveStats };";

	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	idc = 1604;
	x = 0.694162 * safezoneW + safezoneX;
	y = 0.464835 * safezoneH + safezoneY;
	w = 0.0524866 * safezoneW;
	h = 0.0700156 * safezoneH;
};
class RscButton_1605: Swag_RscButton
{
    action = "[0,0,0,[""oilswag""]] execVM 'maindialogs.sqf'";

	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	idc = 1605;
	x = 0.366881 * safezoneW + safezoneX;
	y = 0.567723 * safezoneH + safezoneY;
	w = 0.0524866 * safezoneW;
	h = 0.0700156 * safezoneH;
};
class RscButton_1606: Swag_RscButton
{
    action = "[0,0,0,[""licswag""]] execVM 'maindialogs.sqf';";

	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	idc = 1606;
	x = 0.449253 * safezoneW + safezoneX;
	y = 0.569026 * safezoneH + safezoneY;
	w = 0.0524866 * safezoneW;
	h = 0.0700156 * safezoneH;
};
class RscButton_1607: Swag_RscButton
{
    action = "[0,0,0,[""lawswag""]] execVM 'maindialogs.sqf';";

	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	idc = 1607;
	x = 0.530154 * safezoneW + safezoneX;
	y = 0.567723 * safezoneH + safezoneY;
	w = 0.0524866 * safezoneW;
	h = 0.0700156 * safezoneH;
};
class RscButton_1608: Swag_RscButton
{
    action = "[0,0,0,['gangmenu']] execVM ""maindialogs.sqf"";";

	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	idc = 1608;
	x = 0.613997 * safezoneW + safezoneX;
	y = 0.567723 * safezoneH + safezoneY;
	w = 0.0524866 * safezoneW;
	h = 0.0700156 * safezoneH;
};
/*class RscButton_1609: Swag_RscButton
{
    action = "call Bank_Swag;";

	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	idc = 1609;
	x = 0.694898 * safezoneW + safezoneX;
	y = 0.567724 * safezoneH + safezoneY;
	w = 0.0524866 * safezoneW;
	h = 0.0700156 * safezoneH;
};*/
class RscButton_1610: Swag_RscButton
{
    action = "[0,0,0,[""fundsswag""]] execVM ""maindialogs.sqf"";";

	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	idc = 1610;
	//x = 0.367617 * safezoneW + safezoneX;
	//y = 0.673216 * safezoneH + safezoneY;
	//w = 0.0524866 * safezoneW;
	//h = 0.0700156 * safezoneH;
	x = 0.694898 * safezoneW + safezoneX;
	y = 0.567724 * safezoneH + safezoneY;
	w = 0.0524866 * safezoneW;
	h = 0.0700156 * safezoneH;
};
class RscCombo_2100: RscCombo
{
	idc = 21009;
	x = 0.219051 * safezoneW + safezoneX;
	y = 0.114498 * safezoneH + safezoneY;
	w = 0.113531 * safezoneW;
	h = 0.0304443 * safezoneH;
};
class RscListbox_1500: RscListbox
{
	idc = 15009;
	x = 0.225672 * safezoneW + safezoneX;
	y = 0.294225 * safezoneH + safezoneY;
	w = 0.103968 * safezoneW;
	h = 0.274488 * safezoneH;
};
class RscEdit_1400: RscEdit
{
	idc = 10009;
	x = 0.226408 * safezoneW + safezoneX;
	y = 0.606795 * safezoneH + safezoneY;
	w = 0.0833762 * safezoneW;
	h = 0.0335493 * safezoneH;
	text = "1";
};
class RscButton_1611: Swag_RscButton
{
	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	idc = 16009;
	x = 0.223465 * safezoneW + safezoneX;
	y = 0.666704 * safezoneH + safezoneY;
	w = 0.0995563 * safezoneW;
	h = 0.0322468 * safezoneH;
};
class RscButton_1612: Swag_RscButton
{
	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	idc = 16019;
	x = 0.223464 * safezoneW + safezoneX;
	y = 0.700566 * safezoneH + safezoneY;
	w = 0.0995563 * safezoneW;
	h = 0.0335492 * safezoneH;
};
class RscButton_1613: Swag_RscButton
{
	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	idc = 16029;
	x = 0.218316 * safezoneW + safezoneX;
	y = 0.738333 * safezoneH + safezoneY;
	w = 0.100292 * safezoneW;
	h = 0.0335493 * safezoneH;
};
class RscListbox_1501: RscListbox
{
    colorSelectBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	idc = 1501;
	x = 0.338932 * safezoneW + safezoneX;
	y = 0.119709 * safezoneH + safezoneY;
	w = 0.438605 * safezoneW;
	h = 0.307046 * safezoneH;
	SizeEX = 0.08;
	style = ST_CENTER;
};
};
