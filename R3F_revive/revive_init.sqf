#include "config.sqf"

R3F_REV_FNCT_code_distant =
{
	private ["_unite", "_commande", "_parametre"];
	_unite = _this select 1 select 0;
	_commande = _this select 1 select 1;
	_parametre = _this select 1 select 2;

	if (local _unite) then
	{
		switch (_commande) do
		{
			case "switchMove": {_unite switchMove _parametre;};
			case "setDir": {_unite setDir _parametre;};
			case "playMove": {_unite playMove _parametre;};
			case "playMoveNow": {_unite playMoveNow _parametre;};
		};
	};
};
"R3F_REV_code_distant" addPublicVariableEventHandler R3F_REV_FNCT_code_distant;

if !(isServer && isDedicated) then
{
	[] spawn
	{
		R3F_REV_fil_exec_attente_reanimation = [] spawn {};

		R3F_REV_fil_exec_reapparaitre_camp = [] spawn {};

		R3F_REV_fil_exec_effet_inconscient = [] spawn {};

		R3F_REV_nb_reanimations = R3F_REV_CFG_nb_reanimations;

		R3F_REV_FNCT_onKilled = compile preprocessFile "R3F_revive\onKilled.sqf";

		R3F_REV_FNCT_reapparaitre_camp = compile preprocessFile "R3F_revive\reapparaitre_camp.sqf";

		R3F_REV_FNCT_detruire_marqueur_inconscient =
		{
			if (R3F_REV_CFG_afficher_marqueur && alive player) then
			{
				deleteMarker ("R3F_REV_mark_" + name player);
			};
		};

		RemoveBodyMarker =
		{
			if (alive player) then
			{
				deleteMarker ("RL_Speedy_Mark_" + name player);
			};
		};

		if (isNil "R3F_REV_CFG_list_of_classnames_who_can_revive") then {R3F_REV_CFG_list_of_classnames_who_can_revive = [];};
		if (isNil "R3F_REV_CFG_list_of_slots_who_can_revive") then {R3F_REV_CFG_list_of_slots_who_can_revive = [];};
		if (isNil "R3F_REV_CFG_all_medics_can_revive") then {R3F_REV_CFG_all_medics_can_revive = false;};
		if (isNil "R3F_REV_CFG_player_can_drag_body") then {R3F_REV_CFG_player_can_drag_body = false;};

		R3F_REV_FNCT_peut_reanimer =
		{
			if (R3F_REV_CFG_all_medics_can_revive && getNumber (configFile >> "CfgVehicles" >> (typeOf player) >> "attendant") == 1) then {true}
			else
			{
				if (player in R3F_REV_CFG_list_of_slots_who_can_revive) then {true}
				else
				{
					if (typeOf player in R3F_REV_CFG_list_of_classnames_who_can_revive) then {true}
					else {false};
				};
			};
		};

		R3F_REV_FNCT_nouvel_inconscient =
		{
			private ["_unite", "_id_action"];
			_unite = _this select 1;

			if !(isServer && isDedicated) then
			{
				if !(isNull _unite) then
				{
					player reveal _unite;

					_id_action = _unite addAction [STR_R3F_REV_action_reanimer, "R3F_revive\reanimer.sqf", [], 10, false, true, "",
					"player distance _target < 2 && !(player getVariable ""R3F_REV_est_inconscient"") && call R3F_REV_FNCT_peut_reanimer && alive _target && isPlayer _target && (_target getVariable ""R3F_REV_est_inconscient"") && isNil {_target getVariable ""R3F_REV_est_pris_en_charge_par""}"];
					_unite setVariable ["R3F_REV_id_action_reanimer", _id_action, false];

					_id_action = _unite addAction [STR_R3F_REV_action_deplacer_corps, "R3F_revive\DragPlayer.sqf", [], 10, false, true, "",
					"player distance _target < 2 && !(player getVariable ""R3F_REV_est_inconscient"") && R3F_REV_CFG_player_can_drag_body && alive _target && isPlayer _target && (_target getVariable ""R3F_REV_est_inconscient"") && isNil {_target getVariable ""R3F_REV_est_pris_en_charge_par""}"];
					_unite setVariable ["R3F_REV_id_action_trainer_corps", _id_action, false];
				};
			};
		};
		"R3F_REV_nouvel_inconscient" addPublicVariableEventHandler R3F_REV_FNCT_nouvel_inconscient;

		R3F_REV_FNCT_fin_inconscience =
		{
			private ["_unite"];
			_unite = _this select 1;

			if !(isServer && isDedicated) then
			{
				if !(isNull _unite) then
				{
					if !(isNil {_unite getVariable "R3F_REV_id_action_reanimer"}) then
					{
						_unite removeAction (_unite getVariable "R3F_REV_id_action_reanimer");
						_unite setVariable ["R3F_REV_id_action_reanimer", nil, false];
					};

					if !(isNil {_unite getVariable "R3F_REV_id_action_trainer_corps"}) then
					{
						_unite removeAction (_unite getVariable "R3F_REV_id_action_trainer_corps");
						_unite setVariable ["R3F_REV_id_action_trainer_corps", nil, false];
					};
				};
			};
		};
		"R3F_REV_fin_inconscience" addPublicVariableEventHandler R3F_REV_FNCT_fin_inconscience;

		waitUntil {!(isNull player)};

		R3F_REV_corps_avant_mort = player;

		R3F_REV_position_reapparition = getPosATL R3F_REV_corps_avant_mort;

		call R3F_REV_FNCT_detruire_marqueur_inconscient;

		player addEventHandler ["killed", R3F_REV_FNCT_onKilled];

		sleep (0.5 + random 0.5);

		player setVariable ["R3F_REV_est_pris_en_charge_par", nil, true];

		if !(isNil {player getVariable "R3F_REV_est_inconscient"}) then
		{
			if (player getVariable "R3F_REV_est_inconscient") then
			{
				[player, player] call R3F_REV_FNCT_onKilled;
			};
		}
		else
		{
			player setVariable ["R3F_REV_est_inconscient", false, true];
		};

		{
			["R3F_REV_fin_inconscience", _x] call R3F_REV_FNCT_fin_inconscience;

			if (_x != player) then
			{
				if !(isNil {_x getVariable "R3F_REV_est_inconscient"}) then
				{
					if (_x getVariable "R3F_REV_est_inconscient") then
					{["R3F_REV_nouvel_inconscient", _x] call R3F_REV_FNCT_nouvel_inconscient;};
				};
			};
		} forEach (playableUnits + switchableUnits + allUnits);
	};
};
