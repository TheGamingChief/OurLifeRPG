class D_MDS_Home{
	idd=-1;
	moveEnable = false;
	enableSimulation = true;
	controlsBackground[] = {frame_background};
	objects[] ={};
	controls[] = {frame_background,RscText_1000,combo_playerlist,frame_civ_background,RscText_1001,list_warrants,frame_Results,RscText_1003,list_license,list_notes,RscText_1002,RscText_1004,RscText_1005,RscShortcutButton_1700,RscFrame_1802,RscText_1006,RscShortcutButton_1701,RscShortcutButton_1702,RscShortcutButton_1703,RscFrame_1804,RscFrame_1805,RscFrame_1806};
	onUnLoad = "D_Result_Warrants = []; D_Result_Notes = []; D_Result_License = []";//Unloading the variables.
		class frame_background: RscBackground
		{
			idc = 1800;
			x = 0.180209 * safezoneW + safezoneX;
			y = 0.180556 * safezoneH + safezoneY;
			w = 0.625104 * safezoneW;
			h = 0.668889 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Cicada Police Department Mobile Police Data System";
			x = 0.419791 * safezoneW + safezoneX;
			y = 0.19074 * safezoneH + safezoneY;
			w = 0.234479 * safezoneW;
			h = 0.0512965 * safezoneH;
		};
		class combo_playerlist: RscCombo
		{
			idc = 1;
			x = 0.197396 * safezoneW + safezoneX;
			y = 0.311112 * safezoneH + safezoneY;
			w = 0.094375 * safezoneW;
			h = 0.0244443 * safezoneH;
		};
		class frame_civ_background: RscFrame
		{
			idc = 1801;
			x = 0.194271 * safezoneW + safezoneX;
			y = 0.250925 * safezoneH + safezoneY;
			w = 0.10323 * safezoneW;
			h = 0.137408 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Civilian Data";
			x = 0.217188 * safezoneW + safezoneX;
			y = 0.243519 * safezoneH + safezoneY;
			w = 0.0735416 * safezoneW;
			h = 0.0596295 * safezoneH;
		};
		class list_warrants: RscListbox
		{
			idc = 2;
			x = 0.322395 * safezoneW + safezoneX;
			y = 0.311111 * safezoneH + safezoneY;
			w = 0.439167 * safezoneW;
			h = 0.112408 * safezoneH;
		};
		class frame_Results: RscFrame
		{
			idc = 1803;
			x = 0.306772 * safezoneW + safezoneX;
			y = 0.250926 * safezoneH + safezoneY;
			w = 0.465728 * safezoneW;
			h = 0.522592 * safezoneH;
		};
		class RscText_1003: D_RscTextTitle
		{
			idc = 1003;
			text = "Civilian Results";
			x = 0.492187 * safezoneW + safezoneX;
			y = 0.244447 * safezoneH + safezoneY;
			w = 0.07875 * safezoneW;
			h = 0.0448149 * safezoneH;
		};
		class list_license: RscListbox
		{
			idc = 3;
			x = 0.322135 * safezoneW + safezoneX;
			y = 0.476343 * safezoneH + safezoneY;
			w = 0.439167 * safezoneW;
			h = 0.112408 * safezoneH;
		};
		class list_notes: RscListbox
		{
			idc = 4;
			x = 0.321875 * safezoneW + safezoneX;
			y = 0.635185 * safezoneH + safezoneY;
			w = 0.439167 * safezoneW;
			h = 0.10963 * safezoneH;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Active Warrants";
			x = 0.488541 * safezoneW + safezoneX;
			y = 0.269444 * safezoneH + safezoneY;
			w = 0.0766667 * safezoneW;
			h = 0.0522222 * safezoneH;
		};
		class RscText_1004: RscText
		{
			idc = 1004;
			text = "Active Licenses";
			x = 0.484896 * safezoneW + safezoneX;
			y = 0.427778 * safezoneH + safezoneY;
			w = 0.075625 * safezoneW;
			h = 0.0522222 * safezoneH;
		};
		class RscText_1005: RscText
		{
			idc = 1005;
			text = "Previous Notes";
			x = 0.491146 * safezoneW + safezoneX;
			y = 0.594445 * safezoneH + safezoneY;
			w = 0.0714583 * safezoneW;
			h = 0.054074 * safezoneH;
		};
		class RscShortcutButton_1700: RscShortcutButton
		{
			idc = 1700;
			text = "Run Search";
			x = 0.198958 * safezoneW + safezoneX;
			y = 0.333334 * safezoneH + safezoneY;
			w = 0.0943747 * safezoneW;
			h = 0.0614815 * safezoneH;
			action = "[""mdc_fill_home"",lbCurSel 1] execVM ""deaddem\mds\mds_func.sqf""; closeDialog 0;";
		};
		class RscFrame_1802: RscFrame
		{
			idc = 1802;
			x = 0.195313 * safezoneW + safezoneX;
			y = 0.411111 * safezoneH + safezoneY;
			w = 0.102709 * safezoneW;
			h = 0.197593 * safezoneH;
		};
		class RscText_1006: RscText
		{
			idc = 1006;
			text = "Civilian Actions";
			x = 0.209896 * safezoneW + safezoneX;
			y = 0.419445 * safezoneH + safezoneY;
			w = 0.0771875 * safezoneW;
			h = 0.042963 * safezoneH;
		};
		class RscShortcutButton_1701: RscShortcutButton
		{
			idc = 1701;
			text = "Submit Warrant";
			x = 0.198958 * safezoneW + safezoneX;
			y = 0.449074 * safezoneH + safezoneY;
			w = 0.0990625 * safezoneW;
			h = 0.0614814 * safezoneH;
			action = "[""mds_open_warrant"",lbCurSel 1] execVM ""deaddem\mds\mds_func.sqf"";closeDialog 0;";
		};
		class RscShortcutButton_1702: RscShortcutButton
		{
			idc = 1702;
			text = "Submit Note";
			x = 0.198958 * safezoneW + safezoneX;
			y = 0.488889 * safezoneH + safezoneY;
			w = 0.0980207 * safezoneW;
			h = 0.0614814 * safezoneH;
			action = "[""mds_open_notes"",lbCurSel 1] execVM ""deaddem\mds\mds_func.sqf"";closeDialog 0;";
		};
		class RscShortcutButton_1703: RscShortcutButton
		{
			idc = 1703;
			text = "Clear Warrants";
			x = 0.199479 * safezoneW + safezoneX;
			y = 0.525926 * safezoneH + safezoneY;
			w = 0.0985417 * safezoneW;
			h = 0.0642591 * safezoneH;
			action = "call fn_ClearWarrants; closeDialog 0;";
		};
		class RscFrame_1804: RscFrame
		{
			idc = 1804;
			x = 0.31875 * safezoneW + safezoneX;
			y = 0.471296 * safezoneH + safezoneY;
			w = 0.449583 * safezoneW;
			h = 0.13 * safezoneH;
		};
		class RscFrame_1805: RscFrame
		{
			idc = 1805;
			x = 0.31875 * safezoneW + safezoneX;
			y = 0.62963 * safezoneH + safezoneY;
			w = 0.448542 * safezoneW;
			h = 0.13 * safezoneH;
		};
		class RscFrame_1806: RscFrame
		{
			idc = 1806;
			x = 0.320833 * safezoneW + safezoneX;
			y = 0.309259 * safezoneH + safezoneY;
			w = 0.4475 * safezoneW;
			h = 0.123519 * safezoneH;
		};
};

