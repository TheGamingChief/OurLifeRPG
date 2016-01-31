// Call 911 Menu
class Call911{
	idd = 107701;
	moveEnable = true;
	controlsBackground[] = {RscFrame_1800};
	objects[] = {};
	controls[] = {RscFrame_1800,RscEdit_1400,RscText_1000,RscButton_1600};

	class RscFrame_1800: RscBackground
	{
		idc = -1;
		x = 0.383334 * safezoneW + safezoneX;
		y = 0.450927 * safezoneH + safezoneY;
		w = 0.260001 * safezoneW;
		h = 0.110554 * safezoneH;
		colorBackgroundActive[] = {255,255,255,255,255};
	};
	class RscEdit_1400: RscEdit
	{
		idc = 107721;
		x = 0.398112 * safezoneW + safezoneX;
		y = 0.489583 * safezoneH + safezoneY;
		w = 0.232396 * safezoneW;
		h = 0.0272221 * safezoneH;
	};
	class RscText_1000: RscText
	{
		idc = -1;
		text = "911 Call Menu";
		x = 0.472222;
		y = 0.380472;
		w = 0.112626;
		h = 0.120202;
	};
	class RscButton_1600: RscButton
	{
		idc = -1;
		text = "Send Message!";
		x = 0.44697;
		y = 0.548821;
		w = 0.156818;
		h = 0.0478114;
		action = "[(ctrlText 107721)] execVM ""deaddem\call911.sqf""; closeDialog 0;";
	};
};