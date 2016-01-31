#define hud_status_idc 3600
#define hud_vehicle_idc 3601
#define respawn_MissionUptime_Text 3402

class RLRPGMainPlayerHUD {
	idd = -1;
    fadeout=0;
    fadein=0;
	duration = 20;
	name= "RLRPGMainPlayerHUD";
	onLoad = "uiNamespace setVariable ['RLRPGMainPlayerHUD', _this select 0]";
	controlsBackground[] = {RLRPGMainPlayerHUD_Vehicle, RLRPGMainPlayerHUD_Status, RLRPGMainPlayerHUD_MissionUptimeText};
	objects[] = {};
	controls[] = {};
	
		class RLRPGMainPlayerHUD_Vehicle:RLRPG_MainHUD_RscText
		{
			idc = hud_vehicle_idc;
			type = CT_STRUCTURED_TEXT;
			size = 0.040;
			x = safeZoneX + (safeZoneW * (1 - (0.42 / SafeZoneW)));
            y = safeZoneY + (safeZoneH * (1 - (0.30 / SafeZoneH)));
			w = 0.4; 
			h = 0.65;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = "";
			shadow = 2;
			class Attributes {
				align = "right";
			};
		};
		class RLRPGMainPlayerHUD_Status:RLRPG_MainHUD_RscText
		{
			idc = hud_status_idc;
			type = CT_STRUCTURED_TEXT;
			size = 0.040;
			x = safeZoneX + (safeZoneW * (1 - (0.29 / SafeZoneW)));
            y = safeZoneY + (safeZoneH * (1 - (0.32 / SafeZoneH)));
			w = 0.29; 
			h = 0.29;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = "";
			shadow = 2;
			class Attributes {
				align = "right";
			};
		};
		class RLRPGMainPlayerHUD_MissionUptimeText:RLRPG_MainHUD_RscText
		{
			idc = respawn_MissionUptime_Text;
			type = CT_STRUCTURED_TEXT;			
			size = 0.035;
			x = safeZoneX + (safeZoneW * (1 - (1.91 / SafeZoneW)));//More = left, Less = Right
			y = safeZoneY + (safeZoneH * (1 - (0.070 / SafeZoneH)));
			w = 1.92; 
			h = 0.100;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = "";
			shadow = 1;
			class Attributes {
				align = "right";
			};
		};

};