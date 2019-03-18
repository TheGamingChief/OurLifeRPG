class UI_CustomKeys {
	idd = -1;

	class controlsBackground {
		class ui_CustomKeys_Background: RscBackground
		{
			idc = 1800;
			x = 0.390448 * safezoneW + safezoneX;
			y = 0.431256 * safezoneH + safezoneY;
			w = 0.219104 * safezoneW;
			h = 0.137489 * safezoneH;
		};
		class ui_CustomKeys_Frame: RscFrame
		{
			idc = 1801;
			colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
			x = 0.390448 * safezoneW + safezoneX;
			y = 0.431256 * safezoneH + safezoneY;
			w = 0.219104 * safezoneW;
			h = 0.137489 * safezoneH;
		};
	};

	class controls {
		class ui_CustomKeys_actionList: RscCombo
		{
			idc = 2100;
			x = 0.396892 * safezoneW + safezoneX;
			y = 0.486251 * safezoneH + safezoneY;
			w = 0.0966634 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_CustomKeys_keyList: RscCombo
		{
			idc = 2101;
			x = 0.506444 * safezoneW + safezoneX;
			y = 0.486251 * safezoneH + safezoneY;
			w = 0.0966634 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_CustomKeys_Title: RscText
		{
			idc = 1000;
			text = "OurLifeRPG Custom Keys";
			x = 0.396892 * safezoneW + safezoneX;
			y = 0.445004 * safezoneH + safezoneY;
			w = 0.206215 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_CustomKeys_changekeybtn: RscButton
		{
			idc = 1600;
			text = "Change Key";
			action = "[lbData [2100, lbCurSel 2100], lbData [2101, lbCurSel 2101]] call OL_player_ChangeKey; closeDialog 0;";
			x = 0.396892 * safezoneW + safezoneX;
			y = 0.527498 * safezoneH + safezoneY;
			w = 0.0966634 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_CustomKeys_closebtn: RscButton
		{
			idc = 1601;
			text = "Close";
			action = "closeDialog 0;";
			x = 0.506444 * safezoneW + safezoneX;
			y = 0.527498 * safezoneH + safezoneY;
			w = 0.0966634 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
	};
};
