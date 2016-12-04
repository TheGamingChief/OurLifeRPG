class D_PaintBallPlayers{
	idd=-1;
	controlsBackground[] = {};
	objects[] = {};
	controls[] = {RscFrame_1800,RscText_1000,RscText_1001,RscText_1002,RscShortcutButton_1700,RscShortcutButton_1701,RscListbox_1500,lb_teamblue};
	class RscFrame_1800: RscBackground
	{
		idc = 1800;
		x = 0.321354 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.36729 * safezoneW;
		h = 0.340185 * safezoneH;
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Paintball Menu";
		x = 0.468751 * safezoneW + safezoneX;
		y = 0.269444 * safezoneH + safezoneY;
		w = 0.125625 * safezoneW;
		h = 0.0420369 * safezoneH;
	};
	class RscListbox_1500: RscListbox
	{
		idc = 1;
		text = "lb_teamred";
		x = 0.334375 * safezoneW + safezoneX;
		y = 0.335185 * safezoneH + safezoneY;
		w = 0.149583 * safezoneW;
		h = 0.187407 * safezoneH;
	};
	class RscText_1001: RscText
	{
		idc = 1001;
		text = "Red Team";
		x = 0.377605 * safezoneW + safezoneX;
		y = 0.292592 * safezoneH + safezoneY;
		w = 0.0714583 * safezoneW;
		h = 0.0411111 * safezoneH;
	};
	class lb_teamblue: RscListbox
	{
		idc = 2;
		x = 0.503646 * safezoneW + safezoneX;
		y = 0.337963 * safezoneH + safezoneY;
		w = 0.171979 * safezoneW;
		h = 0.186481 * safezoneH;
	};
	class RscText_1002: RscText
	{
		idc = 1002;
		text = "Blue Team";
		x = 0.553125 * safezoneW + safezoneX;
		y = 0.287038 * safezoneH + safezoneY;
		w = 0.0751042 * safezoneW;
		h = 0.0587037 * safezoneH;
	};
	class RscShortcutButton_1700: RscShortcutButton
	{
		idc = 1700;
		text = "Join Red Team";
		x = 0.3375 * safezoneW + safezoneX;
		y = 0.542593 * safezoneH + safezoneY;
		w = 0.106354 * safezoneW;
		h = 0.0614815 * safezoneH;
		action="[""red_join""] execVM ""deaddem\Paintball\pb_funcs.sqf""; closeDialog 0;";
	};
	class RscShortcutButton_1701: RscShortcutButton
	{
		idc = 1701;
		text = "Join Blue Team";
		x = 0.509375 * safezoneW + safezoneX;
		y = 0.539815 * safezoneH + safezoneY;
		w = 0.106354 * safezoneW;
		h = 0.0614815 * safezoneH;
		action="[""blue_join""] execVM ""deaddem\Paintball\pb_funcs.sqf""; closeDialog 0;";
	};
};