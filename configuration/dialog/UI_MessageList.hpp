class UI_MessageList {
	idd = 69420;
	movingEnable = false;

	class controlsBackground {
		class ui_MessageList_background: RscBackground
		{
			idc = 1800;
			x = 0.293777 * safezoneW + safezoneX;
			y = 0.238771 * safezoneH + safezoneY;
			w = 0.412446 * safezoneW;
			h = 0.522457 * safezoneH;
		};
		class ui_MessageList_frame: RscFrame
		{
			idc = 1845;
			colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
			x = 0.293777 * safezoneW + safezoneX;
			y = 0.238771 * safezoneH + safezoneY;
			w = 0.412446 * safezoneW;
			h = 0.522457 * safezoneH;
		};
		class ui_MessageText_frame: RscFrame
		{
			idc = 18245;
			colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
			x = 0.422666 * safezoneW + safezoneX;
			y = 0.335013 * safezoneH + safezoneY;
			w = 0.277112 * safezoneW;
			h = 0.357471 * safezoneH;
		};
	};

	class controls {
		class ui_MessageList_messageList: DA_Listbox
		{
			idc = 1500;
			onLBSelChanged = "[lbCurSel 1500] call Messages_fnc_ShowFull;";
			x = 0.300221 * safezoneW + safezoneX;
			y = 0.280018 * safezoneH + safezoneY;
			w = 0.109556 * safezoneW;
			h = 0.412466 * safezoneH;
		};
		class ui_MessageList_header: RscText
		{
			idc = 1000;
			text = "Messages";
			x = 0.300221 * safezoneW + safezoneX;
			y = 0.25252 * safezoneH + safezoneY;
			w = 0.109556 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_MessageList_fullMessageText: w_RscStructuredText
		{
			idc = 1100;
			x = 0.422666 * safezoneW + safezoneX;
			y = 0.335013 * safezoneH + safezoneY;
			w = 0.277112 * safezoneW;
			h = 0.357471 * safezoneH;
		};
		class ui_MessageList_infoList: DA_Listbox
		{
			idc = 1501;
			x = 0.422666 * safezoneW + safezoneX;
			y = 0.280018 * safezoneH + safezoneY;
			w = 0.277112 * safezoneW;
			h = 0.0549955 * safezoneH;
		};
		class ui_MessageList_header1: RscText
		{
			idc = 1001;
			text = "Full Message";
			x = 0.422666 * safezoneW + safezoneX;
			y = 0.25252 * safezoneH + safezoneY;
			w = 0.277112 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_MessageList_deleteMessagebtn: RscButton
		{
			idc = 1601;
			text = "Delete Message";
			action = "[lbData [1500, lbCurSel 1500]] call Messages_fnc_Delete;";
			x = 0.300221 * safezoneW + safezoneX;
			y = 0.706233 * safezoneH + safezoneY;
			w = 0.109556 * safezoneW;
			h = 0.0412466 * safezoneH;
		};
		class ui_MessageList_replyBtn: RscButton
		{
			idc = 1600;
			text = "Reply";
			action = "[lbData [1500, lbCurSel 1500]] call Messages_fnc_Reply;";
			x = 0.590223 * safezoneW + safezoneX;
			y = 0.706233 * safezoneH + safezoneY;
			w = 0.109556 * safezoneW;
			h = 0.0412466 * safezoneH;
		};
		class ui_MessageList_createmessageBtn: RscButton
		{
			idc = 1602;
			text = "Create Message";
			action = "closeDialog 0; [] call Messages_fnc_Create;";
			x = 0.448444 * safezoneW + safezoneX;
			y = 0.706233 * safezoneH + safezoneY;
			w = 0.103112 * safezoneW;
			h = 0.0412466 * safezoneH;
		};
	};
};
