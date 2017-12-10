class UI_PaintballMenu {
	idd = -1;

	class controlsBackground {
		class ui_PaintballMenu_Background: RscBackground
		{
			idc = 1800;
			x = 0.383999 * safezoneW + safezoneX;
			y = 0.307516 * safezoneH + safezoneY;
			w = 0.231992 * safezoneW;
			h = 0.384969 * safezoneH;
		};
	};

	class controls {
		class ui_PaintballMenu_bHeader: RscText
		{
			idc = 1000;
			text = "Blue Team";
			x = 0.390444 * safezoneW + safezoneX;
			y = 0.321265 * safezoneH + safezoneY;
			w = 0.103108 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PaintballMenu_bList: RscListbox
		{
			idc = 1500;
			onMouseMoving = "[] call Paintball_fnc_RefreshUI;";
			x = 0.390444 * safezoneW + safezoneX;
			y = 0.348762 * safezoneH + safezoneY;
			w = 0.103108 * safezoneW;
			h = 0.24748 * safezoneH;
		};
		class ui_PaintballMenu_bBtn: RscButton
		{
			idc = 1600;
			text = "Join Blue Team";
			onMouseMoving = "[] call Paintball_fnc_RefreshUI;";
			action = "['BLUE_TEAM', player] call Paintball_fnc_JoinRequest;";
			x = 0.390444 * safezoneW + safezoneX;
			y = 0.609991 * safezoneH + safezoneY;
			w = 0.103108 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PaintballMenu_rHeader: RscText
		{
			idc = 1002;
			text = "Red Team";
			x = 0.506444 * safezoneW + safezoneX;
			y = 0.321265 * safezoneH + safezoneY;
			w = 0.103108 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PaintballMenu_rList: RscListbox
		{
			idc = 1502;
			onMouseMoving = "[] call Paintball_fnc_RefreshUI;";
			x = 0.506444 * safezoneW + safezoneX;
			y = 0.348762 * safezoneH + safezoneY;
			w = 0.103108 * safezoneW;
			h = 0.24748 * safezoneH;
		};
		class ui_PaintballMenu_rBtn: RscButton
		{
			idc = 1601;
			text = "Join Red Team";
			onMouseMoving = "[] call Paintball_fnc_RefreshUI;";
			action = "['RED_TEAM', player] call Paintball_fnc_JoinRequest;";
			x = 0.506444 * safezoneW + safezoneX;
			y = 0.609991 * safezoneH + safezoneY;
			w = 0.103108 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PaintballMenu_cBtn: RscButton
		{
			idc = 1602;
			text = "Close";
			onMouseMoving = "[] call Paintball_fnc_RefreshUI;";
			action = "closeDialog 0;";
			x = 0.390444 * safezoneW + safezoneX;
			y = 0.651238 * safezoneH + safezoneY;
			w = 0.103108 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PaintballMenu_rfBtn: RscButton
		{
			idc = 1603;
			text = "Refresh";
			onMouseMoving = "[] call Paintball_fnc_RefreshUI;";
			action = "[] call Paintball_fnc_RefreshUI;";
			x = 0.506444 * safezoneW + safezoneX;
			y = 0.651238 * safezoneH + safezoneY;
			w = 0.103108 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
	};
};
