class UI_GangMenuCreate
{
	idd = 2001;
	movingEnable = true;
	controlsBackground[] = {DLG_BACK1, background};
	objects[] = { };
	controls[] = {gildenname, submit, cancel, text_name, dummybutton, hinweis};
	class DLG_BACK1: RscBackground
	{
		x = 0.25;
		y = 0.32;
		w = 0.49;
		h = 0.34;
	};

	class background : RscBgRahmen
	{
		x = 0.25;
		y = 0.32;
		w = 0.49;
		h = 0.34;

		text = $STRD_description_gildegruenden_header;
	};

	class gildenname : RscEdit
	{
		idc = 1;
		x = 0.29;
		y = 0.42;
		w = 0.41;
		h = 0.04;
		onChar = "[_this, 1] call OL_ISSE_TastenDruck;";
	};

	class submit : RscButton
	{
		idc = 2;
		x = 0.29;
		y = 0.47;
		w = 0.20;
		h = 0.04;

		text = $STRD_description_gildegruenden_submit;
    action = "[ctrlText 1] call OL_gangs_Create; closeDialog 0;";
	};

	class cancel : RscButton
	{
		idc = 3;
		x = 0.50;
		y = 0.47;
		w = 0.20;
		h = 0.04;

		text = $STRD_description_cancel;
		action = "closedialog 0;";
	};

	class text_name : RscText
	{
		idc = 4;
		x = 0.29;
		y = 0.37;
		w = 0.20;
		h = 0.04;

		text = $STRD_description_gildegruenden_name;
	};

	class dummybutton : RscDummy
	{
		idc = 1019;
	};

	class hinweis : RscText
	{
		x = 0.29;
		y = 0.52;
		w = 0.41;
		h = 0.12;

		style = ST_MULTI;
		linespacing = 1;
		text = $STRD_description_gildegruenden_hinweis;
	};
};

class UI_GangMenu
{
	idd = -1;
	movingEnable = true;
	controlsBackground[] = {DLG_BACK1, UI_GangMenu_Background};
	objects[] = { };
	controls[] = {UI_GangMenu_btnJoin, UI_GangMenu_btnLeave, UI_GangMenu_btnManage, UI_GangMenu_btnCreate, listbox_gilden, dummybutton};

	class DLG_BACK1: RscBackground
	{
		x = 0.06;
		y = 0.15;
		w = 0.87;
		h = 0.27;
	};

	class UI_GangMenu_Background : RscBgRahmen
	{
		x = 0.06;
		y = 0.15;
		w = 0.87;
		h = 0.27;

		text = "Gangs";
	};

	class UI_GangMenu_btnJoin : RscButton
	{
		x = 0.08;
		y = 0.19;
		w = 0.20;
		h = 0.04;

		text = $STRD_description_gildehauptmenu_button_join;
    action = "[lbData [202, (lbCurSel 202)]] call OL_gangs_join; closeDialog 0;";
	};

	class UI_GangMenu_btnLeave : RscButton
	{
		x = 0.50;
		y = 0.19;
		w = 0.20;
		h = 0.04;

		text = $STRD_description_gildehauptmenu_button_leave;
		action = "[OL_PlayerGangID] call OL_gangs_quit; closeDialog 0;";
	};

	class UI_GangMenu_btnManage : RscButton
	{
		x = 0.29;
		y = 0.19;
		w = 0.20;
		h = 0.04;

		text = $STRD_description_gildehauptmenu_button_manage;
		action = "closeDialog 0; [] call OL_gangs_Manage;";
	};

	class UI_GangMenu_btnCreate : RscButton
	{
		x = 0.71;
		y = 0.19;
		w = 0.20;
		h = 0.04;

		text = "Create Gang";
		action = "closedialog 0; createDialog ""UI_GangMenuCreate"";";
	};

	class listbox_gilden : RscListBox
	{
		idc = 202;
		x = 0.08;
		y = 0.25;
		w = 0.84;
		h = 0.15;
	};

	class dummybutton : RscDummy
	{
		idc = 1018;
	};
};

class UI_GangManager {
	idd = -1;
  controlsBackground[] = {TRG_ui_GM_BG};
	controls[] = {
    TRG_ui_GM_lb,
    TRG_ui_GM_btn_KP,
    TRG_ui_GM_btn_TL,
		TRG_ui_GM_btn_DG,
		TRG_ui_GM_btn_C,
		TRG_ui_GM_GNIT,
		TRG_ui_GM_btn_RG
  };

	class TRG_ui_GM_BG: RscBackground
	{
		idc = 1800;
		x = 0.416188 * safezoneW + safezoneX;
		y = 0.390045 * safezoneH + safezoneY;
		w = 0.167623 * safezoneW;
		h = 0.219911 * safezoneH;
	};
	class TRG_ui_GM_lb: RscListbox
	{
		idc = 1500;
		x = 0.422635 * safezoneW + safezoneX;
		y = 0.403789 * safezoneH + safezoneY;
		w = 0.0709176 * safezoneW;
		h = 0.151189 * safezoneH;
	};
	class TRG_ui_GM_btn_KP: RscButton
	{
		idc = 1600;
		text = "Kick Player";
		action = "[lbData [15009, (lbCurSel 15009)]] call OL_gangs_kick;";
		x = 0.422635 * safezoneW + safezoneX;
		y = 0.568722 * safezoneH + safezoneY;
		w = 0.0709176 * safezoneW;
		h = 0.0274889 * safezoneH;
	};
	class TRG_ui_GM_btn_TL: RscButton
	{
		idc = 1602;
		text = "Toggle Lock";
		action = "[] call OL_gangs_lock; closeDialog 0;";
		x = 0.506447 * safezoneW + safezoneX;
		y = 0.403789 * safezoneH + safezoneY;
		w = 0.0709176 * safezoneW;
		h = 0.0274889 * safezoneH;
	};
	class TRG_ui_GM_btn_DG: RscButton
	{
		idc = 1601;
		text = "Delete Gang";
		action = "[] call OL_gangs_delete; closeDialog 0;";
		x = 0.506447 * safezoneW + safezoneX;
		y = 0.445022 * safezoneH + safezoneY;
		w = 0.0709176 * safezoneW;
		h = 0.0274889 * safezoneH;
	};
	class TRG_ui_GM_btn_C: RscButton
	{
		idc = 1603;
		text = "Close";
		action = "closeDialog 0;";
		x = 0.506447 * safezoneW + safezoneX;
		y = 0.568722 * safezoneH + safezoneY;
		w = 0.0709176 * safezoneW;
		h = 0.0274889 * safezoneH;
	};
	class TRG_ui_GM_GNIT: RscEdit
	{
		idc = 1400;
		x = 0.506447 * safezoneW + safezoneX;
		y = 0.486256 * safezoneH + safezoneY;
		w = 0.0709176 * safezoneW;
		h = 0.0274889 * safezoneH;
	};
	class TRG_ui_GM_btn_RG: RscButton
	{
		idc = 1604;
		text = "Rename Gang";
		action = "[ctrlText 1400] call OL_gangs_rename; closeDialog 0;";
		x = 0.506447 * safezoneW + safezoneX;
		y = 0.527489 * safezoneH + safezoneY;
		w = 0.0709176 * safezoneW;
		h = 0.0274889 * safezoneH;
	};
};
