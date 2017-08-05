if (_this select 0 != player) exitWith {};

RadioArr = call OL_tfar_getPlayerRadios;
execVM "R3F_revive\respawn.sqf";

terminate R3F_REV_fil_exec_attente_reanimation;
terminate R3F_REV_fil_exec_reapparaitre_camp;
terminate R3F_REV_fil_exec_effet_inconscient;

R3F_REV_fil_exec_attente_reanimation = [] spawn
{
	private ["_position_avant_mort", "_hauteur_ATL_avant_mort", "_direction_avant_mort", "_chargeurs_avant_mort", "_armes_avant_mort", "_sacados_avant_mort", "_unit"];

	call OL_misc_CheckWater;

	_position_avant_mort = getPos R3F_REV_corps_avant_mort;
	_hauteur_ATL_avant_mort = getPosATL R3F_REV_corps_avant_mort select 2;
	_direction_avant_mort = getDir R3F_REV_corps_avant_mort;
	_chargeurs_avant_mort = magazines R3F_REV_corps_avant_mort;
	_armes_avant_mort = weapons R3F_REV_corps_avant_mort;

	closeDialog 0;

	call R3F_REV_FNCT_detruire_marqueur_inconscient;

	R3F_REV_fin_inconscience = R3F_REV_corps_avant_mort;
	publicVariable "R3F_REV_fin_inconscience";
	["R3F_REV_fin_inconscience", R3F_REV_fin_inconscience] spawn R3F_REV_FNCT_fin_inconscience;
	R3F_REV_corps_avant_mort setVariable ["R3F_REV_est_inconscient", false, true];
	R3F_REV_corps_avant_mort setVariable ["R3F_REV_est_pris_en_charge_par", nil, true];

	sleep 2;

	if (!isNil "R3F_REV_effet_video_flou") then {	ppEffectDestroy R3F_REV_effet_video_flou };
	R3F_REV_effet_video_flou = ppEffectCreate ["DynamicBlur", 472];
	R3F_REV_effet_video_flou ppEffectEnable true;
	R3F_REV_effet_video_flou ppEffectAdjust [0.3+random 0.3];
	R3F_REV_effet_video_flou ppEffectCommit 2;

	if (!isNil "R3F_REV_effet_video_couleur") then {
		ppEffectDestroy R3F_REV_effet_video_couleur;
	};
	R3F_REV_effet_video_couleur = ppEffectCreate ["ColorCorrections", 1587];
	R3F_REV_effet_video_couleur ppEffectEnable true;
	R3F_REV_effet_video_couleur ppEffectAdjust [0.25, 1, 0, [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]];
	R3F_REV_effet_video_couleur ppEffectCommit 2;

	waitUntil {alive player};
	sleep 0.2;

	_unit = player;

	R3F_REV_position_reapparition = getPosATL _unit;

	if (R3F_REV_nb_reanimations > 0) then
	{
		_unit setPosATL [_position_avant_mort select 0, _position_avant_mort select 1, 2000];

		_unit setCaptive true;

		removeAllWeapons _unit;
		removeAllItems _unit;

		_unit switchMove "AdthPpneMstpSlowWrflDnon_binocular";

		{_unit addMagazine _x;} forEach _chargeurs_avant_mort;
		{_unit addWeapon _x;} forEach _armes_avant_mort;

		_unit setVariable
		[
			"R3F_REV_id_EH_HandleDamage",
			_unit addEventHandler ["HandleDamage",
			{
				private ["_victime", "_blessure", "_agresseur", "_munition"];
				_victime = _this select 0;
				_blessure = _this select 2;
				_agresseur = _this select 3;
				_munition = _this select 4;

				if (isNull _agresseur || _agresseur == _victime || _munition == "") then {0}
				else {_blessure};
			}],
			false
		];

		closeDialog 0;
		titleText [STR_R3F_REV_attente_reanimation, "PLAIN"];
		removeAllWeapons player;

		if (playerSide == west) then {
	      removeAllWeapons _unit;
	      removeAllItems _unit;
	      {_unit addMagazine _x;} forEach _chargeurs_avant_mort;
    		{_unit addWeapon _x;} forEach _armes_avant_mort;
	      _unit selectWeapon (primaryWeapon _unit);
	  };

		execVM "R3F_revive\time.sqf";
		sleep 5;

		_unit setVelocity [0, 0, 0];
		_unit setDir _direction_avant_mort;
		_unit setPos [_position_avant_mort select 0, _position_avant_mort select 1, _hauteur_ATL_avant_mort - (_position_avant_mort select 2)];

		if (R3F_REV_corps_avant_mort != _unit) then
		{deleteVehicle R3F_REV_corps_avant_mort;};

		R3F_REV_corps_avant_mort = _unit;

		R3F_REV_nouvel_inconscient = _unit;
		publicVariable "R3F_REV_nouvel_inconscient";
		_unit setVariable ["R3F_REV_est_inconscient", true, true];
		_unit setVariable ["R3F_REV_est_pris_en_charge_par", nil, true];

		R3F_REV_fil_exec_effet_inconscient = [] spawn
		{
			while {true} do
			{
				R3F_REV_effet_video_flou ppEffectAdjust [0.3+random 0.3];
				R3F_REV_effet_video_flou ppEffectCommit 0;

				R3F_REV_effet_video_couleur ppEffectAdjust [0.1+random 0.1, 0.4+random 0.2, 0, [1, 0, 0, 0], [1, 0, 0, 0], [1, 0, 0, 0]];
				R3F_REV_effet_video_couleur ppEffectCommit (2.2+random 0.4);
				sleep 4.2+random 0.7;

				R3F_REV_effet_video_couleur ppEffectAdjust [0.25, 1, 0, [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]];
				R3F_REV_effet_video_couleur ppEffectCommit (1.7+random 0.2);
				sleep (6+random 8);
			};
		};

		while {_unit getVariable "R3F_REV_est_inconscient"} do
		{
			if !(isNil {_unit getVariable "R3F_REV_est_pris_en_charge_par"}) then
			{
				private ["_est_traite_par"];
				_est_traite_par = _unit getVariable "R3F_REV_est_pris_en_charge_par";

				if (isNull _est_traite_par || !alive _est_traite_par || !isPlayer _est_traite_par) then
				{
					detach _unit;
					if !(isNull _est_traite_par) then {detach _est_traite_par;};
					_unit switchMove "AinjPpneMstpSnonWrflDnon";
					_unit setVariable ["R3F_REV_est_pris_en_charge_par", nil, true];
				};
			};

			sleep 0.3;
		};

		call R3F_REV_FNCT_detruire_marqueur_inconscient;

		terminate R3F_REV_fil_exec_effet_inconscient;
		closeDialog 0;
		ppEffectDestroy R3F_REV_effet_video_flou;
		ppEffectDestroy R3F_REV_effet_video_couleur;

		sleep 0.2;
		_unit selectWeapon (primaryWeapon _unit);

		R3F_REV_nb_reanimations = R3F_REV_nb_reanimations - 1;

		_unit removeEventHandler ["HandleDamage", _unit getVariable "R3F_REV_id_EH_HandleDamage"];
		_unit setVariable ["R3F_REV_id_EH_HandleDamage", nil, false];

		_unit setCaptive false;

		if (R3F_REV_nb_reanimations > 0) then
		{
			if (R3F_REV_nb_reanimations > 1) then {titleText [format [STR_R3F_REV_nb_reanimations_plusieurs, R3F_REV_nb_reanimations], "PLAIN"];}
			else {titleText [format [STR_R3F_REV_nb_reanimations_une, R3F_REV_nb_reanimations], "PLAIN"];};
		}
		else {titleText [STR_R3F_REV_nb_reanimations_zero, "PLAIN"];};
	}
	else
	{
		titleText [STR_R3F_REV_plus_de_reanimation, "PLAIN"];

		if (!R3F_REV_CFG_autoriser_reapparaitre_camp) then
		{
			if (R3F_REV_corps_avant_mort != _unit) then
			{deleteVehicle R3F_REV_corps_avant_mort;};

			if (R3F_REV_CFG_autoriser_camera) then
			{
				_unit execVM "";
			};

			_unit switchMove "AdthPpneMstpSrasWrflDnon_2";
			_unit setDamage 0.6;
			_unit setCaptive true;

			sleep 5;
			titleText [STR_R3F_REV_hors_jeu, "PLAIN"];
			sleep 2;
			ppEffectDestroy R3F_REV_effet_video_flou;
			ppEffectDestroy R3F_REV_effet_video_couleur;
		}
		else
		{
			R3F_REV_nb_reanimations = R3F_REV_CFG_nb_reanimations;

			_unit setVelocity [0, 0, 0];
			_unit setPosATL R3F_REV_position_reapparition;
			sleep 5;
			titleText [STR_R3F_REV_respawn_camp, "PLAIN"];

			ppEffectDestroy R3F_REV_effet_video_flou;
			ppEffectDestroy R3F_REV_effet_video_couleur;
		};

		R3F_REV_corps_avant_mort = _unit;
	};
};
