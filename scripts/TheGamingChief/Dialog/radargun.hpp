class OLRPG_Radargun
{
	idd = -1;
	fadeout=0;
	fadein=0;
	duration = 1;
	name = "OLRPG_Radargun";
	onLoad = "uiNamespace setVariable ['OLRPG_Radargun', _this select 0]";

	class controlsBackground 
	{	
		class Radar: RadarPicture
		{
			idc = 1200;
			text = "\ol_textures\misc\radar.paa";
			x = 0.732291 * safezoneW + safezoneX;
			y = 0.0101852 * safezoneH + safezoneY;
			w = 0.261041 * safezoneW;
			h = 0.222592 * safezoneH;
		};
		class radar_text: RadarText
		{
			idc = 1000;
			text = "0";
			style = "0x02";
			sizeEx = 0.1;
			colorText[] = { 0, 0, 0, 1 };
			font = "alarmclock";
			x = 0.788542 * safezoneW + safezoneX;
			y = 0.0268518 * safezoneH + safezoneY;
			w = 0.148021 * safezoneW;
			h = 0.0985185 * safezoneH;
		};
	};
};