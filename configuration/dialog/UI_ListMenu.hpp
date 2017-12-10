class UI_ListMenuSmall {
	idd = 070843;
  controlsBackground[] = {UI_ClothesMenu_Background, UI_ClothesMenu_Frame};
	controls[] = {
    UI_ClothesMenu_btnSelect,
    UI_ClothesMenu_btnExit,
    UI_ClothesMenu_List
  };

  class UI_ClothesMenu_Background: RscBackground
  {
  	idc = 1800;
  	x = 0.433927 * safezoneW + safezoneX;
  	y = 0.323703 * safezoneH + safezoneY;
  	w = 0.132145 * safezoneW;
  	h = 0.340842 * safezoneH;
  };
	class UI_ClothesMenu_Frame: RscFrame
  {
  	idc = 1801;
		colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
  	x = 0.433927 * safezoneW + safezoneX;
  	y = 0.323703 * safezoneH + safezoneY;
  	w = 0.132145 * safezoneW;
  	h = 0.340842 * safezoneH;
  };
  class UI_ClothesMenu_btnSelect: RscButton
  {
  	idc = 1600;
  	text = "Select";
		action = "[lbData [1500, (lbCurSel 1500)]] spawn OL_fnc_Clothes;closeDialog 0;";
  	x = 0.439433 * safezoneW + safezoneX;
  	y = 0.629285 * safezoneH + safezoneY;
  	w = 0.0550605 * safezoneW;
  	h = 0.0235063 * safezoneH;
  };
  class UI_ClothesMenu_btnExit: RscButton
  {
  	idc = 1602;
  	text = "Exit";
		action = "closeDialog 0;";
  	x = 0.505506 * safezoneW + safezoneX;
  	y = 0.629285 * safezoneH + safezoneY;
  	w = 0.0550605 * safezoneW;
  	h = 0.0235063 * safezoneH;
  };
  class UI_ClothesMenu_List: DA_Listbox
  {
  	idc = 1500;
  	x = 0.439433 * safezoneW + safezoneX;
  	y = 0.335456 * safezoneH + safezoneY;
  	w = 0.121133 * safezoneW;
  	h = 0.282076 * safezoneH;
  };
};

class UI_ListMenuBig {
	idd = -1;
  controlsBackground[] = {TRG_ui_LMB_BG, TRG_ui_LMB_Frame};
	controls[] = {
    TRG_ui_LMB_lb,
    TRG_ui_LMB_btnS,
    TRG_ui_LMB_btnC,
		TRG_ui_LMB_btnM
  };

	class TRG_ui_LMB_BG: RscBackground
	{
		idc = 1800;
		x = 0.371071 * safezoneW + safezoneX;
		y = 0.280089 * safezoneH + safezoneY;
		w = 0.270751 * safezoneW;
		h = 0.439822 * safezoneH;
	};
	class TRG_ui_LMB_Frame: RscFrame
	{
		idc = 1801;
		colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
		x = 0.371071 * safezoneW + safezoneX;
		y = 0.280089 * safezoneH + safezoneY;
		w = 0.270751 * safezoneW;
		h = 0.439822 * safezoneH;
	};
	class TRG_ui_LMB_lb: DA_Listbox
	{
		idc = 1500;
		x = 0.377517 * safezoneW + safezoneX;
		y = 0.293834 * safezoneH + safezoneY;
		w = 0.257858 * safezoneW;
		h = 0.3711 * safezoneH;
	};
	class TRG_ui_LMB_btnS: RscButton
	{
		idc = 1600;
		text = "Select";
		x = 0.377517 * safezoneW + safezoneX;
		y = 0.678677 * safezoneH + safezoneY;
		w = 0.0709109 * safezoneW;
		h = 0.0274889 * safezoneH;
	};

	class TRG_ui_LMB_btnM: RscEdit
	{
		idc = 1601;
		text = "1";
		x = 0.470991 * safezoneW + safezoneX;
		y = 0.678677 * safezoneH + safezoneY;
		w = 0.0709109 * safezoneW;
		h = 0.0274889 * safezoneH;
	};
	class TRG_ui_LMB_btnC: RscButton
	{
		idc = 1602;
		text = "Close";
		action = "closeDialog 0";
		x = 0.564465 * safezoneW + safezoneX;
		y = 0.678677 * safezoneH + safezoneY;
		w = 0.0709109 * safezoneW;
		h = 0.0274889 * safezoneH;
	};
};