class D_MDS_SubmitWarrant{
	idd=-1;
	controlsBackground[] = {};
	objects[] = {};
	controls[] = {RscFrame_1800,RscText_1000,RscEdit_1400,RscShortcutButton_1700};
 		class RscFrame_1800: RscBackground
		{
			idc = 1800;
			x = 0.331771 * safezoneW + safezoneX;
			y = 0.447222 * safezoneH + safezoneY;
			w = 0.340209 * safezoneW;
			h = 0.127222 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Submit Warrant";
			x = 0.461458 * safezoneW + safezoneX;
			y = 0.458333 * safezoneH + safezoneY;
			w = 0.0823958 * safezoneW;
			h = 0.0411112 * safezoneH;
		};
		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			x = 0.377604 * safezoneW + safezoneX;
			y = 0.500926 * safezoneH + safezoneY;
			w = 0.219895 * safezoneW;
			h = 0.0253702 * safezoneH;
		};
		class RscShortcutButton_1700: RscShortcutButton
		{
			idc = 1700;
			text = "Submit Query";
			x = 0.442187 * safezoneW + safezoneX;
			y = 0.523148 * safezoneH + safezoneY;
			w = 0.101667 * safezoneW;
			h = 0.0605556 * safezoneH;
			action = "[""mds_submit_warrant"",CtrlText 1400] execVM ""deaddem\mds\mds_func.sqf""; closeDialog 0;";
		};
};

