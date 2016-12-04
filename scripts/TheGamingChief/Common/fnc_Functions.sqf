fnc_ZipTieLoop = {
	[] spawn {
		while {player getVariable "ZipTied"} do
		{
				_civ = player;
				_civ setVariable ["tf_unable_to_use_radio", true];	
				if (!(animationstate player == "actspercmstpsnonwrfldnon_interrogate02_forgoten") && (player == vehicle player)) then {
				(format ["%1 switchmove ""%2"";", _civ, "actspercmstpsnonwrfldnon_interrogate02_forgoten"]) call broadcast;
				};
			_state = vehicle player;
			
			if !(player getVariable "ZipTied") exitwith 
			{
				_civ setVariable ["ZipTied",false,true];
				_civ setVariable ["tf_voiceVolume", 1, true];
				_civ setVariable ["Gagged",false,true];
				_civ setVariable ["tf_unable_to_use_radio", false];	
				isstunned = false;
			};
			
			if (player getVariable "KOED") exitwith 
			{
				_civ setVariable ["ZipTied",false,true];
				_civ setVariable ["Cuffed",false,true];
				_civ setVariable ["Gagged",false,true];
				_civ setVariable ["tf_unable_to_use_radio", false];	
				isstunned = false;
				if(animationstate _civ == "actspercmstpsnonwrfldnon_interrogate02_forgoten") then {
					(format ["%1 switchmove ""%2"";", _civ, "adthppnemstpsraswpstdnon_2"]) call broadcast;
				};
			};
			waitUntil {(animationState player != "actspercmstpsnonwrfldnon_interrogate02_forgoten") || vehicle player != _state};
			
			if(vehicle player != player) then
			{
				if(driver (vehicle player) == player) then {
					player action["eject",vehicle player]
				};
			};
		};
	};
};

fnc_HandCuffLoop = {
	[] spawn {
		while {player getVariable "Cuffed"} do
		{
				_civ = player;
				_civ setVariable ["tf_unable_to_use_radio", true];
				if (!(animationstate player == "actspercmstpsnonwrfldnon_interrogate02_forgoten") && (player == vehicle player)) then {
				(format ["%1 switchmove ""%2"";", _civ, "actspercmstpsnonwrfldnon_interrogate02_forgoten"]) call broadcast;
				};
			_state = vehicle player;
			
			if !(player getVariable "Cuffed") exitwith 
			{
				_civ setVariable ["Cuffed",false,true];
				_civ setVariable ["tf_voiceVolume", 1, true];
				_civ setVariable ["Gagged",false,true];
				_civ setVariable ["tf_unable_to_use_radio", false];	
				isstunned = false;
			};
			
			if (player getVariable "KOED") exitwith 
			{
				_civ setVariable ["ZipTied",false,true];
				_civ setVariable ["Cuffed",false,true];
				_civ setVariable ["Gagged",false,true];
				_civ setVariable ["tf_unable_to_use_radio", false];	
				isstunned = false;
				if(animationstate _civ == "actspercmstpsnonwrfldnon_interrogate02_forgoten") then {
					(format ["%1 switchmove ""%2"";", _civ, "adthppnemstpsraswpstdnon_2"]) call broadcast;
				};
			};
			
			waitUntil {(animationState player != "actspercmstpsnonwrfldnon_interrogate02_forgoten") || vehicle player != _state};
			
			if(vehicle player != player) then
			{
				if(driver (vehicle player) == player) then {
					player action["eject",vehicle player]
				};
			};
		};
	};
};

fnc_GagLoop = {
	[] spawn {
		while {player getVariable "Gagged"} do
		{
			taskHint ["You are gagged\nYou can't speak!", [1, 1, 1, 1], "taskNew"]; 
			sleep 10;
			if !(player getVariable "Gagged") exitwith {};
			waitUntil {(player getVariable "tf_isSpeaking")};
		};
	};
};

RemoveActionText = {

    _this spawn
    {
        Private ["_TagArray","_x"];
        _TagArray = playerarray;
        _lastCur = "";
        while {true} do
        {
            _cur = cursortarget;
            waitUntil {(cursortarget != _cur) && (str(cursortarget) != _lastCur)};
            _TagArray = playerarray;
            10 cutRsc ["ENT_playertags", "PLAIN"];
            _lastCur = str(cursortarget);
        };
    };
};