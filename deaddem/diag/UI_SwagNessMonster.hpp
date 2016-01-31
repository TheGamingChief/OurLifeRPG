class D_SWAGWL {
	idd=-1;
	onLoad = "if(!getplayeruid player in SwagDevs) exitWith {closeDialog 0};";
	movingEnable = "1";
	controls[] = {RscFrame_1800, RscText_1000, RscText_1001, RscText_1002, RscCombo_2100, RscCombo_2101, RscShortcutButton_1700, RscShortcutButton_1701};
		class RscFrame_1800: RscBackground
		{
			idc = 1800;
			x = 0.30826 * safezoneW + safezoneX;
			y = 0.281908 * safezoneH + safezoneY;
			w = 0.38665 * safezoneW;
			h = 0.262705 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Swag Editor of Swag";
			x = 0.454869 * safezoneW + safezoneX;
			y = 0.305646 * safezoneH + safezoneY;
			w = 0.12004 * safezoneW;
			h = 0.0312599 * safezoneH;
		};
		class RscCombo_2100: RscCombo
		{
			idc = 2100;
			x = 0.335913 * safezoneW + safezoneX;
			y = 0.418401 * safezoneH + safezoneY;
			w = 0.125779 * safezoneW;
			h = 0.0263145 * safezoneH;
		};
		class RscCombo_2101: RscCombo
		{
			idc = 2101;
			x = 0.527912 * safezoneW + safezoneX;
			y = 0.416421 * safezoneH + safezoneY;
			w = 0.125779 * safezoneW;
			h = 0.0263145 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Select Player";
			x = 0.335391 * safezoneW + safezoneX;
			y = 0.377848 * safezoneH + safezoneY;
			w = 0.0783009 * safezoneW;
			h = 0.0401616 * safezoneH;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Select Array";
			x = 0.597826 * safezoneW + safezoneX;
			y = 0.377849 * safezoneH + safezoneY;
			w = 0.0783009 * safezoneW;
			h = 0.0401616 * safezoneH;
		};
		class RscShortcutButton_1700: RscShortcutButton
		{
			idc = 1700;
			text = "Add Swag";
			x = 0.340087 * safezoneW + safezoneX;
			y = 0.480713 * safezoneH + safezoneY;
			w = 0.108562 * safezoneW;
			h = 0.0638995 * safezoneH;
			action="[lbCursel 2100, lbCursel 2101] call fn_AddSweqq";
		};
		class RscShortcutButton_1701: RscShortcutButton
		{
			idc = 1701;
			text = "Remove Swag";
			x = 0.548783 * safezoneW + safezoneX;
			y = 0.480713 * safezoneH + safezoneY;
			w = 0.108562 * safezoneW;
			h = 0.0638995 * safezoneH;
			action="[lbCursel 2100, lbCursel 2101] call fn_TakeSweqq";
		};
};