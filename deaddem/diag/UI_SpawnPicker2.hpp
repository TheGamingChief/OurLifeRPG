class D_SpawnPicker2{
	idd=-1;

	controls[] = {RscFrame_1800, RscText_1000, RscShortcutButton_1700, RscShortcutButton_1701};
	objects[] = {};
	movingEnable = 1;

	class RscFrame_1800: RscBackground
	{
		idc = 1800;
		x = 0.308333 * safezoneW + safezoneX;
		y = 0.375001 * safezoneH + safezoneY;
		w = 0.382396 * safezoneW;
		h = 0.163333 * safezoneH;
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Choose a Spawn Point";
		x = 0.447917 * safezoneW + safezoneX;
		y = 0.381481 * safezoneH + safezoneY;
		w = 0.105312 * safezoneW;
		h = 0.0383334 * safezoneH;
	};
	class RscShortcutButton_1700: RscShortcutButton
	{
		idc = 1700;
		text = "East Side";
		x = 0.320313 * safezoneW + safezoneX;
		y = 0.437963 * safezoneH + safezoneY;
		w = 0.114687 * safezoneW;
		h = 0.0624074 * safezoneH;
		action="[] execVM 'Spawnpoint2.sqf';closeDialog 0;";
	};
	class RscShortcutButton_1701: RscShortcutButton
	{
		idc = 1701;
		text = "West Side";
		x = 0.567187 * safezoneW + safezoneX;
		y = 0.437963 * safezoneH + safezoneY;
		w = 0.114687 * safezoneW;
		h = 0.0624074 * safezoneH;
		action="[] execVM 'Spawnpoint3.sqf';closeDialog 0;";
	};
};