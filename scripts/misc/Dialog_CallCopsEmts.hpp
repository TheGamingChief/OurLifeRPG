class Dialog_CallCopsEmts
{
	idd = -1;
	movingEnable = 1;
	controlsBackground[] = {Mainback};
	objects[] = { };
	onLoad = "";
	controls[] = {TEXT1, TEXT2, TEXT3, BUTTON1, BUTTON2, BUTTON3};
	class Mainback: RscPicture
	{
		x = 0.26875-0.02;
		y = 0.30604-0.02;
		w = 0.476+0.04;
		h = 0.31189+0.04;
		moving = 1;
		text = "cl_images\images\ui_mainmenu_background_ca.paa";
	};
	class TEXT1: RscText
	{
		x = 0.3;
		y = 0.35088;
		idc = 6969;
		w = 0.41625;
		h = 0.05068;
		style = ST_LEFT;
		colorText[] = {0.8,0.8,0.8,1};
		colorBackground[] = {0,0,0,0.85};
		font = Zeppelin32;
		SizeEX = 0.024;
		text = "";
	};
	class TEXT2: RscText
	{
		x = 0.3;
		y = 0.35088+0.05068;
		idc = 465454;
		w = 0.41625;
		h = 0.05068;
		style = ST_LEFT;
		colorText[] = {0.8,0.8,0.8,1};
		colorBackground[] = {0,0,0,0.85};
		font = Zeppelin32;
		SizeEX = 0.024;
		text = "Police not being called";
	};
	class TEXT3: RscText
	{
		x = 0.3;
		y = 0.35088+0.05068+0.05068;
		idc = 465455;
		w = 0.41625;
		h = 0.05068;
		style = ST_LEFT;
		colorText[] = {0.8,0.8,0.8,1};
		colorBackground[] = {0,0,0,0.85};
		font = Zeppelin32;
		SizeEX = 0.024;
		text = "EMT not being called";
	};
	class BUTTON1: RscShortcutButton
	{
		x = 0.28625;
		y = 0.47173;
		idc = 465456;
		w = 0.20;
		style = ST_CENTER;
		colorText[] = {0.8,0.8,0.8,1};
		font = Zeppelin32;
		SizeEX = 0.025;
		text = "Call Police";
		action = "RL_YesNoRequestCops = true;ctrlSetText [465454,""Police are being called""];ctrlShow [465458 , true];";
		shortcuts[] = {0x00050000 + 0, 28, 57, 156};
		textureNoShortcut = "";
		period = 0.4;
	};
	class BUTTON2: RscShortcutButton
	{
		x = 0.51;
		y = 0.47173;
		idc = 465457;
		w = 0.20;
		style = ST_CENTER;
		colorText[] = {0.8,0.8,0.8,1};
		font = Zeppelin32;
		SizeEX = 0.025;
		text = "Call EMT";
		action = "RL_YesNoRequestEmt = true;ctrlSetText [465455,""EMT are being called""];ctrlShow [465458 , true];";
		default = false;
		shortcuts[] = {0x00050000 + 0, 28, 57, 156};
		textureNoShortcut = "";
		period = 0.4;
	};
	class BUTTON3: RscShortcutButton
	{
		x = 0.51 - 0.10;
		y = 0.53173;
		idc = 465458;
		w = 0.20;
		style = ST_CENTER;
		colorText[] = {0.8,0.8,0.8,1};
		font = Zeppelin32;
		SizeEX = 0.025;
		text = "Call";
		action = "RL_YesNoEmtCops = true;closeDialog 0;";
		shortcuts[] = {0x00050000 + 0, 28, 57, 156};
		textureNoShortcut = "";
		period = 0.4;
	};
};