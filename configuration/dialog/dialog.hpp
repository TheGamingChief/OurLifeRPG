#define CellMenu_dialog 50006
#define CellMenu_option 50007

class CellMenu
{
	idd = CellMenu_dialog;
	movingEnable=1;
	onLoad = "uiNamespace setVariable ['CellMenu', _this select 0]";

	class controlsBackground {

		class CellMenu_Title:w_RscText
		{
			idc=-1;
			text="Menu";
			x=0.35;
			y=0.14;
			w=0.088;
			h=0.035;
		};

		class CellMenu_background:w_RscBackground
		{
			idc=-1;
			x=0.28;
			y=0.10;
			w=0.42;
			h=0.74;
		};
	};

	class controls {

		class CellMenu_options:w_Rsclist
		{
			idc = CellMenu_option;
			x=0.35;
			y=0.21;
			w=0.31;
			h=0.49;
		};

		class CellMenu_activate:w_RscButton
		{
			idc=-1;
			text="Select";
			onButtonClick = "[0] call OL_phone_CallSelect";
			x=0.40;
			y=0.74;
			w=0.22;
			h=0.071;
		};
	};
};
