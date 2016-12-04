/*
Script made by : TheGamingChief for OurLifeRPG
Version 1.0 (Stable)
File: Variables.sqf
Description: Sets all the TFR variables.
TeamSpeak: TS.OurLifeRPG.Net
Website: OurLifeRPG.Net
*/

tf_radio_channel_name = "TaskForceRadio";
tf_radio_channel_password = "8/8PasswordSuchb8";
TF_terrain_interception_coefficient = -4;
TF_MAX_ASIP_FREQ = 108;
tf_no_auto_long_range_radio = true;
TF_defaultWestPersonalRadio = "tf_anprc148jem";
TF_defaultEastPersonalRadio = "tf_pd785";
TF_defaultGuerPersonalRadio = "tf_anprc152";
AllowedChannels = ["TaskForceRadio"];
TF_defaultWestBackpack = "";
TF_defaultEastBackpack = "";
TF_defaultGuerBackpack = "";
tf_west_radio_code = "";
RadioArr = [];
tf_guer_radio_code = tf_west_radio_code;
tf_civ_radio_code = tf_west_radio_code;

fnc_RemoveRadios = { 
    private["_curWeapon"];
    {
        _curWeapon = toArray _x;
        _curWeapon resize 3;
        
        if (toString _curWeapon == "tf_") then {
            player removeWeapon _x;
        }
        
    }forEach (weapons player);
	player addweapon "itemradio";
};

fnc_RemoveRadiosV2 = { 
    private["_curWeapon"];
    {
        _curWeapon = toArray _x;
        _curWeapon resize 3;
        
        if (toString _curWeapon == "tf_") then {
            player removeWeapon _x;
        }
        
    }forEach (weapons player);
};

GetRadioID = { 
    {
        _curWeapon = toArray _x;
        _curWeapon resize 3;
        
        if (toString _curWeapon == "tf_") then {
            RadioArr = [_x];
        }
        
    }forEach (weapons player);
};

AddRadioBack = {
	call fnc_RemoveRadiosV2;
	uiSleep 1;
	{
		player addWeapon _x;
	} forEach RadioArr;
};