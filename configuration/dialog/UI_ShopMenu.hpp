class UI_ShopMenu {
  idd = -1;
  movingEnable = true;
  objects[] = { };
  onUnload = "if ((_this select 1) == 2) then { [3, 1] spawn fnc_CloseShop }; true;";

  class controlsBackground {
  	class DLG_BACK1: RscBackground {
    	x = 0.02;
      y = 0.07;
    	w = 0.46;
      h = 0.63;
  	};
  	class DLG_BACK2: RscBackground {
    	x = 0.51;
      y = 0.07;
    	w = 0.46;
      h = 0.63;
  	};
  	class background1 : RscBgRahmen {
      idc = 91;
      colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
      text = $STRD_inv_description_itemmenu_title;
    	x = 0.02;
      y = 0.07;
    	w = 0.46;
      h = 0.63;
  	};
    class background2 : RscBgRahmen {
      idc = 92;
      colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
      text = $STRD_inv_description_itemmenu_title2;
      x = 0.51;
      y = 0.07;
    	w = 0.46;
      h = 0.63;
  	};
  };

  class controls {
  	class itemliste : DA_ListBox {
    	idc = 1;
      onLBSelChanged = "[] call Shops_fnc_UpdateText;";
    	x = 0.04;
      y = 0.10;
    	w = 0.42;
      h = 0.48;
  	};
  	class itemeingabe : RscEdit {
    	idc = 2;
      text = "1";
      colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
      onKeyDown = "[] call Shops_fnc_UpdateText;";
      onKeyUp = "[] call Shops_fnc_UpdateText;";
    	x = 0.04;
      y = 0.60;
    	w = 0.20;
      h = 0.04;
  	};
  	class submit : RscButton {
    	idc = 3;
    	x = 0.25;
      y = 0.60;
    	w = 0.20;
      h = 0.04;
  	};
  	class cancel : RscButton {
    	x = 0.25;
      y = 0.65;
    	w = 0.20;
      h = 0.04;
    	text = "Back";
    	action = "closedialog 0";
  	};
  	class weight : RscText {
    	idc = 765;
      colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
    	x = 0.04;
      y = 0.65;
    	w = 0.20;
      h = 0.04;
  	};
  	class cancel2 : RscButton {
    	x = 0.74;
    	y = 0.65;
    	w = 0.20;
    	h = 0.04;
    	text = "Back";
    	action = "closedialog 0;";
  	};
  	class submit2 : RscButton { // Sell button
    	idc = 103;
    	x = 0.74;
      y = 0.60;
    	w = 0.20;
      h = 0.04;
  	};
  	class itemeingabe2 : RscEdit {
    	idc = 102;
      colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
    	x = 0.53;
      y = 0.60;
    	w = 0.20;
      h = 0.04;
    	text = "1";
      onKeyDown = "[] call Shops_fnc_UpdateText;";
      onKeyUp = "[] call Shops_fnc_UpdateText;";
  	};
  	class itemliste2 : DA_ListBox { // sell list
    	idc = 101;
      onLBSelChanged = "[] call Shops_fnc_UpdateText;";
    	w = 0.42;
      h = 0.48;
    	x = 0.53;
      y = 0.10;
  	};
  	class text_inventargeld : RscText {
    	idc = 100;
    	x = 0.04;
      y = 0.65;
    	w = 0.20;
      h = 0.04;
  	};
  };
};

class UI_ShopList {
	idd = 070843;
  movingEnable = true;
  onKeyDown = "[2, _this select 1] spawn fnc_CloseShop; true;";

  class controlsBackground {
    class UI_ShopList_Background: RscBackground
    {
    	idc = 1800;
    	x = 0.433927 * safezoneW + safezoneX;
    	y = 0.323703 * safezoneH + safezoneY;
    	w = 0.132145 * safezoneW;
    	h = 0.340842 * safezoneH;
    };
    class UI_ShopList_Frame: RscFrame
    {
    	idc = 1801;
  		colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
    	x = 0.433927 * safezoneW + safezoneX;
    	y = 0.323703 * safezoneH + safezoneY;
    	w = 0.132145 * safezoneW;
    	h = 0.340842 * safezoneH;
    };
  };

