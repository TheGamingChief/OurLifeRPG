private ["_weaponclass"];
if(!RL_PrimHolstered)then
{
	if(!((primaryWeapon player) == "empty"))then
	{
		_saved1 = [];
		RL_PrimHWep = primaryWeapon player;
		_weps = + (weapons player);
		player removeWeapon RL_PrimHWep;
		for [{_i = 0}, {_i < count(_weps)}, {_i = _i + 1}] do {
			if (!((_weps select _i) in cantStore)) then {
			_saved1 set[count(_saved1), _weps select _i];
            };
		};
	HolsterArr set[0, _saved1];
	RL_PrimHolstered = true;
	RL_PH = true;
	};
}else{
	if(!(RL_PH))exitWith
	{
		player sideChat "Action Lockout";
	};
	if ((count(HolsterArr select 0) >= 1)) then {
	private ["_i","_c","_class","_amount","_a79tmp"];
		_a79tmp = + (HolsterArr);
		for [{_i = 0}, {_i < count(_a79tmp select 0)}, {_i = _i + 1}] do {
			_class = (_a79tmp select 0) select _i;
			player addWeapon _class;
		};
		HolsterArr = [];
		RL_PrimHWep = "empty";
		RL_PrimHolstered = false;
		RL_PH = false;
	};
};