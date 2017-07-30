_key = call compile (_this select 0);

if (iscop) then {
	_gridPos = mapGridPosition getpos player;

	if ((_gridPos == "048049") || (_gridPos == "049049") || (_gridPos == "048048")) then {
		[ctrafficspawn, _key] spawn OL_Vehicle_Retrieve;
	};

	if ((_gridPos == "035070") || (_gridPos == "035071") || (_gridPos == "036071") || (_gridPos == "036070")) then {
		[simpoundspawn, _key] spawn OL_Vehicle_Retrieve;
	};
} else {
	[impoundarea2, _key] spawn OL_Vehicle_Retrieve;
};

player groupchat format["You paid the $%1 fine and retrieved your vehicle!", impoundpay];
