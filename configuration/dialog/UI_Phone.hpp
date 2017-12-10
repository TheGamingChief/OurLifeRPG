class UI_Phone {
	idd = -1;
	movingEnable = false;

	class controlsBackground {
		class ui_Phone_background: RscPicture
		{
			idc = 1200;
			text = "OL_Textures\Garry\Phone\Phone_Main.paa";
			x = 0.358222 * safezoneW + safezoneX;
			y = 0.238771 * safezoneH + safezoneY;
			w = 0.283557 * safezoneW;
			h = 0.563704 * safezoneH;
		};
	};

	class controls {
		class ui_Phone_phoneBtn: RscButton_Hidden
		{
			idc = 1600;
			action = "[""NOT_MAIN""] call Phone_fnc_Open;";
			x = 0.444795 * safezoneW + safezoneX;
			y = 0.307516 * safezoneH + safezoneY;
			w = 0.020376 * safezoneW;
			h = 0.037477 * safezoneH;
		};
		class ui_Phone_messagebtn: RscButton_Hidden
		{
			idc = 1601;
			action = "[] call Messages_fnc_Open;";
			x = 0.467778 * safezoneW + safezoneX;
			y = 0.308292 * safezoneH + safezoneY;
			w = 0.020376 * safezoneW;
			h = 0.037477 * safezoneH;
		};
		class ui_Phone_closeBtn: RscButton_Hidden
		{
			idc = 1602;
			action = "closeDialog 0;";
			x = 0.490095 * safezoneW + safezoneX;
			y = 0.693597 * safezoneH + safezoneY;
			w = 0.0203923 * safezoneW;
			h = 0.0390287 * safezoneH;
		};
	};
};

class UI_PhoneKeypad {
	idd = -1;
	movingEnable = false;

	class controlsBackground {
		class ui_Phone_background: RscPicture
		{
			idc = 1200;
			text = "OL_Textures\Garry\Phone\Phone_Keypad.paa";
			x = 0.358222 * safezoneW + safezoneX;
			y = 0.238771 * safezoneH + safezoneY;
			w = 0.283557 * safezoneW;
			h = 0.563704 * safezoneH;
		};
	};

