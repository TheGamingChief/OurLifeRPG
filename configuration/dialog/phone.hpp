class UltRP_Dlg_Call_911_311 { //this is from a community that belonged to speedy in 2010.....

	idd = -1;
	controls[] = {Message,SendButton,SendButton2,SendButton3};
	controlsBackground[] = {DialogBackground};

	class DialogBackground: RscBackground
	{
		colorBackground[] = {0, 0, 0, 0.88};
		x = 0.302408;
		y = 0.098962;
		w = 0.309867;
		h = 0.478293;
	};
	class BG: RscFrame
	{
		idc = -1;
		x = 0.302408;
		y = 0.098962;
		w = 0.309867;
		h = 0.478293;
	};
	class SendButton3: RscShortcutButton
	{
		idc = -1;
		text = "Call 141";
		x = 0.369549;
		y = 0.298005;
		w = 0.182777;
		h = 0.111971;
		action = "[] call OL_phone_call141;";
	};
	class SendButton2: RscShortcutButton
	{
		idc = -1;
		text = "Call 311";
		x = 0.369549;
		y = 0.448005;
		w = 0.182777;
		h = 0.111971;
		action = "[] call OL_phone_call311;";
	};
	class SendButton: RscShortcutButton
	{
		idc = -1;
		text = "Call 911";
		x = 0.367817;
		y = 0.368316;
		w = 0.184047;
		h = 0.109976;
		action = "[player] call OL_phone_call911;";

		class Attributes
		{
			color = "#009BFF";
		};
	};
	class Message: RscEdit
	{
		idc = 1028;
		x = 0.321485;
		y = 0.202713;
		w = 0.275789;
		h = 0.0561054;
	};
	class Title: RscText
	{
		idc = -1;
		text = "Cell Phone";
		x = 0.390625;
		y = 0.1;
		w = 0.125;
		h = 0.05;
	};
};
