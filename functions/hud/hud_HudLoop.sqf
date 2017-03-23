[] spawn {
	disableSerialization;

	uiSleep 3;

	while {true} do
	{
		private["_ui", "_hud", "_vitals", "_hudVehicle", "_missionUptimeText", "_timeText", "_health", "_invmoney", "_bankmoney", "_playerfps", "_playerdesc"];

		waitUntil {OL_Hud_Shown};

		1000 cutRsc ["RLRPGMainPlayerHUD","PLAIN"];
		_ui = uiNameSpace getVariable "RLRPGMainPlayerHUD";
		_vitals = _ui displayCtrl 3600;
		_missionUptimeText = _ui displayCtrl 3402;

    _time = serverTime / 60 / 60;
		_timeText = [_time] call BIS_fnc_timeToString;
		_missionUptimeText ctrlSetStructuredText parseText format["<t align='center' color='#cc2a36' font='Zeppelin32' shadow='2' shadowColor='#000000' size='1'>Server Uptime: </t><t align='center' color='#FFFFFF' font='Zeppelin32' shadow='2' shadowColor='#000000' size='1'>%1</t>
		<t align='right' color='#cc2a36' font='Zeppelin32' size='1'>Website: </t><t align='right' color='#FFFFFF' font='Zeppelin32' shadow='2' shadowColor='#000000' size='1'>%2</t>
		<br/>
		<t align='right' color='#cc2a36' font='Zeppelin32' size='1'>TeamSpeak 3: </t><t align='right' color='#ffffff' font='Zeppelin32' shadow='2' shadowColor='#000000' size='1'>%3</t>",
		_timeText, OL_MainWebsiteURL, OL_MainTeamspeak];

		//Calculate Health 0 - 100
		_health = round((1 - damage player) * 100);
		_invmoney = ['geld' call INV_GetItemAmount] call OL_isse_FormatMoney;
		_bankmoney = [(Kontostand)] call OL_isse_FormatMoney;
		_playerfps = round (diag_fps);
		_playerdesc = rolestring_ucase;
		_hunger = round(INV_hunger);

		_vitals ctrlSetStructuredText parseText format ["
				%1 <img size='0.8' image='ol_textures\HUD\images\health.paa'/><br/>
				%2 <img size='0.8' image='\CA\misc\data\icons\picture_money_CA.paa'/><br/>
				%3 <img size='0.8' image='ol_textures\HUD\images\bank.paa'/><br/>
				<t size='0.9' color='#ff0000'>%4</t> <t size='0.9' color='#ffffff'>:FPS</t><br/>
				<t size='0.9' color='#ff0000'>%6</t> <t size='0.9' color='#ffffff'>:Hunger</t><br/>
				<t size='0.9' color='#ff0000'>%5</t>",
			    _health, _invmoney, _bankmoney, _playerfps, _playerdesc,_hunger];

		_vitals ctrlCommit 0;

		uiSleep 1;
	};

};
