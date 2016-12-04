RLRPG_PlayerHUD_Shown = {
        RLRPG_Hud_Shown
};
 
RLRPG_PlayerHUD_Show = {
       
        private["_value"];
        _value = _this select 0;
       
        if (_value) then {
                RLRPG_Hud_Shown = true;
        }
        else {
                RLRPG_Hud_Shown = false;
               
                disableSerialization;
                private["_display"];
                _display = uiNamespace getVariable ['RLRPGMainPlayerHUD', displayNull];
               
                if (!isNull _display) then {
                        _display closeDisplay 0;
                };
        };
};
 
RLRPG_PlayerHUD_Loop = {[] spawn {
        disableSerialization;
 
        while {RLRPG_RunMainHUD} do
        {
                private["_ui", "_hud", "_vitals", "_hudVehicle", "_missionUptimeText", "_timeText",
                "_decimalPlaces", "_health", "_invmoney", "_bankmoney", "_playerdesc"];
               
                waitUntil {(RLRPG_Hud_Shown)};
       
                1000 cutRsc ["RLRPGMainPlayerHUD","PLAIN"];
                _ui = uiNameSpace getVariable "RLRPGMainPlayerHUD";
                _vitals = _ui displayCtrl 3600;
                _hudVehicle = _ui displayCtrl 3601;
                _missionUptimeText = _ui displayCtrl 3402;
                _time = time / 60 / 60;
			    timeText = [_time] call BIS_fnc_timeToString;
                if(_time == 7200) then {
                        server globalChat "Server Warning: Automated Restart in 30 minutes!";
                        server globalChat "Server Warning: Automated Restart in 30 minutes!";
                        server globalChat "Server Warning: Automated Restart in 30 minutes!";
                };
                if(_time == 9000) then{
                        server globalChat "Server Warning: Server will automatically restart in 1-5minutes! Save your stats and log off!";
                        server globalChat "Server Warning: Server will automatically restart in 1-5minutes! Save your stats and log off!";
                        server globalChat "Server Warning: Server will automatically restart in 1-5minutes! Save your stats and log off!";
                        server globalChat "Server Warning: Server will automatically restart in 1-5minutes! Save your stats and log off!";
                        server globalChat "Server Warning: Server will automatically restart in 1-5minutes! Save your stats and log off!";
                };
                _missionUptimeText ctrlSetStructuredText parseText format["<t align='center' color='#cc2a36' font='Zeppelin32' shadow='2' shadowColor='#000000' size='1'>Server Uptime: </t><t align='center' color='#FFFFFF' font='Zeppelin32' shadow='2' shadowColor='#000000' size='1'>%1</t>
                <t align='right' color='#cc2a36' font='Zeppelin32' size='1'>Website: </t><t align='right' color='#FFFFFF' font='Zeppelin32' shadow='2' shadowColor='#000000' size='1'>%2</t>
		        <br/>
		        <t align='right' color='#cc2a36' font='Zeppelin32' size='1'>TeamSpeak 3: </t><t align='right' color='#ffffff' font='Zeppelin32' shadow='2' shadowColor='#000000' size='1'>%3</t>", 
		        _timeText, RLRPG_MainWebsiteURL, RLRPG_MainTeamspeak];        
       
                //Calculate Health 0 - 100
                _decimalPlaces = 2;
                _health = damage player;
                _health = round (_health * (10 ^ _decimalPlaces)) / (10 ^ _decimalPlaces);
                _health = 100 - (_health * 100);
                _invmoney = [(call player_get_inventory_money)] call RLRPG_FormatMoney;
                _bankmoney = [(konToStand)] call RLRPG_FormatMoney;
                _playerdesc = rolestring_ucase;
                _hunger = round(INV_hunger);
       
                _vitals ctrlSetStructuredText parseText format ["
                                %1 <img size='0.8' image='ol_textures\HUD\images\health.paa'/><br/>
                                %2 <img size='0.8' image='\CA\misc\data\icons\picture_money_CA.paa'/><br/>
                                %3 <img size='0.8' image='ol_textures\HUD\images\bank.paa'/><br/>
                                <t size='0.9' color='#ff0000'>%4</t> <t size='0.9' color='#ffffff'>:Hunger</t><br/>
                                <t size='0.9' color='#ff0000'>%5</t>",
                       
                        _health, _invmoney, _bankmoney, _playerfps, _playerdesc, _hunger];
                       
                       
                _vitals ctrlCommit 0;
                if(player != vehicle player) then
                {
                        private["_tempString", "_yOffset", "_vehicle", "_hudVehicle", "_x", "_y"];
               
                        _tempString = "";
                        _yOffset = 0.24;
                        _vehicle = assignedVehicle player;
 
                        {
                                if((driver _vehicle == _x) || (gunner _vehicle == _x)) then
                                {
                                        if(driver _vehicle == _x) then
                                        {
                                                _tempString = format ["%1 %2 <img size='0.8' image='ol_textures\HUD\images\driver.paa'/><br/>",_tempString, (name _x)];
                                                _yOffset = _yOffset + 0.04;
                                        }
                                        else
                                        {
                                                _tempString = format ["%1 %2 <img size='0.8' image='ol_textures\HUD\images\gunner.paa'/><br/>",_tempString, (name _x)];
                                                _yOffset = _yOffset + 0.04;
                                        };
                                }
                                else
                                {
                                        _tempString = format ["%1 %2 <img size='0.8' image='ol_textures\HUD\images\cargo.paa'/><br/>",_tempString, (name _x)];
                                        _yOffset = _yOffset + 0.04;
                                };    
                        } forEach crew _vehicle;
 
                        _hudVehicle ctrlSetStructuredText parseText _tempString;
                        _x = safeZoneX + (safeZoneW * (1 - (0.42 / SafeZoneW)));
                        _y = safeZoneY + (safeZoneH * (1 - (_yOffset / SafeZoneH)));
                        _hudVehicle ctrlSetPosition [_x, _y, 0.4, 0.65];
                        _hudVehicle ctrlCommit 0;
                };
                sleep 1;
        };
 
};};
 
 
 
if (isNil "playerhud_functions_defined") then {
        RLRPG_RunMainHUD = true;
};
 
playerhud_functions_defined = true;