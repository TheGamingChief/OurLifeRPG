class ENT_Playertags {

	idd = 1000600;
	movingEnable=0;
	duration = 15000;

	onLoad = "uiNamespace setVariable ['ENT_playertag',[_this select 0,1000601]]";
	controlsBackground[] = {"ENT_playertag"};

	class ENT_playertag {
		
		idc = 1000601;
		type = 13;
		style = 0x01;
		x = 0.5;
		y = 0.5;
		w = 0.25;
		h = 0.2;
		size = 0.02;
		colorBackground[] = {0,0,0,0};
		colortext[] = {0,0,0,0.7};
		text ="";
		
		class Attributes {
			align = "right";
			valign = "middle";
			size = "1";
			shadow = true;
			shadowColor = "#2D2D2D";
		};
	};
};