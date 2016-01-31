class CompSystem{
	idd = 696901;
	moveEnable = true;
	controlsBackground[] = { CompSystemBackground };
	objects[] = {};
	controls[] = { CompSystemBackground, CompSystemTextbox, CompSystemTitle, CompSystemButton, CompSystemPlayerList };

	class CompSystemBackground : RscBackground
	{
		idc = -1;
		x = 0.20;
		y = 0.30;
		w = 0.50; 
		h = 0.30;
		colorBackgroundActive[] = { 255, 255, 255, 255, 255 };
	};
	class CompSystemFram : RscFrame
	{
		idc = -1;
		x = 0.20;
		y = 0.30;
		w = 0.50;
		h = 0.13;
		text = "RLRPG CompSystem";
	};
	class CompSystemTextbox : RscEdit
	{
		idc = 696902;
		x = 0.21; 
		y = 0.33; 
		w = 0.48; 
		h = 0.04;
		text = "Enter amount";
	};
	class CompSystemTitle : RscText
	{
		idc = -1;
		text = "Comp System (Above 0 and below 5m)";
		x = 0.21; 
		y = 0.38; 
		w = 0.50; 
		h = 0.04;
	};
	class CompSystemButton : RscButton
	{
		idc = -1;
		text = "Send Comp!";
		x = 0.49; 
		y = 0.48;
		w = 0.20; 
		h = 0.04;
		action = "[(ctrlText 696902)] call compSystemProccess; closeDialog 0;";
	};
	class CompSystemPlayerList : RscCombo
	{
		idc = 696903;
		x = 0.21; 
		y = 0.48; 
		w = 0.20; 
		h = 0.04;
	};
};