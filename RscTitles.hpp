class RscTitles
{

class RadarPicture
{
	access = 0;
	type = 0;
	idc = -1;
	style = 48;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	font = "TahomaB";
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
};

class RadarText
{
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] = {0,0,0,0};
	colorText[] = {0.8784,0.8471,0.651,1};
	text = "";
	fixedWidth = 0;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 2;
	font = "Zeppelin32";
	SizeEx = 0.03921;
};



#define screenwidth  (1 - safeZonex*2)
#define screenheight (1 - safeZoney*2)
#include "HUD\dialog\HUD.hpp"
#include "deaddem2\config\MDS_Homescreen.hpp"
#include "scripts\TheGamingChief\Dialog\Tag.hpp"
#include "scripts\TheGamingChief\Dialog\Radargun.hpp"

class RL_Dialog_loading
{
	idd = 242334;
	movingEnable = "false";
	duration = 99999999999999999;
	fadein = 0;
	fadeout = 0;
	name = "RL_Dialog_loading";
	onLoad = "with uiNameSpace do {RL_Dialog_loading = _this select 0;};";
	controlsBackground[]=
	{
		Mainback
	};
	objects[]={};
	controls[]=
	{
		progressbar,
		infotext0,
		infotext1
	};
	class Mainback : RscPicture
	{
		x=0.1;
		y=0.1;
		w=0.84;
		h=0.84;
		moving = 0;
		text = "";
	};
	class progressbar : RscPicture
	{
		x=0.110104;
		y=0.57571;
		w=0.82;
		h=0.0416666666666667;
		idc=1111;
		moving = 0;
		text = "ol_textures\misc\progressbar\progressbar0.paa";
	};
	class infotext0: RscText
	{
		idc=1112;
		x=0.110104;
		y=0.61571;
		w=0.82;
		h=0.0416666666666667;
		colorBackground[]={0,0,0,0.8};
		style=ST_CENTER;
		colorText[]={0.8,0.8,0.8,1};
		font=Zeppelin32;
		sizeEx=0.04;
		text="Power On";
	};
	class infotext1:RscText
	{
		idc=1113;
		x=0.880104;
		y=0.57571;
		w=0.269399707174231;
		h=0.0416666666666667;
		colorBackground[]={0,0,0,0};
		text="0%";
	};
};
class RPP_Dlg_UI
{
    idd = 100;
    movingEnable = true;
    controlsBackground[] = { Background, moneyText };
    duration = 100000000;
    fadein = 0;
    name = "RPP_Dlg_UI";
    objects[] = { };
    controls[] = { };
    onLoad = "RPP_display_ui = _this;";
    class Background : RscBackground
    {
		x = safeZoneX;
        y = safeZoneY;
        w = safeZoneW;
        h = 0.025;
        text = "";
        colorBackground[] = {0, 0, 0, 0};
        colorText[] = {1, 1, 1, 1};
    };
    class moneyText : RPP_StructuredText
    {
        idc = 1;
        x = safeZoneX;
        y = safeZoneY;
        w = safeZoneW;
        h = 0.3;
        size = 0.028;
        text = "";
    };
};
class RPP_Dlg_Progress
{
    idd = 400;
    movingEnable = true;
    controlsBackground[] = { progressText };
    duration = 100000000;
    fadein = 0;
    name = "RPP_Dlg_Progress";
    objects[] = { };
    controls[] = { };
    onLoad = "RPP_display_progress = _this;";
    class progressText : RPP_StructuredText
    {
        idc = 1;
        x = 0.40;
        y = 0.5;
        w = 1.75;
        h = 0.3;
        size = 0.028;
        text = "Progress: 0%";
    };
};

class Rtags
{
	idd=64431;
	movingEnable = true;
	fadein       =  0;
	fadeout      =  0;
	duration     =  0.1;
	name="TAGS_HUD";
	controls[]={"vehicle_hud_name","vehicle_hud_speed","vehicle_hud_fuel","vehicle_hud_damage","vehicle_hud_direction", "nametag", "interact"};
	onLoad="uiNamespace setVariable ['TAGS_HUD', _this select 0]";

	class vehicle_hud_name
	{
		type = 0;
		idc = 64432;
		style = 0;
		x = 0.87;
		y = 0.725;
		w = 0.2;
		h = 0.2;
		font = "Zeppelin33Italic";
		sizeEx = 0.019;
		colorText[] = {1.0, 1.0, 1.0, 0.9};
		colorBackground[]={0,0,0,0.0};
		text = "";
	};

	class vehicle_hud_speed
	{
		type = 0;
		idc = 64433;
		style = 0;
		x = 0.87;
		y = 0.755;
		w = 0.2;
		h = 0.2;
		font = "Zeppelin33Italic";
		sizeEx = 0.019;
		colorText[] = {1.0, 1.0, 1.0, 0.9};
		colorBackground[]={0,0,0,0.0};
		text = "";
	};

	class vehicle_hud_fuel
	{
		type = 0;
		idc = 64434;
		style = 0;
		x = 0.87;
		y = 0.785;
		w = 0.2;
		h = 0.2;
		font = "Zeppelin33Italic";
		sizeEx = 0.019;
		colorText[] = {1.0, 1.0, 1.0, 0.9};
		colorBackground[]={0,0,0,0.0};
		text = "";
	};

	class vehicle_hud_damage
	{
		type = 0;
		idc = 64435;
		style = 0;
		x = 0.87;
		y = 0.815;
		w = 0.2;
		h = 0.2;
		font = "Zeppelin33Italic";
		sizeEx = 0.019;
		colorText[] = {1.0, 1.0, 1.0, 0.9};
		colorBackground[]={0,0,0,0.0};
		text = "";
	};

	class vehicle_hud_direction
	{
		type = 0;
		idc = 64436;
		style = 0;
		x = 0.87;
		y = 0.845;
		w = 0.2;
		h = 0.2;
		font = "Zeppelin33Italic";
		sizeEx = 0.019;
		colorText[] = {1.0, 1.0, 1.0, 0.9};
		colorBackground[]={0,0,0,0.0};
		text = "";
	};

	class nametag
	{
		type = 0;
		idc = 64437;
		style = 0;
		x = 0.44;
		y = 0.40;
		w = 0.3;
		h = 0.2;
		font = "Zeppelin33Italic";
		sizeEx = 0.019;
		colorText[] = {0, 1, 0, 1};
		colorBackground[]={0,0,0,0.0};
		text = "";
	};

	class interact
	{
		type = 0;
		idc = 64438;
		style = 0;
		x = 0.50;
		y = 0.47;
		w = 0.3;
		h = 0.2;
		font = "Zeppelin33Italic";
		sizeEx = 0.025;
		colorText[] = {1, 1, 1, 1};
		colorBackground[]={0,0,0,0.0};
		text = "";
	};
};

};
