class TGC_CopMenu
{
	idd = 6960;
	movingenable = true;
	onLoad = "execVM 'scripts\TheGamingChief\Common\fnc_InteractionCop.sqf'";
	
	class controls
	{
		class TGC_Button_Close: RscButtonV2
		{
			idc = 6954;
			text = "Close";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.829071 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "closedialog 0";
		};
		class TGC_Top_Bar: TGC_RscText
		{
			idc = 6584;
			text = "Interact";
			x = 0.445211 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.107146 * safezoneW;
			h = 0.0248899 * safezoneH;
			colorBackground[] = {0,0.235,1,0.5};
			colorText[] = {1,1,1,1};
			font = "TahomaB";
		};
		class TGC_Main_Body: TGC_RscText
		{
			idc = 5848;
			x = 0.445211 * safezoneW + safezoneX;
			y = 0.50276 * safezoneH + safezoneY;
			w = 0.107146 * safezoneW;
			h = 0.365837 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class TGC_Button_1: RscButtonV2
		{
			idc = 54848;
			text = "HandCuff";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.511753 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "execVM ""scripts\TheGamingChief\Common\fnc_HandCuff.sqf""; closedialog 0";
		};
		class TGC_Button_2: RscButtonV2
		{
			idc = 54847;
			text = "Escort";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.54701 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "execVM ""scripts\TheGamingChief\Common\fnc_Escort.sqf""; closedialog 0";
		};
		class TGC_Button_3: RscButtonV2
		{
			idc = 844526;
			text = "Drug Search";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.582268 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "[1] execVM ""civmenuinit.sqf""; closedialog 0";
		};
		class TGC_Button_4: RscButtonV2
		{
			idc = 56478;
			text = "Pat Down";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.617525 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "[69] execVM ""civmenuinit.sqf""; closedialog 0";
		};
		class TGC_Button_5: RscButtonV2
		{
			idc = 35489;
			text = "Check Inventory";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.652783 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "[6] execVM ""civmenuinit.sqf""; closedialog 0"
		};
		class TGC_Button_6: RscButtonV2
		{
			idc = 23548;
			text = "Gag";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.688041 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "execVM ""scripts\TheGamingChief\Common\fnc_Gag.sqf""; closedialog 0";
		};
		class TGC_Button_7: RscButtonV2
		{
			idc = 624258;
			text = "Force Feed 1 Donut";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.723298 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "execVM ""scripts\TheGamingChief\Common\fnc_ForceFeed.sqf""; closedialog 0";
		};
		class TGC_Button_8: RscButtonV2
		{
			idc = 1608;
			text = "Ticket Person";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.758556 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "closedialog 0; createDialog ""TGC_TicketMenu""";
		};
		class TGC_Button_9: RscButtonV2
		{
			idc = 1609;
			text = "Jail Person";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.793814 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "execVM ""scripts\TheGamingChief\Common\fnc_Arrest.sqf""; closedialog 0";
		};
	};
};

class TGC_ArrestMenu
{
	idd = 65458;
	movingenable = true;
	onLoad = "execVM 'scripts\TheGamingChief\Common\fnc_InteractionCop.sqf'";

	
	class controls
	{
		class TGC_Top_Banner: TGC_RscText
		{
			idc = 1001;
			text = "Arrest - ";
			x = 0.389823 * safezoneW + safezoneX;
			y = 0.629278 * safezoneH + safezoneY;
			w = 0.219667 * safezoneW;
			h = 0.036 * safezoneH;
			style = ST_CENTER;
			colorText[] = {1,1,1,1};
			font = "TahomaB";
			SizeEx = 0.04921;
			colorBackground[] = {0,0.235,1,0.5};
		};
		class TGC_Main_Base: TGC_RscText
		{
			idc = 1000;
			x = 0.389823 * safezoneW + safezoneX;
			y = 0.664536 * safezoneH + safezoneY;
			w = 0.219667 * safezoneW;
			h = 0.237437 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscSlider_1900: RscSliderH
		{
			idc = 1900;
			x = 0.406349 * safezoneW + safezoneX;
			y = 0.782061 * safezoneH + safezoneY;
			w = 0.190495 * safezoneW;
			h = 0.0354693 * safezoneH;
		};
		class TGC_Arrest_Time: TGC_RscText
		{
			idc = 65478;
			x = 0.406349 * safezoneW + safezoneX;
			y = 0.700000 * safezoneH + safezoneY;
			w = 0.190495 * safezoneW;
			h = 0.0354693 * safezoneH;
			style = ST_CENTER;
			colorText[] = {1,1,1,1};
			font = "TahomaB";
			SizeEx = 0.06921;
		};
		class DummyObj: RscDummy
		{
			idc = 6585;
		};
		class TGC_Arrest_Button: RscButtonV2
		{
			idc = 1600;
			text = "Arrest!";
			x = 0.428385 * safezoneW + safezoneX;
			y = 0.840824 * safezoneH + safezoneY;
			w = 0.15403 * safezoneW;
			h = 0.0527806 * safezoneH;
			colorText[] = {1,1,1,1};
			action = "[3, sliderPosition 1900] execVM ""civmenuinit.sqf""; closedialog 0";
		};
	};
};

class TGC_TicketMenu
{
	idd = 65248;
	movingenable = true;
	onLoad = "execVM 'scripts\TheGamingChief\Common\fnc_InteractionCop.sqf'";

	
	class controls
	{
		class TGC_Top_Banner: TGC_RscText
		{
			idc = 1001;
			text = "Ticket - ";
			x = 0.389823 * safezoneW + safezoneX;
			y = 0.629278 * safezoneH + safezoneY;
			w = 0.219667 * safezoneW;
			h = 0.036 * safezoneH;
			style = ST_CENTER;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0.235,1,0.5};
		};
		class TGC_Main_Base: TGC_RscText
		{
			idc = 1000;
			x = 0.389823 * safezoneW + safezoneX;
			y = 0.664536 * safezoneH + safezoneY;
			w = 0.219667 * safezoneW;
			h = 0.237437 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class TGC_Ticket_Button: RscButtonV2
		{
			idc = 1600;
			text = "Ticket";
			x = 0.428385 * safezoneW + safezoneX;
			y = 0.840824 * safezoneH + safezoneY;
			w = 0.15403 * safezoneW;
			h = 0.0527806 * safezoneH;
			colorText[] = {1,1,1,1};
			action = "[4, ctrlText 1401] execVM ""civmenuinit.sqf""; closedialog 0";
		};
		class TGC_Ticket_Reason_Box: TGC_RscEdit
		{
			idc = 1400;
			text = "Speeding (120 in a 90)";
			x = 0.433894 * safezoneW + safezoneX;
			y = 0.699793 * safezoneH + safezoneY;
			w = 0.142568 * safezoneW;
			h = 0.036431 * safezoneH;
		};
		class TGC_Ticket_Price_Box: TGC_RscEdit
		{
			idc = 1401;
			text = "60000";
			x = 0.433894 * safezoneW + safezoneX;
			y = 0.770309 * safezoneH + safezoneY;
			w = 0.142568 * safezoneW;
			h = 0.036431 * safezoneH;
		};
		class Ticket_Reason: TGC_RscText
		{
			idc = 1002;
			text = "Ticket Reason";
			x = 0.392167 * safezoneW + safezoneX;
			y = 0.653993 * safezoneH + safezoneY;
			w = 0.2155 * safezoneW;
			h = 0.0498954 * safezoneH;
			style = ST_CENTER;
			colorText[] = {1,1,1,1};
		};
		class TGC_Ticket_Price: TGC_RscText
		{
			idc = 1003;
			text = "Ticket Price";
			x = 0.391646 * safezoneW + safezoneX;
			y = 0.729973 * safezoneH + safezoneY;
			w = 0.214979 * safezoneW;
			h = 0.047972 * safezoneH;
			style = ST_CENTER;
			colorText[] = {1,1,1,1};
		};
	};
};