class UI_BoloMenu {
	idd = -1;
  controlsBackground[] = {ui_Bolo_Background};
	controls[] = {
    ui_Bolo_Header,
    ui_Bolo_vehicleInput,
    ui_Bolo_header1,
    ui_Bolo_reasonInput,
    ui_Bolo_header2,
    ui_Bolo_lastseenInput,
    ui_Bolo_cancelBtn,
    ui_Bolo_submitBtn
  };

  class ui_Bolo_Background: RscBackground
  {
  	idc = 1800;
  	x = 0.429113 * safezoneW + safezoneX;
  	y = 0.348762 * safezoneH + safezoneY;
  	w = 0.141773 * safezoneW;
  	h = 0.343722 * safezoneH;
  };
  class ui_Bolo_Header: RscText
  {
  	idc = 1000;
  	text = "Vehicle Model & Color:";
  	x = 0.435558 * safezoneW + safezoneX;
  	y = 0.362511 * safezoneH + safezoneY;
  	w = 0.128885 * safezoneW;
  	h = 0.0274978 * safezoneH;
  };
  class ui_Bolo_vehicleInput: RscEdit
  {
  	idc = 1400;
  	x = 0.435558 * safezoneW + safezoneX;
  	y = 0.403758 * safezoneH + safezoneY;
  	w = 0.128885 * safezoneW;
  	h = 0.0412466 * safezoneH;
  };
  class ui_Bolo_header1: RscText
  {
  	idc = 1001;
  	text = "Reason:";
  	x = 0.435558 * safezoneW + safezoneX;
  	y = 0.458753 * safezoneH + safezoneY;
  	w = 0.128885 * safezoneW;
  	h = 0.0274978 * safezoneH;
  };
  class ui_Bolo_reasonInput: RscEdit
  {
  	idc = 1401;
  	x = 0.435558 * safezoneW + safezoneX;
  	y = 0.5 * safezoneH + safezoneY;
  	w = 0.128885 * safezoneW;
  	h = 0.0412466 * safezoneH;
  };
  class ui_Bolo_header2: RscText
  {
  	idc = 1002;
  	text = "Last Seen:";
  	x = 0.435558 * safezoneW + safezoneX;
  	y = 0.554996 * safezoneH + safezoneY;
  	w = 0.128885 * safezoneW;
  	h = 0.0274978 * safezoneH;
  };
  class ui_Bolo_lastseenInput: RscEdit
  {
  	idc = 1402;
  	x = 0.435558 * safezoneW + safezoneX;
  	y = 0.596242 * safezoneH + safezoneY;
  	w = 0.128885 * safezoneW;
  	h = 0.0412466 * safezoneH;
  };
  class ui_Bolo_cancelBtn: RscButton
  {
  	idc = 1600;
  	text = "Cancel";
    action = "closeDialog 0;";
  	x = 0.435558 * safezoneW + safezoneX;
  	y = 0.651238 * safezoneH + safezoneY;
  	w = 0.0579981 * safezoneW;
  	h = 0.0274978 * safezoneH;
  };
  class ui_Bolo_submitBtn: RscButton
  {
  	idc = 1601;
  	text = "Submit";
    action = "[ctrlText 1400, ctrlText 1401, ctrlText 1402] call OL_misc_submitBolo; closeDialog 0;";
  	x = 0.506444 * safezoneW + safezoneX;
  	y = 0.651238 * safezoneH + safezoneY;
  	w = 0.0579981 * safezoneW;
  	h = 0.0274978 * safezoneH;
  };
};
