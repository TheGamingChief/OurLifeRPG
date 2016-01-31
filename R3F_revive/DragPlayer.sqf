/**
 * Traîne le corps d'un joueur inconscient
 * 
 * @param 0 l'unité à traîner
 * 
 * Copyright (C) 2011 madbull ~R3F~
 * 
 * This program is free software under the terms of the GNU General Public License version 3.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

private ["_blesse", "_joueur", "_id_action"];

_blesse = _this select 0;
_joueur = player;

_blesse setVariable ["R3F_REV_est_pris_en_charge_par", _joueur, true];
R3F_REV_demande_relacher_corps = false;
_id_action = _joueur addAction [STR_R3F_REV_action_relacher_corps, "R3F_revive\DetachPlayer.sqf", _blesse, 10, false, true, "", ""];

// Le blessé est attaché au joueur
_blesse attachTo [_joueur, [0, 1.1, 0.092]];
R3F_REV_code_distant = [_blesse, "setDir", 180];
publicVariable "R3F_REV_code_distant";
["R3F_REV_code_distant", R3F_REV_code_distant] spawn R3F_REV_FNCT_code_distant;

// Le joueur tire le blessé par la poignée de son gilet
if (!isNull _joueur && alive _joueur && !isNull _blesse && alive _blesse) then
{
	publicVariable "R3F_REV_code_distant";
	["R3F_REV_code_distant", R3F_REV_code_distant] spawn R3F_REV_FNCT_code_distant;
};

sleep 3;
// On relâche le blessé
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

// Le joueur sort de l'animation traînant le blessé
if !(isNull _joueur) then
{
	if (alive _joueur) then
	{
		// Le joueur a voulu se coucher pendant qu'il trainait le corps
		if (animationState _joueur == "acinpknlmstpsraswrfldnon_amovppnemstpsraswrfldnon") then
		{
		
		}
		else
		{
			
		};
	}
	else
	{
		// Eviter le bug ArmA du cadavre qui glisse indéfiniment sur le sol
	};
	_joueur removeAction _id_action;
};

R3F_REV_demande_relacher_corps = nil;