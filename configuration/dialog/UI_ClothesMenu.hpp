class UI_ClothesMenu {
	idd = -1;
  controlsBackground[] = {UI_ClothesMenu_Background};
	controls[] = {
    UI_ClothesMenu_btnSelect,
    UI_ClothesMenu_btnExit,
    UI_ClothesMenu_List
  };

  class UI_ClothesMenu_Background: RscBackground
  {
  	idc = 1800;
  	//text = "Please Select A Uniform";
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
  class UI_ClothesMenu_List: RscListbox
  {
  	idc = 1500;
  	x = 0.439433 * safezoneW + safezoneX;
  	y = 0.335456 * safezoneH + safezoneY;
  	w = 0.121133 * safezoneW;
  	h = 0.282076 * safezoneH;
  };
};
