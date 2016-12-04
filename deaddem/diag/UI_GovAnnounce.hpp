class GovAnnounce {
	idd=107702;
	movingEnable = false;
	enableSimulation = false;
	controlsBackground[] = {RscFrame_1800};
	objects[] = {};
	controls[] = {RscFrame_1800,RscText_1000,RscEdit_1400,RscButton_1600};

	class RscFrame_1800: RscBackground
	{
		idc = -1;
		x = 0.38802 * safezoneW + safezoneX;
		y = 0.388889 * safezoneH + safezoneY;
		w = 0.238125 * safezoneW;
		h = 0.176296 * safezoneH;
	};
	class RscText_1000: RscText
	{
		idc = -1;
		text = "Governer Announcement";
		x = 0.452084 * safezoneW + safezoneX;
		y = 0.431482 * safezoneH + safezoneY;
		w = 0.113646 * safezoneW;
		h = 0.0392593 * safezoneH;
	};
	class RscEdit_1400: RscEdit
	{
		idc =107702;
		x = 0.397917 * safezoneW + safezoneX;
		y = 0.474074 * safezoneH + safezoneY;
		w = 0.218333 * safezoneW;
		h = 0.0327778 * safezoneH;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Submit";
		x = 0.477083 * safezoneW + safezoneX;
		y = 0.515741 * safezoneH + safezoneY;
		w = 0.0516667 * safezoneW;
		h = 0.0364815 * safezoneH;
		action = "[(ctrlText 107702)] execVM ""deaddem\GovAnnounce.sqf""; closeDialog 0;";
	};
};