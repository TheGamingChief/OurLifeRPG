class ui_ShopMenu {
	idd = -1;
	movingEnable = true;
	controlsBackground[] = {UI_ShopMenu_Background1, UI_ShopMenu_Background2, UI_ShopMenu_BuyBackground, UI_ShopMenu_SellBackground};
	objects[] = { };
	controls[] = {
		UI_ShopMenu_BuyList,
		UI_ShopMenu_BuyItemEdit,
		UI_ShopMenu_BuyBtn,
		UI_ShopMenu_CloseBtnLeft,
		UI_ShopMenu_Weight,
		UI_ShopMenu_SellBackground,
		UI_ShopMenu_CloseBtnRight,
		UI_ShopMenu_SellBtn,
		UI_ShopMenu_SellItemEdit,
		UI_ShopMenu_SellList,
		UI_ShopMenu_Money,
		dummybutton
	};
	class UI_ShopMenu_Background1: RscBackground {
		x = 0.02; y = 0.07;
		w = 0.46; h = 0.63;
	};
	class UI_ShopMenu_Background2: RscBackground {
		x = 0.51; y = 0.07;
		w = 0.46; h = 0.63;
	};
	class UI_ShopMenu_BuyBackground : RscBgRahmen	{
		x = 0.02; y = 0.07;
		w = 0.46; h = 0.63;
		text = "Buy Items";
		idc = 91;
	};
	class UI_ShopMenu_BuyList : RscListBox {
		idc = 1;
		x = 0.04; y = 0.10;
		w = 0.42; h = 0.48;
	};
	class UI_ShopMenu_BuyItemEdit : RscEdit {
		idc = 2;
		x = 0.04; y = 0.60;
		w = 0.20; h = 0.04;
		text = "1";
	};
	class UI_ShopMenu_BuyBtn : RscButton {
		idc = 3;
		x = 0.25; y = 0.60;
		w = 0.20; h = 0.04;
	};
	class UI_ShopMenu_CloseBtnLeft : RscButton {
		x = 0.25; y = 0.65;
		w = 0.20; h = 0.04;
		text = "Close";
		action = "closedialog 0";
	};
	class UI_ShopMenu_Weight : RscText {
		idc = 765;
		x = 0.04; y = 0.65;
		w = 0.20; h = 0.04;
	};
	class UI_ShopMenu_SellBackground : RscBgRahmen {
		x = 0.51; y = 0.07;
		w = 0.46; h = 0.63;
		idc = 92;
		text = "Sell Items";
	};
	class UI_ShopMenu_CloseBtnRight : RscButton {
		x = 0.74;
		y = 0.65;
		w = 0.20;
		h = 0.04;
		text = "Close";
		action = "closedialog 0;";
	};
	class UI_ShopMenu_SellBtn : RscButton {
		idc = 103;
		action = "closeDialog 0; [] call OL_shops_SellItem;";
		x = 0.74;
		y = 0.60;
		w = 0.20;
		h = 0.04;
	};
	class UI_ShopMenu_SellItemEdit : RscEdit {
		idc = 102;
		x = 0.53; y = 0.60;
		w = 0.20; h = 0.04;
		text = "1";
	};
	class UI_ShopMenu_SellList : RscListBox {
		idc = 101;
		w = 0.42; h = 0.48;
		x = 0.53; y = 0.10;
	};
	class UI_ShopMenu_Money : RscText {
		idc = 100;
		x = 0.04; y = 0.65;
		w = 0.20; h = 0.04;
	};
	class dummybutton : RscDummy {idc = 1015;};
};
