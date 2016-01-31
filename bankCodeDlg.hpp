class BankCodeEnterDLG
{
	idd=-1;
	movingEnable=1;
	controlsBackground[]={SAFECODE_BACKGROUND};
	objects[]={};
	controls[]={SAFECODE_MAINFRAME, SAFECODE_INPUTCODEEditbox, SAFECODE_SUBMITButton, SAFECODE_CLOSEButton, SAFECODE_STRCTEXT1};

	class SAFECODE_MAINFRAME: RscFrame
	{
		idc = -1;
		text = " Safe Code-screen ";
		x = 0.393359 * safezoneW + safezoneX;
		y = 0.325 * safezoneH + safezoneY;
		w = 0.229687 * safezoneW;
		h = 0.2275 * safezoneH;
	};
	class SAFECODE_BACKGROUND: RscBackground
	{
		idc = -1;
		x = 0.393359 * safezoneW + safezoneX;
		y = 0.325 * safezoneH + safezoneY;
		w = 0.229687 * safezoneW;
		h = 0.2275 * safezoneH;
	};
	class SAFECODE_INPUTCODEEditbox: RscEdit
	{
		idc = 2920;
		x = 0.417969 * safezoneW + safezoneX;
		y = 0.43 * safezoneH + safezoneY;
		w = 0.180469 * safezoneW;
		h = 0.035 * safezoneH;
	};
	class SAFECODE_SUBMITButton: RscButton
	{
		idc = 1600;
		text = "Open Safe";
		x = 0.417969 * safezoneW + safezoneX;
		y = 0.5 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.035 * safezoneH;
		action = "[""submit""] execVM ""Scripts\Misc\safecodedlgitems.sqf"";";
	};
	class SAFECODE_CLOSEButton: RscButton
	{
		idc = -1;
		text = "Close";
		x = 0.532812 * safezoneW + safezoneX;
		y = 0.5 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.035 * safezoneH;
		action = "closeDialog 0;";
	};
	class SAFECODE_STRCTEXT1: RscStructuredText
	{
		idc = -1;
		text = "Please input the master code!";
		x = 0.417969 * safezoneW + safezoneX;
		y = 0.3775 * safezoneH + safezoneY;
		w = 0.180469 * safezoneW;
		h = 0.035 * safezoneH;
	};
};