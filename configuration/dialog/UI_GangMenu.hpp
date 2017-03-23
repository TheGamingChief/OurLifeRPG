class UI_GangMenu {
	idd = -1;
  controlsBackground[] = {UI_GangMenu_Background};
	controls[] = {
    UI_GangMenu_btnCreate,
    UI_GangMenu_btnLeave,
    UI_GangMenu_btnJoin,
    UI_GangMenu_btnManage,
    UI_GangMenu_List
  };

	class UI_GangMenu_Background: RscBackground
	{
		idc = 1800;
		x = 0.345831 * safezoneW + safezoneX;
		y = 0.429481 * safezoneH + safezoneY;
		w = 0.308339 * safezoneW;
		h = 0.141038 * safezoneH;
	};
	class UI_GangMenu_btnCreate: RscButton
	{
		idc = 1600;
		text = "Create Gang";
		action = "closeDialog 0; createDialog ""UI_GangCreateMenu"";";
		x = 0.351337 * safezoneW + safezoneX;
		y = 0.441234 * safezoneH + safezoneY;
		w = 0.0660726 * safezoneW;
		h = 0.0235063 * safezoneH;
	};
	class UI_GangMenu_btnLeave: RscButton
	{
		idc = 1601;
		text = "Leave Gang";
		action = "closeDialog 0; [] call OL_gangs_Leave;";
		x = 0.428421 * safezoneW + safezoneX;
		y = 0.441234 * safezoneH + safezoneY;
		w = 0.0660726 * safezoneW;
		h = 0.0235063 * safezoneH;
	};
	class UI_GangMenu_btnJoin: RscButton
	{
		idc = 1602;
		text = "Join Gang";
		action = "closeDialog 0; [] call OL_gangs_Join;";
		x = 0.505506 * safezoneW + safezoneX;
		y = 0.441234 * safezoneH + safezoneY;
		w = 0.0660726 * safezoneW;
		h = 0.0235063 * safezoneH;
	};
	class UI_GangMenu_btnManage: RscButton
	{
		idc = 1603;
		text = "Manage Gang";
		action = "closeDialog 0; [] call OL_gangs_Manage;";
		x = 0.582591 * safezoneW + safezoneX;
		y = 0.441234 * safezoneH + safezoneY;
		w = 0.0660726 * safezoneW;
		h = 0.0235063 * safezoneH;
	};
	class UI_GangMenu_List: RscListbox
	{
		idc = 1500;
		x = 0.351337 * safezoneW + safezoneX;
		y = 0.476494 * safezoneH + safezoneY;
		w = 0.297327 * safezoneW;
		h = 0.0822721 * safezoneH;
	};
};

class UI_GangCreateMenu {
	idd = -1;
  controlsBackground[] = {UI_GangCreateMenu_Background};
	controls[] = {
    UI_GangCreateMenu_Header,
    UI_GangCreateMenu_Text,
    UI_GangCreateMenu_btnCreate,
    UI_GangCreateMenu_btnExit
  };

	class UI_GangCreateMenu_Background: RscBackground
	{
		idc = 1800;
		x = 0.422915 * safezoneW + safezoneX;
		y = 0.429481 * safezoneH + safezoneY;
		w = 0.154169 * safezoneW;
		h = 0.141038 * safezoneH;
	};
	class UI_GangCreateMenu_Header: RscText
	{
		idc = 1000;
		text = "To Create A Gang It Costs: $125000";
		x = 0.428421 * safezoneW + safezoneX;
		y = 0.441234 * safezoneH + safezoneY;
		w = 0.143157 * safezoneW;
		h = 0.0352595 * safezoneH;
	};
	class UI_GangCreateMenu_Text: RscEdit
	{
		idc = 1400;
		x = 0.428421 * safezoneW + safezoneX;
		y = 0.488247 * safezoneH + safezoneY;
		w = 0.143157 * safezoneW;
		h = 0.0352595 * safezoneH;
		onChar = "[_this, 1400] call OL_ISSE_TastenDruck;";
	};
	class UI_GangCreateMenu_btnCreate: RscButton
	{
		idc = 1600;
		text = "Create";
		action = "closeDialog 0; [(ctrlText 1400)] call OL_gangs_Create;";
		x = 0.428421 * safezoneW + safezoneX;
		y = 0.535259 * safezoneH + safezoneY;
		w = 0.0605666 * safezoneW;
		h = 0.0235063 * safezoneH;
	};
	class UI_GangCreateMenu_btnExit: RscButton
	{
		idc = 1601;
		text = "Exit";
		action = "closeDialog 0;";
		x = 0.511012 * safezoneW + safezoneX;
		y = 0.535259 * safezoneH + safezoneY;
		w = 0.0605666 * safezoneW;
		h = 0.0235063 * safezoneH;
	};
};
