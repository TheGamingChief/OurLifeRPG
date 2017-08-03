if (isServer) exitWith {};
waitUntil {!isNil "OL_InitComplete"};
waitUntil {OL_InitComplete};

[[5, format["// %1 Has Joined Our Life RPG as %2!", name player, player]], "OL_misc_ChatMessage", true, false] call OL_network_MP;

_iterations = 0;

while {true} do	{
	_iterations = _iterations + 5;

	//5 Seconds
	if (_iterations % 1 == 0) then {
		[] spawn fnc_UpdatePlayerArray;
		/*[] spawn OL_TFAR_channelCheck;*/
		[] spawn CP_fnc_VarQueueUpdate;
		[] spawn OL_misc_FosterFireCheck;
		["CL"] spawn OL_misc_Markers;
	};

	//10 Seconds
	if (_iterations % 10 == 0) then {
		_geld = 'geld' call INV_GetItemAmount;
		player setVariable ["Kontostand",Kontostand,true];
		player setVariable ["moneyPlayer",_geld,true];
	};

	//15 Seconds
	if (_iterations % 15 == 0) then {
		if (Kontostand > bank_limit) then { Kontostand = bank_limit; player groupChat localize "STRS_maxbank"; };
		if ("geld" call INV_GetItemAmount > money_limit) then {['geld', money_limit] call INV_SetItemAmount; player groupChat localize "STRS_maxmoney";};
	};

	//60 Seconds
  if (_iterations % 60 == 0) then {
      [] spawn OL_misc_Hunger;
  };

	//300 Seconds (5 Minutes)
	if (_iterations % 300 == 0) then {
		if (!isNil "fnc_SaveStats") then {
			[] spawn fnc_SaveStats
		};
		[] spawn OL_player_Paycheck;
	};

	uiSleep 5;
};
