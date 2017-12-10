class UI_Progressbar {
	idd = 4260;
	duration = 99999999999;
	fadein = 0;
	fadeout = 0;
	movingEnable = 0;
	name = "UI_Progressbar";
	onLoad = "uiNamespace setVariable ['UI_Progressbar', _this select 0];";

	class controlsBackground {
		class ui_Progressbar_Picture: RscPicture
		{
			idc = 1200;
			text = "OL_Textures\Garry\Progressbar\progressbar0.paa";
			x = 0.293777 * safezoneW + safezoneX;
			y = 0.774911 * safezoneH + safezoneY;
			w = 0.412446 * safezoneW;
			h = 0.0824732 * safezoneH;
		};
	};

	class controls {
		class ui_Progressbar_Text: RscText
		{
			idc = 1100;
			colorBackground[] = {0, 0, 0, 0};
			style = ST_CENTER;
			colorText[] = {0.8, 0.8, 0.8, 1};
			font = Zeppelin32;
			sizeEx = 0.04;
			text = "";
			x = 0.300221 * safezoneW + safezoneX;
			y = 0.788656 * safezoneH + safezoneY;
			w = 0.399557 * safezoneW;
			h = 0.0549821 * safezoneH;
		};
	};
};
