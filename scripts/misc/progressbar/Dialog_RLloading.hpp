class RL_Dialog_loading
{
	idd = 242334;
	movingEnable = "false";
	duration = 99999999999999999;
	fadein = 0;
	fadeout = 0;
	name = "RL_Dialog_loading";
	onLoad = "with uiNameSpace do {RL_Dialog_loading = _this select 0;};";
	controlsBackground[]=
	{
		Mainback
	};
	objects[]={};
	controls[]=
	{
		progressbar,
		infotext0,
		infotext1
	};
	class Mainback : RscPicture
	{
		x=0.1;
		y=0.1;
		w=0.84;
		h=0.84;
		moving = 0;
		text = "";
	};
	class progressbar : RscPicture
	{
		x=0.110104;
		y=0.57571;
		w=0.82;
		h=0.0416666666666667;
		idc=1111;
		moving = 0;
		text = "ol_textures\misc\progressbar\progressbar0.paa";
	};
	class infotext0: RscText
	{
		idc=1112;
		x=0.110104;
		y=0.61571;
		w=0.82;
		h=0.0416666666666667;
		colorBackground[]={0,0,0,1};
		style=ST_CENTER;
		colorText[]={0.8,0.8,0.8,1};
		font=CLFontM;
		sizeEx=0.04;
		text="Power On";
	};
	class infotext1:RscText
	{
		idc=1113;
		x=0.880104;
		y=0.57571;
		w=0.269399707174231;
		h=0.0416666666666667;
		colorBackground[]={0,0,0,0};
		text="0%";
	};
};