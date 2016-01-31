class D_MDC_Open{
	idd=-1;
	moveEnable = true;
	controlsBackground[] = {};
	objects[] = {};
	controls[]={RscFrame_1800,RscEdit_1400,RscText_1000,RscText_1001,RscShortcutButton_1700};

	class RscFrame_1800: RscBackground
	{
		idc = 1800;
		x = 0.344792 * safezoneW + safezoneX;
		y = 0.278704 * safezoneH + safezoneY;
		w = 0.257813 * safezoneW;
		h = 0.1375 * safezoneH;
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1400;
		x = 0.435547 * safezoneW + safezoneX;
		y = 0.335 * safezoneH + safezoneY;
		w = 0.116016 * safezoneW;
		h = 0.0275 * safezoneH;
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Enter Civ #ID";
		x = 0.364648 * safezoneW + safezoneX;
		y = 0.335 * safezoneH + safezoneY;
		w = 0.0644531 * safezoneW;
		h = 0.0275 * safezoneH;
	};
	class RscText_1001: RscText
	{
		idc = 1001;
		text = "Mobile Data Center";
		x = 0.422656 * safezoneW + safezoneX;
		y = 0.29375 * safezoneH + safezoneY;
		w = 0.0902344 * safezoneW;
		h = 0.04125 * safezoneH;
	};
	class RscShortcutButton_1700: RscShortcutButton
	{
		idc = 1700;
		text = "Run Query";
		x = 0.436458 * safezoneW + safezoneX;
		y = 0.364814 * safezoneH + safezoneY;
		w = 0.0831381 * safezoneW;
		h = 0.0633334 * safezoneH;
		action = "[""mdc_results"", (ctrlText 1400)] execVM ""deaddem\mdcfuncs.sqf"";closeDialog 0; ";
	};
};

class D_MDC_results{
	idd=-1;
	moveEnable = true;
	objects[] = {};
	controlsBackground[]={};
	controls[] =  {RscFrame_1800,RscText_1001,RscText_1000,RscListbox_1500,RscListbox_1501,RscShortcutButton_1700,RscShortcutButton_1701};
		class RscFrame_1800: RscBackground
		{
			idc = 1800;
			x = 0.344792 * safezoneW + safezoneX;
			y = 0.278704 * safezoneH + safezoneY;
			w = 0.313542 * safezoneW;
			h = 0.448611 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "#NAME";
			x = 0.450065 * safezoneW + safezoneX;
			y = 0.333148 * safezoneH + safezoneY;
			w = 0.0644531 * safezoneW;
			h = 0.0275 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Profile Results";
			x = 0.46901 * safezoneW + safezoneX;
			y = 0.296528 * safezoneH + safezoneY;
			w = 0.0902344 * safezoneW;
			h = 0.04125 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.359375 * safezoneW + safezoneX;
			y = 0.364815 * safezoneH + safezoneY;
			w = 0.140729 * safezoneW;
			h = 0.283704 * safezoneH;
		};
		class RscListbox_1501: RscListbox
		{
			idc = 1501;
			x = 0.513541 * safezoneW + safezoneX;
			y = 0.364815 * safezoneH + safezoneY;
			w = 0.139167 * safezoneW;
			h = 0.272593 * safezoneH;
		};
		class RscShortcutButton_1700: RscShortcutButton
		{
			idc = 1700;
			text = "Submit Warrant";
			x = 0.360416 * safezoneW + safezoneX;
			y = 0.651852 * safezoneH + safezoneY;
			w = 0.0990625 * safezoneW;
			h = 0.0614816 * safezoneH;
			action = "[""mdc_inputwarrant"", (ctrlText 1000)] execVM ""deaddem\mdcfuncs.sqf""; closeDialog 0;";
		};
		class RscShortcutButton_1701: RscShortcutButton
		{
			idc = 1701;
			text = "Submit Note";
			x = 0.540299 * safezoneW + safezoneX;
			y = 0.650324 * safezoneH + safezoneY;
			w = 0.0902078 * safezoneW;
			h = 0.0624074 * safezoneH;
			action = "[""mdc_inputnote"", (ctrlText 1)] execVM ""deaddem\mdcfuncs.sqf""; closeDialog 0;";
		};
};

class D_MDC_inputwarrant {
	idd=-1;
	controlsBackground[] = {};
	objects[] = {};
	controls[] = {RscFrame_1800,RscText_1000,RscEdit_1400,RscShortcutButton_1700};
	class RscFrame_1800: RscBackground
	{
		idc = 1800;
		x = 0.409896 * safezoneW + safezoneX;
		y = 0.379629 * safezoneH + safezoneY;
		w = 0.208958 * safezoneW;
		h = 0.137408 * safezoneH;
	};
	class RscText_1000: RscText
	{
		idc = 1;
		text = "#TITLE";
		x = 0.464192 * safezoneW + safezoneX;
		y = 0.389213 * safezoneH + safezoneY;
		w = 0.121979 * safezoneW;
		h = 0.03 * safezoneH;
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1400;
		x = 0.43125 * safezoneW + safezoneX;
		y = 0.427777 * safezoneH + safezoneY;
		w = 0.161562 * safezoneW;
		h = 0.0309259 * safezoneH;
	};
	class RscShortcutButton_1700: RscShortcutButton
	{
		idc = 1700;
		text = "Submit Query";
		x = 0.469271 * safezoneW + safezoneX;
		y = 0.45463 * safezoneH + safezoneY;
		w = 0.0902084 * safezoneW;
		h = 0.0587037 * safezoneH;
		action = "[""mdc_inputwarrant_submit"",(ctrlText 1400)] execVM ""deaddem\mdcfuncs.sqf""; closeDialog 0;";
	};

};
class D_MDC_inputnote {
	idd=-1;
	controlsBackground[] = {};
	objects[] = {};
	controls[] = {RscFrame_1800,RscText_1000,RscEdit_1400,RscShortcutButton_1700};
	class RscFrame_1800: RscBackground
	{
		idc = 1800;
		x = 0.409896 * safezoneW + safezoneX;
		y = 0.379629 * safezoneH + safezoneY;
		w = 0.208958 * safezoneW;
		h = 0.137408 * safezoneH;
	};
	class RscText_1000: RscText
	{
		idc = 1;
		text = "#TITLE";
		x = 0.464192 * safezoneW + safezoneX;
		y = 0.389213 * safezoneH + safezoneY;
		w = 0.121979 * safezoneW;
		h = 0.03 * safezoneH;
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1400;
		x = 0.43125 * safezoneW + safezoneX;
		y = 0.427777 * safezoneH + safezoneY;
		w = 0.161562 * safezoneW;
		h = 0.0309259 * safezoneH;
	};
	class RscShortcutButton_1700: RscShortcutButton
	{
		idc = 1700;
		text = "Submit Query";
		x = 0.469271 * safezoneW + safezoneX;
		y = 0.45463 * safezoneH + safezoneY;
		w = 0.0902084 * safezoneW;
		h = 0.0587037 * safezoneH;
		action = "[""mdc_inputnote_submit"", (ctrlText 1400)] execVM ""deaddem\mdcfuncs.sqf""; closeDialog 0;";
	};

};