private ["_blesse", "_joueur", "_i"];

_blesse = _this select 0;
_joueur = player;

_blesse setVariable ["R3F_REV_est_pris_en_charge_par", _joueur, true];
_blesse setVariable ["KOED", false, true];

_joueur attachTo [_blesse, [-0.666, 0.222, 0]];
_joueur setDir 90;
_joueur playMoveNow "AinvPknlMstpSnonWrflDnon_medic";
sleep 5;
player groupchat format["You have been payed $2000 for reviving %1, They still need more medical attention!", _blesse];
['geld',2000] call INV_AddInventoryItem;
sleep 7;
player groupchat "If there are any Officers on scene, consult them before providing medical attention!";


R3F_REV_code_distant = [_blesse, "playMoveNow", "AinjPpneMstpSnonWrflDnon_rolltoback"];
publicVariable "R3F_REV_code_distant";
["R3F_REV_code_distant", R3F_REV_code_distant] spawn R3F_REV_FNCT_code_distant;

sleep 1.5;

if (!isNull _joueur && alive _joueur && !isNull _blesse && alive _blesse) then
{
	_joueur playMove format ["AinvPknlMstpSnonWrflDnon_medic%1", floor random 6];
};

for [{_i = 0}, {_i < 12 && !isNull _joueur && alive _joueur && !isNull _blesse && alive _blesse}, {_i = _i + 1}] do
{sleep 1;};

if !(isNull _blesse) then
{
	if (!isNull _joueur && alive _joueur && alive _blesse) then
	{
		R3F_REV_fin_inconscience = _blesse;
		publicVariable "R3F_REV_fin_inconscience";
		["R3F_REV_fin_inconscience", R3F_REV_fin_inconscience] spawn R3F_REV_FNCT_fin_inconscience;
		_blesse setVariable ["R3F_REV_est_inconscient", false, true];

		R3F_REV_code_distant = [_blesse, "playMoveNow", "AmovPpneMstpSrasWrflDnon"];
		publicVariable "R3F_REV_code_distant";
		["R3F_REV_code_distant", R3F_REV_code_distant] spawn R3F_REV_FNCT_code_distant;
	};

	_blesse setVariable ["R3F_REV_est_pris_en_charge_par", nil, true];
};

if !(isNull _joueur) then
{
	if (alive _joueur) then
	{
		_joueur playMoveNow "AinvPknlMstpSnonWrflDnon_medicEnd";
		sleep 1;
	};
	detach _joueur;
};
