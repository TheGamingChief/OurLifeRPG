class AM_CarStorage{
	idd=-1;
	controls[] = {
		class RscFrame_1800: RscFrame
		{
			idc = 1800;
			x = 0.295833 * safezoneW + safezoneX;
			y = 0.228703 * safezoneH + safezoneY;
			w = 0.407917 * safezoneW;
			h = 0.54389 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Vehicle Storage System";
			x = 0.440105 * safezoneW + safezoneX;
			y = 0.197223 * safezoneH + safezoneY;
			w = 0.120417 * safezoneW;
			h = 0.0355555 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.309895 * safezoneW + safezoneX;
			y = 0.255555 * safezoneH + safezoneY;
			w = 0.380833 * safezoneW;
			h = 0.433704 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Store Vehicle";
			x = 0.311458 * safezoneW + safezoneX;
			y = 0.698148 * safezoneH + safezoneY;
			w = 0.137083 * safezoneW;
			h = 0.0466667 * safezoneH;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Retreive Vehicle";
			x = 0.553125 * safezoneW + safezoneX;
			y = 0.698148 * safezoneH + safezoneY;
			w = 0.137083 * safezoneW;
			h = 0.0466667 * safezoneH;
		};
		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "logo.paa";
			x = 0.489061 * safezoneW + safezoneX;
			y = 0.697225 * safezoneH + safezoneY;
			w = 0.0303125 * safezoneW;
			h = 0.0466665 * safezoneH;
		};
	};
};