class D_MDS_SubmitNote{
	idd=-1;
	controlsBackground[] = {};
	objects[] = {};
	controls[] = {RscFrame_1800,RscText_1000,RscEdit_1400,RscShortcutButton_1700};
 		class RscFrame_1800: RscBackground
		{
			idc = 1800;
			x = 0.331771 * safezoneW + safezoneX;
			y = 0.447222 * safezoneH + safezoneY;
			w = 0.340209 * safezoneW;
			h = 0.127222 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Submit Warrant";
			x = 0.461458 * safezoneW + safezoneX;
			y = 0.458333 * safezoneH + safezoneY;
			w = 0.0823958 * safezoneW;
			h = 0.0411112 * safezoneH;
		};
		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			x = 0.377604 * safezoneW + safezoneX;
			y = 0.500926 * safezoneH + safezoneY;
			w = 0.219895 * safezoneW;
			h = 0.0253702 * safezoneH;
		};
		class RscShortcutButton_1700: RscShortcutButton
		{
			idc = 1700;
			text = "Submit Query";
			x = 0.442187 * safezoneW + safezoneX;
			y = 0.523148 * safezoneH + safezoneY;
			w = 0.101667 * safezoneW;
			h = 0.0605556 * safezoneH;
			action = "[""mds_submit_notes"",CtrlText 1400] execVM ""deaddem\mds\mds_func.sqf""; closeDialog 0;";
		};
};

class D_MDS_Revoke {
	idd=-1;
	controlsBackground[] ={};
	objects[] = {};
	controls[] ={RscFrame_1800, RscText_1000, RscShortcutButton_1700, RscListbox_1500};
	class RscFrame_1800: RscBackground
	{
		idc = 1800;
		x = 0.346875 * safezoneW + safezoneX;
		y = 0.261111 * safezoneH + safezoneY;
		w = 0.307397 * safezoneW;
		h = 0.444815 * safezoneH;
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Revoke License";
		x = 0.451042 * safezoneW + safezoneX;
		y = 0.271296 * safezoneH + safezoneY;
		w = 0.0823958 * safezoneW;
		h = 0.0411112 * safezoneH;
	};
	class RscShortcutButton_1700: RscShortcutButton
	{
		idc = 1700;
		text = "Submit Query";
		x = 0.451562 * safezoneW + safezoneX;
		y = 0.655555 * safezoneH + safezoneY;
		w = 0.101667 * safezoneW;
		h = 0.0605556 * safezoneH;
		action = "[""mds_revoke_license"",lbCurSel 1] execVM ""deaddem\mds\mds_func.sqf"";";
	};
	class RscListbox_1500: RscListbox
	{
		idc = 1;
		x = 0.358333 * safezoneW + safezoneX;
		y = 0.309259 * safezoneH + safezoneY;
		w = 0.278229 * safezoneW;
		h = 0.358704 * safezoneH;
	};
};