  class controls {
    class UI_ShopList_btnSelect: RscButton
    {
    	idc = 1600;
    	text = "Select";
  		action = "[lbData [1500, lbCurSel 1500]] call Shops_fnc_DisplayCategory;";
    	x = 0.439433 * safezoneW + safezoneX;
    	y = 0.629285 * safezoneH + safezoneY;
    	w = 0.0550605 * safezoneW;
    	h = 0.0235063 * safezoneH;
    };
    class UI_ShopList_btnExit: RscButton
    {
    	idc = 1602;
    	text = "Back";
  		action = "closeDialog 0;";
    	x = 0.505506 * safezoneW + safezoneX;
    	y = 0.629285 * safezoneH + safezoneY;
    	w = 0.0550605 * safezoneW;
    	h = 0.0235063 * safezoneH;
    };
    class UI_ShopList_List: DA_Listbox
    {
    	idc = 1500;
      onLBDblClick = "[lbData [1500, lbCurSel 1500]] call Shops_fnc_DisplayCategory;";
    	x = 0.439433 * safezoneW + safezoneX;
    	y = 0.335456 * safezoneH + safezoneY;
    	w = 0.121133 * safezoneW;
    	h = 0.282076 * safezoneH;
    };
  };
};

class UI_ShopCatList {
	idd = 070843;
  movingEnable = true;
  onKeyDown = "[3, _this select 1] spawn fnc_CloseShop; true;";

  class controlsBackground {
    class UI_ShopCatList_Background: RscBackground
    {
    	idc = 1800;
    	x = 0.433927 * safezoneW + safezoneX;
    	y = 0.323703 * safezoneH + safezoneY;
    	w = 0.132145 * safezoneW;
    	h = 0.340842 * safezoneH;
    };
    class UI_ShopCatList_Frame: RscFrame
    {
    	idc = 1801;
  		colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
    	x = 0.433927 * safezoneW + safezoneX;
    	y = 0.323703 * safezoneH + safezoneY;
    	w = 0.132145 * safezoneW;
    	h = 0.340842 * safezoneH;
    };
  };

  class controls {
    class UI_ShopCatList_btnSelect: RscButton
    {
    	idc = 1600;
    	text = "Select";
  		action = "[lbText [1500, lbCurSel 1500], OL_ActiveShopInfo] call Shops_fnc_DisplayShop;";
    	x = 0.439433 * safezoneW + safezoneX;
    	y = 0.629285 * safezoneH + safezoneY;
    	w = 0.0550605 * safezoneW;
    	h = 0.0235063 * safezoneH;
    };
    class UI_ShopCatList_btnExit: RscButton
    {
    	idc = 1602;
    	text = "Back";
  		action = "closeDialog 0;";
    	x = 0.505506 * safezoneW + safezoneX;
    	y = 0.629285 * safezoneH + safezoneY;
    	w = 0.0550605 * safezoneW;
    	h = 0.0235063 * safezoneH;
    };
    class UI_ShopCatList_List: DA_Listbox
    {
    	idc = 1500;
      onLBDblClick = "[lbText [1500, lbCurSel 1500], OL_ActiveShopInfo] call Shops_fnc_DisplayShop;";
    	x = 0.439433 * safezoneW + safezoneX;
    	y = 0.335456 * safezoneH + safezoneY;
    	w = 0.121133 * safezoneW;
    	h = 0.282076 * safezoneH;
    };
  };
};

class UI_ShopOptions {
	idd = 070843;
  movingEnable = true;
  onKeyDown = "[1, _this select 1] spawn fnc_CloseShop; true;";

  class controlsBackground {
    class UI_ShopOptions_Background: RscBackground
    {
    	idc = 1800;
    	x = 0.433927 * safezoneW + safezoneX;
    	y = 0.323703 * safezoneH + safezoneY;
    	w = 0.132145 * safezoneW;
    	h = 0.340842 * safezoneH;
    };
    class UI_ShopOptions_Frame: RscFrame
    {
    	idc = 1801;
  		colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
    	x = 0.433927 * safezoneW + safezoneX;
    	y = 0.323703 * safezoneH + safezoneY;
    	w = 0.132145 * safezoneW;
    	h = 0.340842 * safezoneH;
    };
  };

  class controls {
    class UI_ShopOptions_btnSelect: RscButton
    {
    	idc = 1600;
    	text = "Select";
  		action = "";
    	x = 0.439433 * safezoneW + safezoneX;
    	y = 0.629285 * safezoneH + safezoneY;
    	w = 0.0550605 * safezoneW;
    	h = 0.0235063 * safezoneH;
    };
    class UI_ShopOptions_btnExit: RscButton
    {
    	idc = 1602;
    	text = "Exit";
  		action = "closeDialog 0;";
    	x = 0.505506 * safezoneW + safezoneX;
    	y = 0.629285 * safezoneH + safezoneY;
    	w = 0.0550605 * safezoneW;
    	h = 0.0235063 * safezoneH;
    };
    class UI_ShopOptions_List: DA_Listbox
    {
    	idc = 1500;
      onLBDblClick = "call fnc_DBLClick";
    	x = 0.439433 * safezoneW + safezoneX;
    	y = 0.335456 * safezoneH + safezoneY;
    	w = 0.121133 * safezoneW;
    	h = 0.282076 * safezoneH;
    };
  };
};
