class TGC_CivMenu
{
	idd = 6959;
	movingenable = true;
	onLoad = "execVM 'scripts\TheGamingChief\Common\fnc_Interaction.sqf'";
	
	class controls
	{
		class TGC_Button_Close: RscButtonV2
		{
			idc = 1657;
			text = "Close";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.805566 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "closedialog 0";
		};
		class TGC_Top_Bar: TGC_RscText
		{
			idc = 1000;
			text = "Interact";
			x = 0.445211 * safezoneW + safezoneX;
			y = 0.522562 * safezoneH + safezoneY;
			w = 0.107146 * safezoneW;
			h = 0.0248899 * safezoneH;
			colorBackground[] = {0,0.235,1,0.5};
			colorText[] = {1,1,1,1};
			font = "TahomaB";
		};
		class TGC_Main_Body: RscText
		{
			idc = 1001;
			x = 0.445211 * safezoneW + safezoneX;
			y = 0.54476 * safezoneH + safezoneY;
			w = 0.107146 * safezoneW;
			h = 0.302837 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class TGC_Button_1: RscButtonV2
		{
			idc = 1601;
			text = "Rob";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.558763 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "[20] execVM ""civmenuinit.sqf""; closedialog 0";
		};
		class TGC_Button_2: RscButtonV2
		{
			idc = 1603;
			text = "Pat Down";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.59402 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "[69] execVM ""civmenuinit.sqf""; closedialog 0";
		};
		class TGC_Button_3: RscButtonV2
		{
			idc = 1609;
			text ="Check Inventory";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.629278 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "[6] execVM ""civmenuinit.sqf""; closedialog 0";
		};
		class TGC_Button_4: RscButtonV2
		{
			idc = 1602;
			text ="Zip Tie";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.664536 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "execVM ""scripts\TheGamingChief\Common\fnc_ZipTie.sqf""; closedialog 0";
		};
		class TGC_Button_5: RscButtonV2
		{
			idc = 1607;
			text ="Gag";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.699793 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "execVM ""scripts\TheGamingChief\Common\fnc_Gag.sqf""; closedialog 0";
		};
		class TGC_Button_6: RscButtonV2
		{
			idc = 1605;
			text ="Escort";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.735051 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "execVM ""scripts\TheGamingChief\Common\fnc_Escort.sqf""; closedialog 0";
		};
		class TGC_Button_7: RscButtonV2
		{
			idc = 1619;
			text = "Throw In Car";
			x = 0.455929 * safezoneW + safezoneX;
			y = 0.770309 * safezoneH + safezoneY;
			w = 0.0889128 * safezoneW;
			h = 0.0287371 * safezoneH;
			action = "execVM ""scripts\TheGamingChief\Common\fnc_ThrowInCar.sqf""; closedialog 0";
		};
	};
};