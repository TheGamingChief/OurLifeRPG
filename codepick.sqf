_art = _this select 0;

["codeb", -1] call INV_AddInvItem;

if (_art == "use") then {
	if (player distance PB_3 <= 15) then {
		if ((random 100) < 50) then {
			player groupChat format ["The code to unlock is %1", armat_JailCode];
		} else {
			player groupChat "Code Breaker Malfunction, Silent Alarm Triggered";
			[[5, "Jail gate sensor has gone off!"], "OL_misc_ChatMessage", west, false] call OL_network_MP;
		};
	};
} else {
	player groupChat "You are not close enough to a gate to the jail";
};

if (player distance PB_3 <= 15) then {
	if ((random 100) < 50) then {
		player groupChat format ["The code to unlock is %1", armat_JailCode];
	} else {
		player groupChat "Code Breaker Malfunction, Silent Alarm Triggered";
		[[5, "Jail gate sensor has gone off!"], "OL_misc_ChatMessage", west, false] call OL_network_MP;
	};
} else {
	player groupChat "You are not close enough to a gate to the jail";
};
