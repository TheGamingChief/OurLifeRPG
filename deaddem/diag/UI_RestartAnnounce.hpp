class RestartTimer {
	idd = 1077212;
	controlsBackground[] = {};
	controls[] = {RscEdit_1400,RscFrame_1800,RscText_1000,RscShortcutButton_1700};
	objects[] = {};
	enableSimulation = false;
	class RscFrame_1800: RscBackground
	{
		idc = 1800;
		x = 0.361459 * safezoneW + safezoneX;
		y = 0.38426 * safezoneH + safezoneY;
		w = 0.292292 * safezoneW;
		h = 0.181852 * safezoneH;
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1077225;
		text = "E.G: 500";
		x = 0.408855 * safezoneW + safezoneX;
		y = 0.438889 * safezoneH + safezoneY;
		w = 0.194375 * safezoneW;
		h = 0.0337037 * safezoneH;
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Enter Seconds Until Restart";
		x = 0.444792 * safezoneW + safezoneX;
		y = 0.397223 * safezoneH + safezoneY;
		w = 0.128906 * safezoneW;
		h = 0.0275 * safezoneH;
	};
	class RscShortcutButton_1700: RscShortcutButton
	{
		idc = 1700;
		text = "Submit";
		x = 0.468749 * safezoneW + safezoneX;
		y = 0.486112 * safezoneH + safezoneY;
		w = 0.0714584 * safezoneW;
		h = 0.0624075 * safezoneH;
		action = "[(ctrlText 1077225)] execVM ""deaddem\parseTimerData.sqf""; closeDialog 0";
	};
};