if !(isNil {player getVariable "R3F_REV_est_pris_en_charge_par"}) then
{
	titleText [STR_R3F_REV_joueur_pris_en_charge, "PLAIN"];
}
else
{

	terminate R3F_REV_fil_exec_attente_reanimation;
	terminate R3F_REV_fil_exec_reapparaitre_camp;
	terminate R3F_REV_fil_exec_effet_inconscient;

	R3F_REV_fil_exec_reapparaitre_camp = [] spawn
	{
		private ["_joueur"];
		_joueur = player;

		closeDialog 0;

		call R3F_REV_FNCT_detruire_marqueur_inconscient;

		R3F_REV_fin_inconscience = _joueur;
		publicVariable "R3F_REV_fin_inconscience";
		["R3F_REV_fin_inconscience", R3F_REV_fin_inconscience] spawn R3F_REV_FNCT_fin_inconscience;
		_joueur setVariable ["R3F_REV_est_inconscient", false, true];
		_joueur setVariable ["R3F_REV_est_pris_en_charge_par", nil, true];

		R3F_REV_effet_video_couleur ppEffectAdjust [0.25, 1, 0, [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]];
		R3F_REV_effet_video_couleur ppEffectCommit 0;
		titleText [STR_R3F_REV_reapparition_camp_en_cours, "PLAIN"];

		R3F_REV_corps_avant_mort = _joueur;

		_joueur setPosATL [getPosATL _joueur select 0, getPosATL _joueur select 1, (getPosATL _joueur select 2)+2000];

		_joueur selectWeapon (primaryWeapon _joueur);
		_joueur playMoveNow "AmovPercMstpSlowWrflDnon";

		sleep 5;

		_joueur setVelocity [0, 0, 0];
		_joueur setPosATL R3F_REV_position_reapparition;

		if !(isNil {_joueur getVariable "R3F_REV_id_EH_HandleDamage"}) then
		{
			_joueur removeEventHandler ["HandleDamage", _joueur getVariable "R3F_REV_id_EH_HandleDamage"];
			_joueur setVariable ["R3F_REV_id_EH_HandleDamage", nil, false];
		};

		_joueur setCaptive false;
		
		R3F_REV_nb_reanimations = R3F_REV_CFG_nb_reanimations;

		titleText ["", "PLAIN"];
		ppEffectDestroy R3F_REV_effet_video_flou;
		ppEffectDestroy R3F_REV_effet_video_couleur;
	};
};