	class controls {
		class ui_PhoneKeypad_phonenumber: RscText
		{
			idc = 1000;
			x = 0.448444 * safezoneW + safezoneX;
			y = 0.335013 * safezoneH + safezoneY;
			w = 0.103112 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PhoneKeypad_BtnNum1: RscButton_Hidden
		{
			idc = 1600;
			action = "[""ADD"", 1] call Phone_fnc_UpdateDisplay;";
			x = 0.456453 * safezoneW + safezoneX;
			y = 0.389011 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0462362 * safezoneH;
		};
		class ui_PhoneKeypad_BtnNum2: RscButton_Hidden
		{
			idc = 1601;
			action = "[""ADD"", 2] call Phone_fnc_UpdateDisplay;";
			x = 0.484882 * safezoneW + safezoneX;
			y = 0.38923 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0462362 * safezoneH;
		};
		class ui_PhoneKeypad_BtnNum3: RscButton_Hidden
		{
			idc = 1602;
			action = "[""ADD"", 3] call Phone_fnc_UpdateDisplay;";
			x = 0.515639 * safezoneW + safezoneX;
			y = 0.390228 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0462362 * safezoneH;
		};
		class ui_PhoneKeypad_BtnNum4: RscButton_Hidden
		{
			idc = 1603;
			action = "[""ADD"", 4] call Phone_fnc_UpdateDisplay;";
			x = 0.45621 * safezoneW + safezoneX;
			y = 0.439126 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0462362 * safezoneH;
		};
		class ui_PhoneKeypad_BtnNum5: RscButton_Hidden
		{
			idc = 1604;
			action = "[""ADD"", 5] call Phone_fnc_UpdateDisplay;";
			x = 0.485403 * safezoneW + safezoneX;
			y = 0.439126 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0462362 * safezoneH;
		};
		class ui_PhoneKeypad_BtnNum6: RscButton_Hidden
		{
			idc = 1605;
			action = "[""ADD"", 6] call Phone_fnc_UpdateDisplay;";
			x = 0.51564 * safezoneW + safezoneX;
			y = 0.440125 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0462362 * safezoneH;
		};
		class ui_PhoneKeypad_BtnNum7: RscButton_Hidden
		{
			idc = 1606;
			action = "[""ADD"", 7] call Phone_fnc_UpdateDisplay;";
			x = 0.45621 * safezoneW + safezoneX;
			y = 0.490021 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0462362 * safezoneH;
		};
		class ui_PhoneKeypad_BtnNum8: RscButton_Hidden
		{
			idc = 1607;
			action = "[""ADD"", 8] call Phone_fnc_UpdateDisplay;";
			x = 0.485925 * safezoneW + safezoneX;
			y = 0.490021 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0462362 * safezoneH;
		};
		class ui_PhoneKeypad_BtnNum9: RscButton_Hidden
		{
			idc = 1608;
			action = "[""ADD"", 9] call Phone_fnc_UpdateDisplay;";
			x = 0.51564 * safezoneW + safezoneX;
			y = 0.49002 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0462362 * safezoneH;
		};
		class ui_PhoneKeypad_BtnNum0: RscButton_Hidden
		{
			idc = 1609;
			action = "[""ADD"", 0] call Phone_fnc_UpdateDisplay;";
			x = 0.486446 * safezoneW + safezoneX;
			y = 0.541913 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0462362 * safezoneH;
		};
		class ui_PhoneKeypad_BtnCall: RscButton_Hidden
		{
			idc = 1610;
			action = "[ctrlText 1001] call Phone_fnc_Call;";
			x = 0.485925 * safezoneW + safezoneX;
			y = 0.593805 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0462362 * safezoneH;
		};
		class ui_PhoneKeypad_BtnRecents: RscButton_Hidden
		{
			idc = 1611;
			action = "[] call Phone_fnc_ShowRecents;";
			x = 0.471094 * safezoneW + safezoneX;
			y = 0.659996 * safezoneH + safezoneY;
			w = 0.012889 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PhoneKeypad_BtnContacts: RscButton_Hidden
		{
			idc = 1612;
			action = "[""CONTACTS""] call Phone_fnc_ChangeMenu;";
			x = 0.491659 * safezoneW + safezoneX;
			y = 0.660666 * safezoneH + safezoneY;
			w = 0.012889 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PhoneKeypad_BtnKeypad: RscButton_Hidden
		{
			idc = 1613;
			x = 0.514075 * safezoneW + safezoneX;
			y = 0.660666 * safezoneH + safezoneY;
			w = 0.012889 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PhoneMenu_BtnClose: RscButton_Hidden
		{
			idc = 1614;
			action = "closeDialog 0;";
			x = 0.487822 * safezoneW + safezoneX;
			y = 0.693592 * safezoneH + safezoneY;
			w = 0.0235039 * safezoneW;
			h = 0.0422445 * safezoneH;
		};
		class ui_PhoneMenu_BtnDelete: RscButton_Hidden
		{
			idc = 1615;
			action = "[""DELETE""] call Phone_fnc_UpdateDisplay;";
			x = 0.522937 * safezoneW + safezoneX;
			y = 0.60578 * safezoneH + safezoneY;
			w = 0.012889 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PhoneKeypad_BtnAdd: RscButton_Hidden
		{
			idc = 1616;
			action = "[""NUMBER"", ctrlText 1001] call Phone_fnc_AddNumber;";
			x = 0.478725 * safezoneW + safezoneX;
			y = 0.356745 * safezoneH + safezoneY;
			w = 0.041606 * safezoneW;
			h = 0.0235061 * safezoneH;
		};
		class ui_PhoneKeypad_Text: RscText_G
		{
			idc = 1001;
			x = 0.454889 * safezoneW + safezoneX;
			y = 0.335013 * safezoneH + safezoneY;
			w = 0.0902226 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
	};
};


class UI_PhoneAddNum {
	idd = -1;
	movingEnable = false;

	class controlsBackground {
		class ui_PhoneAdd_Background: RscBackground
		{
			idc = 1800;
			x = 0.435555 * safezoneW + safezoneX;
			y = 0.431256 * safezoneH + safezoneY;
			w = 0.12889 * safezoneW;
			h = 0.137489 * safezoneH;
		};
	};

	class controls {
		class ui_PhoneAdd_nameInput: RscEdit
		{
			idc = 1400;
			x = 0.442 * safezoneW + safezoneX;
			y = 0.486251 * safezoneH + safezoneY;
			w = 0.116001 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PhoneAdd_header: RscText
		{
			idc = 1000;
			text = "Name:";
			x = 0.442 * safezoneW + safezoneX;
			y = 0.445004 * safezoneH + safezoneY;
			w = 0.116001 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PhoneAdd_BtnAdd: RscButton
		{
			idc = 1600;
			text = "Add Number";
			action = "[""NAME"",ctrlText 1400] call Phone_fnc_AddNumber;";
			x = 0.442 * safezoneW + safezoneX;
			y = 0.527498 * safezoneH + safezoneY;
			w = 0.116001 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
	};
};

class UI_PhoneActiveCaller {
	idd = 123456;
	movingEnable = false;

	class controlsBackground {
		class ui_PhoneActiveCaller_Background: RscPicture
		{
			idc = 1200;
			text = "OL_Textures\Garry\Phone\Phone_ActiveCaller.paa";
			x = 0.358222 * safezoneW + safezoneX;
			y = 0.238771 * safezoneH + safezoneY;
			w = 0.283557 * safezoneW;
			h = 0.563704 * safezoneH;
		};
	};

	class controls {
		class ui_PhoneKeypad_phonenumber: RscText
		{
			idc = 1000;
			x = 0.448444 * safezoneW + safezoneX;
			y = 0.335013 * safezoneH + safezoneY;
			w = 0.103112 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PhoneKeypad_Text: RscText
		{
			idc = 1001;
			x = 0.454889 * safezoneW + safezoneX;
			y = 0.335013 * safezoneH + safezoneY;
			w = 0.0902226 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PhoneActiveCaller_BtnClose: RscButton_Hidden
		{
			idc = 1600;
			action = "closeDialog 0;";
			x = 0.487111 * safezoneW + safezoneX;
			y = 0.692484 * safezoneH + safezoneY;
			w = 0.0257779 * safezoneW;
			h = 0.0412466 * safezoneH;
		};
		class ui_PhoneActiveCaller_BtnEndCall: RscButton_Hidden
		{
			idc = 1601;
			x = 0.487489 * safezoneW + safezoneX;
			y = 0.593805 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0472341 * safezoneH;
		};
		class ui_PhoneActiveCaller_BtnSpeaker: RscButton_Hidden
		{
			idc = 1602;
			action = "[] call Phone_fnc_Speaker";
			x = 0.502085 * safezoneW + safezoneX;
			y = 0.442121 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0472341 * safezoneH;
		};
		class ui_PhoneActiveCaller_BtnMute: RscButton_Hidden
		{
			idc = 1603;
			action = "[] call Phone_fnc_MuteCall;";
			x = 0.47237 * safezoneW + safezoneX;
			y = 0.442121 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0472341 * safezoneH;
		};
		class ui_PhoneActiveCaller_BtnAddCall: RscButton_Hidden
		{
			idc = 1604;
			action = "[] call Phone_fnc_EndCall;";
			x = 0.473413 * safezoneW + safezoneX;
			y = 0.510977 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0472341 * safezoneH;
		};
		class ui_PhoneActiveCaller_BtnContacts: RscButton_Hidden
		{
			idc = 1605;
			x = 0.502086 * safezoneW + safezoneX;
			y = 0.511975 * safezoneH + safezoneY;
			w = 0.0262992 * safezoneW;
			h = 0.0472341 * safezoneH;
		};
		class ui_PhoneActiveCaller_Info: RscStructuredText
		{
			idc = 1100;
			x = 0.454889 * safezoneW + safezoneX;
			y = 0.321265 * safezoneH + safezoneY;
			w = 0.0902226 * safezoneW;
			h = 0.109991 * safezoneH;
		};
	};
};

class UI_PhoneContacts {
	idd = 123456;
	movingEnable = false;

	class controlsBackground {
		class ui_PhoneContacts_background: RscPicture
		{
			idc = 1200;
			text = "OL_Textures\Garry\Phone\Phone_Contacts.paa";
			x = 0.358222 * safezoneW + safezoneX;
			y = 0.238771 * safezoneH + safezoneY;
			w = 0.283557 * safezoneW;
			h = 0.563704 * safezoneH;
		};
	};

	class controls {
		class ui_PhoneContacts_Search: RscEdit
		{
			idc = 1400;
			style = 512;
			colorText[] = {0, 0, 0, 1};
			font = "EtelkaNarrowMediumPro";
			action = "[] call Phone_fnc_SearchContacts;";
			x = 0.457612 * safezoneW + safezoneX;
			y = 0.372603 * safezoneH + safezoneY;
			w = 0.0909864 * safezoneW;
			h = 0.0195144 * safezoneH;
		};
		class ui_PhoneContacts_List: DA_Listbox
		{
			idc = 1500;
			style = 512;
			color[] = {0, 0, 0, .1};
			colorText[] = {0, 0, 0, 1};
			sizeEx = 0.027;
			x = 0.4445 * safezoneW + safezoneX;
			y = 0.403758 * safezoneH + safezoneY;
			w = 0.11 * safezoneW;
			h = 0.255 * safezoneH;
		};
		class ui_PhoneContacts_BtnRecents: RscButton_Hidden
		{
			idc = 1600;
			action = "[""RECENT""] call Phone_fnc_ChangeMenu;";
			x = 0.468469 * safezoneW + safezoneX;
			y = 0.659555 * safezoneH + safezoneY;
			w = 0.0160169 * safezoneW;
			h = 0.0284958 * safezoneH;
		};
		class ui_PhoneContacts_BtnContacts: RscButton_Hidden
		{
			idc = 1601;
			action = "[""CONTACTS""] call Phone_fnc_ChangeMenu;";
			x = 0.491138 * safezoneW + safezoneX;
			y = 0.660666 * safezoneH + safezoneY;
			w = 0.0160169 * safezoneW;
			h = 0.0284958 * safezoneH;
		};
		class ui_PhoneContacts_BtnKeypad: RscButton_Hidden
		{
			idc = 1602;
			action = "[""KEYPAD""] call Phone_fnc_ChangeMenu;";
			x = 0.513032 * safezoneW + safezoneX;
			y = 0.660665 * safezoneH + safezoneY;
			w = 0.0160169 * safezoneW;
			h = 0.0284958 * safezoneH;
		};
		class ui_PhoneContacts_BtnClose: RscButton_Hidden
		{
			idc = 1603;
			action = "closeDialog 0;";
			x = 0.489574 * safezoneW + safezoneX;
			y = 0.694595 * safezoneH + safezoneY;
			w = 0.0217513 * safezoneW;
			h = 0.039473 * safezoneH;
		};
		class ui_PhoneContacts_Add: RscButton_Hidden
		{
			idc = 1604;
			action = "";
			x = 0.539619 * safezoneW + safezoneX;
			y = 0.320375 * safezoneH + safezoneY;
			w = 0.0118464 * safezoneW;
			h = 0.0205124 * safezoneH;
		};
	};
};

class UI_PhoneRecents {
	idd = 123456;
	movingEnable = false;

	class controlsBackground {
		class ui_PhoneRecents_background: RscPicture
		{
			idc = 1200;
			text = "OL_Textures\Garry\Phone\Phone_Recents.paa";
			x = 0.358222 * safezoneW + safezoneX;
			y = 0.238771 * safezoneH + safezoneY;
			w = 0.283557 * safezoneW;
			h = 0.563704 * safezoneH;
		};
	};

	class controls {
		class ui_PhoneRecents_BtnRecents: RscButton_Hidden
		{
			idc = 1600;
			x = 0.469979 * safezoneW + safezoneX;
			y = 0.659333 * safezoneH + safezoneY;
			w = 0.012889 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PhoneRecents_BtnContacts: RscButton_Hidden
		{
			idc = 1601;
			action = "[""CONTACTS""] call Phone_fnc_ChangeMenu;";
			x = 0.491659 * safezoneW + safezoneX;
			y = 0.661664 * safezoneH + safezoneY;
			w = 0.012889 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PhoneRecents_BtnKeypad: RscButton_Hidden
		{
			idc = 1602;
			action = "[""KEYPAD""] call Phone_fnc_ChangeMenu;";
			x = 0.513554 * safezoneW + safezoneX;
			y = 0.660666 * safezoneH + safezoneY;
			w = 0.012889 * safezoneW;
			h = 0.0274978 * safezoneH;
		};
		class ui_PhoneRecents_BtnClose: RscButton_Hidden
		{
			idc = 1603;
			action = "closeDialog 0;";
			x = 0.48801 * safezoneW + safezoneX;
			y = 0.693597 * safezoneH + safezoneY;
			w = 0.0222725 * safezoneW;
			h = 0.0404708 * safezoneH;
		};
		class ui_PhoneRecents_BtnAll: RscButton_Hidden
		{
			idc = 1604;
			action = "[""ALL""] call Phone_fnc_ChangeMenu;";
			x = 0.476235 * safezoneW + safezoneX;
			y = 0.3196 * safezoneH + safezoneY;
			w = 0.0223175 * safezoneW;
			h = 0.0175186 * safezoneH;
		};
		class ui_PhoneRecents_BtnMissed: RscButton_Hidden
		{
			idc = 1605;
			action = "[""MISSED""] call Phone_fnc_ChangeMenu;";
			x = 0.498958 * safezoneW + safezoneX;
			y = 0.319376 * safezoneH + safezoneY;
			w = 0.0223175 * safezoneW;
			h = 0.0175186 * safezoneH;
		};
		class ui_PhoneRecents_List: RscListbox
		{
			idc = 1500;
			x = 0.448444 * safezoneW + safezoneX;
			y = 0.37626 * safezoneH + safezoneY;
			w = 0.103112 * safezoneW;
			h = 0.279968 * safezoneH;
		};
	};
};

class UI_PhoneGettingCalled {
	idd = 4206969;
	movingEnable = false;

	class controlsBackground {
		class ui_Phone_gettingcalled: RscPicture
		{
			idc = 1200;
			text = "OL_Textures\Garry\Phone\Phone_GettingCalled.paa";
			x = 0.358222 * safezoneW + safezoneX;
			y = 0.238771 * safezoneH + safezoneY;
			w = 0.283557 * safezoneW;
			h = 0.563704 * safezoneH;
		};
	};
	class controls {
		class ui_Phone_acceptBtn: RscButton_Hidden
		{
			idc = 1600;
			x = 0.458464 * safezoneW + safezoneX;
			y = 0.608008 * safezoneH + safezoneY;
			w = 0.020376 * safezoneW;
			h = 0.037477 * safezoneH;
		};
		class ui_Phone_denyBtn: RscButton_Hidden
		{
			idc = 1601;
			x = 0.519688 * safezoneW + safezoneX;
			y = 0.608008 * safezoneH + safezoneY;
			w = 0.020376 * safezoneW;
			h = 0.037477 * safezoneH;
		};
		class ui_Phone_homeBtn: RscButton_Hidden
		{
			idc = 1602;
			x = 0.490095 * safezoneW + safezoneX;
			y = 0.693597 * safezoneH + safezoneY;
			w = 0.0203923 * safezoneW;
			h = 0.0390287 * safezoneH;
		};
	};
};
