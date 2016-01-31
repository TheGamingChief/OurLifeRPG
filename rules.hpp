class rulesdialog

{

idd = -1;
movingEnable = true;
controlsBackground[] = {DLG_BACK1, background};
objects[] = { };
controls[] = {InfoText, button_agree, button_disagree, dummybutton};

	class DLG_BACK1: Rscbackground

	{
	colorBackground[] = { .184, .309, .184, 1 };
	x = 0.05; y = 0.05;
	w = 1.0; h = 1.0;

	};
	class background : RscBgRahmen
	{

	x = 0.05; y = 0.05;
	w = 1.0; h = 1.0;
	text = "Rules";
	};

	class InfoText : RscText

	{
	idc = 1;
	font = FontM;
	sizeEx = 0.023;
	x = 0.08; y = 0.08;
	w = 0.90; h = 0.90;
	style = ST_MULTI;
	lineSpacing = 1;

	};

	class button_agree : RscButton

	{
	x = 0.50; y = 1.0;
	w = 0.20; h = 0.04;
	text = "I Agree";
	action = "closedialog 0;";
	};

	class button_disagree : RscButton

	{
	x = 0.25; y = 1.0;
	w = 0.20; h = 0.04;
	text = "I Disagree";
	action = "closedialog 0; disableUserInput true;";
	};

	class dummybutton : RscDummy
	{
	idc = 2036;
	};

};
