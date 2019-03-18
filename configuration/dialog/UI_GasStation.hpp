class UI_GasStationInfo {
	idd = -1;

  class controlsBackground {
    class ui_GasStationInfo_Background: RscBackground
    {
    	idc = 1800;
    	x = 0.429113 * safezoneW + safezoneX;
    	y = 0.417507 * safezoneH + safezoneY;
    	w = 0.141773 * safezoneW;
    	h = 0.164987 * safezoneH;
    };
  };
  class controls {
    class ui_GasStationInfo_PumpInfo: RscStructuredText
    {
    	idc = 1100;
    	text = "Pump (1): 11,000 Litres \nPump (2): 11,000 Litres\nPump (3): 11,000 Litres\nPump (4): 11,000 Litres\n\nPrice Per Litre: $100000";
    	x = 0.435558 * safezoneW + safezoneX;
    	y = 0.431256 * safezoneH + safezoneY;
    	w = 0.128885 * safezoneW;
    	h = 0.137489 * safezoneH;
    };
  };
};

class UI_GasStationInfo {
	idd = -1;

  class controlsBackground {
    class ui_GasStation_Background: RscBackground
    {
    	idc = 1800;
    	x = 0.409781 * safezoneW + safezoneX;
    	y = 0.348762 * safezoneH + safezoneY;
    	w = 0.180438 * safezoneW;
    	h = 0.302475 * safezoneH;
    };
  };

  class controls {
    class ui_GasStation_Pump1: RscText
    {
    	idc = 1001;
    	text = "Pump (1) - 11,000";
    	x = 0.416225 * safezoneW + safezoneX;
    	y = 0.445004 * safezoneH + safezoneY;
    	w = 0.0773307 * safezoneW;
    	h = 0.0274978 * safezoneH;
    };
    class ui_GasStation_Pump2: RscText
    {
    	idc = 1004;
    	text = "Pump (2) - 11,000";
    	x = 0.506444 * safezoneW + safezoneX;
    	y = 0.445004 * safezoneH + safezoneY;
    	w = 0.0773307 * safezoneW;
    	h = 0.0274978 * safezoneH;
    };
    class ui_GasStation_Pump3: RscText
    {
    	idc = 1002;
    	text = "Pump (3) - 11,000";
    	x = 0.416225 * safezoneW + safezoneX;
    	y = 0.527498 * safezoneH + safezoneY;
    	w = 0.0773307 * safezoneW;
    	h = 0.0274978 * safezoneH;
    };
    class ui_GasStation_Pump4: RscText
    {
    	idc = 1003;
    	text = "Pump (4) - 11,000";
    	x = 0.506444 * safezoneW + safezoneX;
    	y = 0.527498 * safezoneH + safezoneY;
    	w = 0.0773307 * safezoneW;
    	h = 0.0274978 * safezoneH;
    };
    class ui_GasStation_Pump1Input: RscEdit
    {
    	idc = 1400;
    	text = "0";
    	x = 0.416225 * safezoneW + safezoneX;
    	y = 0.486251 * safezoneH + safezoneY;
    	w = 0.0773307 * safezoneW;
    	h = 0.0274978 * safezoneH;
    };
    class ui_GasStation_Pump2Input: RscEdit
    {
    	idc = 1401;
    	text = "0";
    	x = 0.506444 * safezoneW + safezoneX;
    	y = 0.486251 * safezoneH + safezoneY;
    	w = 0.0773307 * safezoneW;
    	h = 0.0274978 * safezoneH;
    };
    class ui_GasStation_Pump3Input: RscEdit
    {
    	idc = 1402;
    	text = "0";
    	x = 0.416225 * safezoneW + safezoneX;
    	y = 0.568744 * safezoneH + safezoneY;
    	w = 0.0773307 * safezoneW;
    	h = 0.0274978 * safezoneH;
    };
    class ui_GasStation_Pump4Input: RscEdit
    {
    	idc = 1403;
    	text = "0";
    	x = 0.506444 * safezoneW + safezoneX;
    	y = 0.568744 * safezoneH + safezoneY;
    	w = 0.0773307 * safezoneW;
    	h = 0.0274978 * safezoneH;
    };
    class ui_GasStation_Header: RscStructuredText
    {
    	idc = 1100;
    	text = "The Tanker Has: 44,000 Litres. How much would you like put into each pump?";
    	x = 0.416225 * safezoneW + safezoneX;
    	y = 0.362511 * safezoneH + safezoneY;
    	w = 0.16755 * safezoneW;
    	h = 0.0687444 * safezoneH;
    };
    class ui_GasStation_Submit: RscButton
    {
    	idc = 1600;
    	text = "Submit";
      action = "[ctrlText 1400, ctrlText 1401, ctrlText 1402, ctrlText 1403] call OL_stations_refuelPumps; closeDialog 0;";
    	x = 0.461335 * safezoneW + safezoneX;
    	y = 0.609991 * safezoneH + safezoneY;
    	w = 0.0773307 * safezoneW;
    	h = 0.0274978 * safezoneH;
    };
  };
};
