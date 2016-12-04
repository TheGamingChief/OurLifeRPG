class DD_PolicePC{
	idd=-1;
	onLoad = "";
	onUnload = "DD_CurrentCiv = nil;";


	class controls{
		class RscFrame_1800: RscBackground
{
	idc = 1800;

	x = 0.304984 * safezoneW + safezoneX;
	y = 0.232692 * safezoneH + safezoneY;
	w = 0.383825 * safezoneW;
	h = 0.500384 * safezoneH;
};
class RscFrame_1801: RscBackground
{
	idc = 1801;

	x = 0.189588 * safezoneW + safezoneX;
	y = 0.225 * safezoneH + safezoneY;
	w = 0.10554 * safezoneW;
	h = 0.09625 * safezoneH;
};
class RscListbox_1500: RscListBox
{
	idc = 1500;

	x = 0.304636 * safezoneW + safezoneX;
	y = 0.231731 * safezoneH + safezoneY;
	w = 0.38491 * safezoneW;
	h = 0.500096 * safezoneH;
};
class RscCombo_2100: RscCombo
{
	idc = 2100;

	x = 0.195797 * safezoneW + safezoneX;
	y = 0.23875 * safezoneH + safezoneY;
	w = 0.0931235 * safezoneW;
	h = 0.0275 * safezoneH;
};
class RscFrame_1802: RscBackground
{
	idc = 1802;

	x = 0.189588 * safezoneW + safezoneX;
	y = 0.34875 * safezoneH + safezoneY;
	w = 0.10554 * safezoneW;
	h = 0.383365 * safezoneH;
};
class RscButton_1600: RscButton
{
	idc = 1600;
	action = "[lbCursel 1500] call DD_MDC_DeleteEntry;";

	text = "Delete Warrant";
	x = 0.195797 * safezoneW + safezoneX;
	y = 0.3625 * safezoneH + safezoneY;
	w = 0.0931235 * safezoneW;
	h = 0.04125 * safezoneH;
};
class RscButton_1601: RscButton
{
	idc = 1601;
	action = " _l = createDialog ""DD_NotesPC""; buttonSetAction[1600, ""[(ctrlText 1400)] call DD_MDC_AddWarrant""];";

	text = "Create Warrant";
	x = 0.195797 * safezoneW + safezoneX;
	y = 0.4175 * safezoneH + safezoneY;
	w = 0.0931235 * safezoneW;
	h = 0.04125 * safezoneH;
};
class RscButton_1602: RscButton
{
	idc = 1602;
	action = "_l = createDialog ""DD_NotesPC""; buttonSetAction[1600, ""[(ctrlText 1400)] call DD_MDC_AddNote""];";

	text = "Create Note";
	x = 0.195797 * safezoneW + safezoneX;
	y = 0.4725 * safezoneH + safezoneY;
	w = 0.0931235 * safezoneW;
	h = 0.04125 * safezoneH;
};
class RscButton_1603: RscButton
{
	idc = 1603;
	action = "[lbCursel 1500] call DD_MDC_LicenseMenu;";

	text = "Revoke License";
	x = 0.195797 * safezoneW + safezoneX;
	y = 0.5275 * safezoneH + safezoneY;
	w = 0.0931235 * safezoneW;
	h = 0.04125 * safezoneH;
};
class RscButton_1604: RscButton
{
	idc = 1606;
	action = "[lbCursel 2100] call DD_MDC_RunSearch";

	text = "Run Search";
	x = 0.193149 * safezoneW + safezoneX;
	y = 0.2875 * safezoneH + safezoneY;
	w = 0.0983332 * safezoneW;
	h = 0.0258654 * safezoneH;
};
class RscButton_164: RscButton
{
	idc = 164;
	action = "[] call DD_MDC_NoteMenu;";

	text = "Delete Note";
	x = 0.195797 * safezoneW + safezoneX;
	y = 0.5825 * safezoneH + safezoneY;
	w = 0.0931235 * safezoneW;
	h = 0.04125 * safezoneH;
};


		/*class RscButton_1605: RscButton
		{
			idc = 1605;
			text = "Delete Entry";
			x = 0.195797 * safezoneW + safezoneX;
			y = 0.6375 * safezoneH + safezoneY;
			w = 0.0931235 * safezoneW;
			h = 0.04125 * safezoneH;
		};
		class RscButton_1606: RscButton
		{
			idc = 1606;
			text = "Delete Entry";
			x = 0.195797 * safezoneW + safezoneX;
			y = 0.6925 * safezoneH + safezoneY;
			w = 0.0931235 * safezoneW;
			h = 0.04125 * safezoneH;
		};*/

	};
};



class DD_NotesPC{
	idc	 = -1;


	class controls{
		class RscFrame_1800: RscBackground
		{
			idc = 1800;
			x = 0.30151 * safezoneW + safezoneX;
			y = 0.279808 * safezoneH + safezoneY;
			w = 0.397639 * safezoneW;
			h = 0.191538 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Enter in information";
			x = 0.449466 * safezoneW + safezoneX;
			y = 0.304807 * safezoneH + safezoneY;
			w = 0.120483 * safezoneW;
			h = 0.0261538 * safezoneH;
		};
		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			x = 0.314014 * safezoneW + safezoneX;
			y = 0.342308 * safezoneH + safezoneY;
			w = 0.37107 * safezoneW;
			h = 0.0376924 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Submit Data";
			x = 0.431709 * safezoneW + safezoneX;
			y = 0.40375 * safezoneH + safezoneY;
			w = 0.151741 * safezoneW;
			h = 0.0415385 * safezoneH;
		};

	};
};

class DD_LicensePC{
	idd=-1;
	class controls{
	class RscFrame_1800: RscBackground
	{
		idc = 1800;
		x = 0.419293 * safezoneW + safezoneX;
		y = 0.28 * safezoneH + safezoneY;
		w = 0.157993 * safezoneW;
		h = 0.436731 * safezoneH;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Revoke License";
		x = 0.437483 * safezoneW + safezoneX;
		y = 0.639423 * safezoneH + safezoneY;
		w = 0.117956 * safezoneW;
		h = 0.04125 * safezoneH;
		action="[lbCursel 1500] call DD_MDC_RevokeLicense;";
	};
	class RscListbox_1500: RscListbox
	{
		idc = 1500;
		x = 0.419293 * safezoneW + safezoneX;
		y = 0.28 * safezoneH + safezoneY;
		w = 0.155206 * safezoneW;
		h = 0.34375 * safezoneH;
	};
	};
};