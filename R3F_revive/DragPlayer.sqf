private ["_blesse", "_joueur", "_id_action"];

_blesse = _this select 0;
_joueur = player;

_blesse setVariable ["R3F_REV_est_pris_en_charge_par", _joueur, true];
R3F_REV_demande_relacher_corps = false;
_id_action = _joueur addAction ["Release body", { detach player }, _blesse, 10, false, true, "", ""];

_blesse attachTo [_joueur, [0, 1.1, 0.092]];
R3F_REV_code_distant = [_blesse, "setDir", 180];
publicVariable "R3F_REV_code_distant";
["R3F_REV_code_distant", R3F_REV_code_distant] spawn R3F_REV_FNCT_code_distant;

if (!isNull _joueur && alive _joueur && !isNull _blesse && alive _blesse) then
{
	publicVariable "R3F_REV_code_distant";
	["R3F_REV_code_distant", R3F_REV_code_distant] spawn R3F_REV_FNCT_code_distant;
};

sleep 3;

if !(isNull _blesse) then
{
	detach _blesse;
	if (alive _blesse) then
	{
		publicVariable "R3F_REV_code_distant";
		["R3F_REV_code_distant", R3F_REV_code_distant] spawn R3F_REV_FNCT_code_distant;
	}
	else
	{
		publicVariable "R3F_REV_code_distant";
		["R3F_REV_code_distant", R3F_REV_code_distant] spawn R3F_REV_FNCT_code_distant;
	};
	_blesse setVariable ["R3F_REV_est_pris_en_charge_par", nil, true];
};

if !(isNull _joueur) then
{
	_joueur removeAction _id_action;
};

R3F_REV_demande_relacher_corps = nil;
