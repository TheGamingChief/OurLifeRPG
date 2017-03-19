#define MSGMenu_dialog 50004
#define MSGMenu_option 50005

class MSG
{
	idd = MSGMenu_dialog;
	movingEnable=1;
	onLoad = "uiNamespace setVariable ['MSGMenu', _this select 0]";

	class controlsBackground {

		class MSGMenu_Title:RscText
		{
			idc=-1;
			text="MSG Menu";
			x=0.35;
			y=0.14;
			w=0.088;
			h=0.035;
		};

		class MSGMenu_background:RscBackground
		{
			idc=-1;
			x=0.28;
			y=0.10;
			w=0.42;
			h=0.74;
		};
	};

	class controls {

		class MSGMenu_options:RscEdit
		{
			idc = 5090;
			x=0.35;
			y=0.21;
			w=0.31;
			h=0.06;
		};

		class MSGMenu_activate:RscButton
		{
			idc=-1;
			text="Admin Message";
			onButtonClick = "format['server globalChat ""(ADMIN) %1"";',(ctrlText 5090)] call swag;";
			x=0.40;
			y=0.74;
			w=0.22;
			h=0.071;
		};
		class MSGMenu_activate2:RscButton
		{
			idc=-1;
			text="Dev Message";
			onButtonClick = "format['server globalChat ""(DEV) %1"";',(ctrlText 5090)] call swag;";
			x=0.40;
			y=0.60;
			w=0.22;
			h=0.071;
		};
	};
};
