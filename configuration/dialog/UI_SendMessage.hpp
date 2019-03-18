class UI_SendMessage {
	idd = -1;
	movingEnable = false;

	class controlsBackground {
		class ui_SendMessage_background: RscBackground
		{
			idc = 1800;
			x = 0.300221 * safezoneW + safezoneX;
			y = 0.25252 * safezoneH + safezoneY;
			w = 0.399557 * safezoneW;
			h = 0.49496 * safezoneH;
		};
		class ui_SendMessage_frame: RscFrame
		{
			idc = 1801;
			colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
			x = 0.300221 * safezoneW + safezoneX;
			y = 0.25252 * safezoneH + safezoneY;
			w = 0.399557 * safezoneW;
			h = 0.49496 * safezoneH;
		};
		class ui_SendMessage_frame1: RscFrame
		{
			idc = 1802;
			colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
			x = 0.306666 * safezoneW + safezoneX;
			y = 0.348762 * safezoneH + safezoneY;
			w = 0.386669 * safezoneW;
			h = 0.329973 * safezoneH;
		};
		class ui_SendMessage_frame2: RscFrame
		{
			idc = 1803;
			colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
			x = 0.306666 * safezoneW + safezoneX;
			y = 0.307516 * safezoneH + safezoneY;
			w = 0.154667 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
	};

	class controls {
		class ui_SendMessage_messagebox: RscEdit
		{
			idc = 1400;
			colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
			style = ST_LEFT+ST_MULTI;
			font = "EtelkaNarrowMediumPro";
			sizeEx = 0.05;
			x = 0.306666 * safezoneW + safezoneX;
			y = 0.348762 * safezoneH + safezoneY;
			w = 0.386669 * safezoneW;
			h = 0.329973 * safezoneH;
		};
		class ui_SendMessage_btnSend: RscButton
		{
			idc = 1600;
			text = "Send";
			action = "[ctrlText 1400, ctrlText 1401, lbText [2100, lbCurSel 2100]] spawn Messages_fnc_Send;";
			x = 0.603112 * safezoneW + safezoneX;
			y = 0.692484 * safezoneH + safezoneY;
			w = 0.0902226 * safezoneW;
			h = 0.0412466 * safezoneH;
		};
		class ui_SendMessage_btnClose: RscButton
		{
			idc = 1601;
			text = "Close";
			action = "closeDialog 0;";
			x = 0.306666 * safezoneW + safezoneX;
			y = 0.692484 * safezoneH + safezoneY;
			w = 0.0902226 * safezoneW;
			h = 0.0412466 * safezoneH;
		};
		class ui_SendMessage_enternumber: RscEdit
		{
			idc = 1401;
			colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
			sizeEx = 0.03;
			x = 0.306666 * safezoneW + safezoneX;
			y = 0.307516 * safezoneH + safezoneY;
			w = 0.154667 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_SendMessage_numberlist: RscCombo
		{
			idc = 2100;
			x = 0.538667 * safezoneW + safezoneX;
			y = 0.307516 * safezoneH + safezoneY;
			w = 0.154667 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_SendMessage_numberh: RscText
		{
			idc = 1000;
			text = "Enter Number:";
			x = 0.306666 * safezoneW + safezoneX;
			y = 0.266269 * safezoneH + safezoneY;
			w = 0.154667 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_SendMessage_header2: RscText
		{
			idc = 1001;
			text = "Select Number From Contacts:";
			x = 0.538667 * safezoneW + safezoneX;
			y = 0.266269 * safezoneH + safezoneY;
			w = 0.154667 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
	};
};
