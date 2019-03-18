_swag = _this select 1;
[_swag] spawn OL_fnc_Clothes;
player groupChat "Damn you are looking sexy";
player groupChat "Show it off to all your friends";
[_swag, -1] call INV_AddInvItem;
