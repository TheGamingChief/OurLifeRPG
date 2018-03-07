if (isServer) exitWith {};
waitUntil {!isNil "OL_InitComplete"};
waitUntil {OL_InitComplete};

[[5, format["// %1 Has Joined Our Life RPG as %2!", PlayerName, player], "true"], "OL_misc_ChatMessage", true, false] call OL_network_MP;

_iterations = 0;

while {true} do	{
	_iterations = _iterations + 5;

	//5 Seconds
	if (_iterations % 1 == 0) then {
		[] spawn fnc_UpdatePlayerArray;
		[] spawn OL_TFAR_channelCheck;
		[] spawn CP_fnc_VarQueueUpdate;
		[] spawn OL_misc_FosterFireCheck;
		[] spawn OL_misc_updatePlayTime;
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
		if ((!("OL_License_civ_drivers" in OL_Licenses)) && (player getVariable ["OL_Has_Drivers_License", true])) then { player setVariable ["OL_Has_Drivers_License", false, true] };
		if (Kontostand > OL_BankLimit) then { Kontostand = OL_BankLimit; player groupChat localize "STRS_maxbank"; };
		if ("geld" call INV_GetItemAmount > OL_MoneyLimit) then { ["geld", OL_MoneyLimit] call INV_SetItemAmount; player groupChat localize "STRS_maxmoney"; };
	};

	//60 Seconds
  if (_iterations % 60 == 0) then {
      [] spawn OL_misc_Hunger;
  };

	//300 Seconds (5 Minutes)
	if (_iterations % 300 == 0) then {
		if (!isNil "Stats_fnc_Save") then {
			[] spawn Stats_fnc_Save
		};
		[] spawn OL_player_Paycheck;
	};

	uiSleep 5;
};
