private["_actiontype"];

_actiontype = ((_this select 3) select 0);

switch (_actiontype) do {
	case "hidehud": {
		[false] call RLRPG_PlayerHUD_Show;
	};
	case "showhud": {
		[true] call RLRPG_PlayerHUD_Show;
	};
};