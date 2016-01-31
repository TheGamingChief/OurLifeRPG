class adminMenuTCG
{
	idd = -1;
	movingEnable = true;
	moving = 1;
	onLoad = "with uiNameSpace do { adminMenuTCG = _this select 0 }";
	controls[] = {title,playerList,button1,button2,button3,button4,button5,button6,button7,button8,button9,button10,button11,button12,button13,button14,endText,exit};
	controlsBackground[] = {IGUIBack_2200, DLG_BACK1, background};	
	
		
	class title: RscText
	{
		idc = 1000;
		text = "Admin Panel V1.0";
		x = -0.000315403;
		y = 0.0380377;
		w = 1.00063;
		h = 0.0219982;
		colorText[] = {255,255,255,255};
		colorBackground[] = {0.25,0.37,0,1};
	};
	class playerList: RscListBox
	{
		idc = 1500;
		x = -0.000315403;
		y = 0.0600359 ;
		w = 1.00063;
		h = 0.516958 ;
		//colorBackground[] = {0.85,0.03,0,1};
		SizeEX = 0.04; 
		RowHeight = 0.07; 
	};
	class background : RscBgRahmen		
	{
		x = -0.000315403;
		y = 0.0600359;	
		w = 1.00063;
		h = 0.516958;
	};
	class DLG_BACK1: RscBackground	
	{
		x = -0.000315403;
		y = 0.0600359;	
		w = 1.00063;
		h = 0.516958;
	};
	class button1: RscButton
	{
		idc = 1600;
		text = " ";
		action = "";
		x = 0.0151583;
		y = 0.609991 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = -0.00547405;
		y = 0.576994 ;
		w = 1.00579;
		h = 0.384969 ;
		colorBackground[] = {0,0,0,0.85};
	};
	class button2: RscButton
	{
		idc = 1601;
		text = "";
		action = "";
		x = 0.0151583;
		y = 0.653987 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button3: RscButton
	{
		idc = 1602;
		text = "Crash Player";
		action = "call adminMenuCrash";
		x = 0.0151583;
		y = 0.697984 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button4: RscButton
	{
		idc = 1603;
		text = "Warn Player";
		action = "call adminMenuWarn";
		x = 0.0151583;
		y = 0.74198 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button5: RscButton
	{
		idc = 1604;
		text = "Teleport to Player";
		action = "call adminMenuTeleport";
		x = 0.0151583;
		y = 0.785977 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button6: RscButton
	{
		idc = 1604;
		text = "Lock Server";
		action = "call adminMenuLock";
		x = 0.0151583;
		y = 0.829974 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button7: RscButton
	{
		idc = 1604;
		text = "Unlock Server";
		action = "call adminMenuUnlock";
		x = 0.0151583;
		y = 0.873971 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button8: RscButton
	{
		idc = 1600;
		text = "Clean Server";
		action = "call adminMenuClean";
		x = 0.71;
		y = 0.609991 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button9: RscButton
	{
		idc = 1601;
		text = "";
		action = "";
		x = 0.71;
		y = 0.653987 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button10: RscButton
	{
		idc = 1602;
		text = "Output Info";
		action = "call SpeedyOutput";
		x = 0.71;
		y = 0.697984 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button11: RscButton
	{
		idc = 1603;
		text = "";
		action = "";
		x = 0.71;
		y = 0.74198 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button12: RscButton
	{
		idc = 1604;
		text = "Skip 1 Hour";
		action = "call adminMenuSkipTime";
		x = 0.71;
		y = 0.785977 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button13: RscButton
	{
		idc = 1604;
		text = "Repair Vehicle";
		action = "call adminMenuRepair";
		x = 0.71;
		y = 0.829974 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button14: RscButton
	{
		idc = 1604;
		text = "";
		action = "";
		x = 0.71;
		y = 0.873971 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class endText: RscText
	{
		idc = 1001;
		text = "Made By gamerz971HD"; //--- ToDo: Localize;
		x = -0.000315403;
		y = 0.961962 ;
		w = 1.00063;
		h = 0.0439964 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.25,0.37,0,1};
	};
	class exit: RscButton
	{
		idc = 1605;
		text = "Exit"; //--- ToDo: Localize;
		action = "closeDialog 0;";
		x = 0.293684;
		y = 0.92018 ;
		w = 0.412631;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.71,0.03+,0,1};
	};
	class RscPicture_1200: RscPicture
	{
		idc = 1200;
		text = "";
		x = 0.422632;
		y = 0.631989 ;
		w = 0.144421;
		h = 0.263978 ;
	};
};