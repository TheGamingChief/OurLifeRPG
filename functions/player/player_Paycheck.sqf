if (player getVariable "KOED" || !(alive player)) exitWith { player groupChat "Sorry but we do not pay people to be dead." };

if (playerSide == west) exitWith {
  _income = OL_DefaultPaycheck_COP;

  switch (true) do {
  	case (typeOf player == "olrpg_ftouni" || typeOf player == "olrpg_snrftouni"): {
  		_income = _income + 5000;
  	};
  	case (typeOf player == "olrpg_k9nor" || typeOf player == "olrpg_depk9uni" || typeOf player == "olrpg_k9marksman" || typeOf player == "olrpg_k9com"): {
  		_income = _income + 5000;
  	};
  	case (typeOf player == "olrpg_sdpilot" || typeOf player == "olrpg_pdpilot" || typeOf player == "olrpg_oppilot" || typeOf player == "olrpg_pdpilotcom"): {
  		_income = _income + 7500;
  	};
  	case (typeOf player == "olrpg_swatprob" || typeOf player == "olrpg_swatnor" || typeOf player == "olrpg_swatmark" || typeOf player == "olrpg_swatspec" || typeOf player == "olrpg_swatcom"): {
  		_income = _income + 7500;
  	};
  	case (typeOf player == "olrpg_pdcid" || typeOf player == "olrpg_iauni"): {
  		_income = _income + 5000;
  	};
  	case (typeOf player == "olrpg_patuni"): {
  		_income = _income + 1000;
  	};
  	case (typeOf player == "olrpg_snruni"): {
  		_income = _income + 3000;
  	};
  	case (typeOf player == "olrpg_cpluni"): {
  		_income = _income + 5000;
  	};
  	case (typeOf player == "olrpg_sgtuni"): {
  		_income = _income + 7000;
  	};
  	case (typeOf player == "olrpg_depuni" || typeOf player == "olrpg_dnrdepuni"): {
  		_income = _income + 1000;
  	};
  	case (typeOf player == "olrpg_snrpdepuni"): {
  		_income = _income + 3000;
  	};
  	case (typeOf player == "olrpg_corpdepuni"): {
  		_income = _income + 5000;
  	};
  	case (typeOf player == "olrpg_sgtdepuni2"): {
  		_income = _income + 7000;
  	};
  	case (typeOf player == "olrpg_ltdepuni"): {
  		_income = _income + 9000;
  	};
  	case (typeOf player == "olrpg_cptdepuni"): {
  		_income = _income + 11000;
  	};
  	case (typeOf player == "olrpg_pdltvest"): {
  		_income = _income + 9000;
  	};
  	case (typeOf player == "olrpg_pdcptvest"): {
  		_income = _income + 11000;
  	};
  	case (typeOf player == "olrpg_astchiefsuni"): {
  		_income = _income + 12000;
  	};
  	case (typeOf player == "olrpg_chiefsuni"): {
  		_income = _income + 13000;
  	};
  };

  if (getPlayerUID player in Donate_id)     then { _income = _income + 1500  };
  if (getPlayerUID player in OL_TierX_ID)   then { _income = _income + 3000  };
  if (getPlayerUID player in TopDonator_id) then { _income = _income + 5000  };
  if (getPlayerUID player in adminlevel1) 	then { _income = _income + 2500  };
  if (getPlayerUID player in adminlevel2)   then { _income = _income + 5000  };
  if (getPlayerUID player in adminlevel3) 	then { _income = _income + 7500  };
  if (getPlayerUID player in adminlevel4) 	then { _income = _income + 10000 };

  Kontostand = Kontostand + (round _income);
  player groupChat format [localize "STRS_geld_copmoneyadd", rolestring, ((round _income) call OL_ISSE_str_IntToStr)];
};

if (playerSide == resistance) exitWith {
  _income = OL_DefaultPaycheck_EMS;

  switch (true) do {
    case (getPlayerUID player in ESUCommand_id): {
      _income = _income + 9000;
    };
    case (getPlayerUID player in FD_id): {
      _income = _income + 8000;
    };
    case (getPlayerUID player in EMT3_id): {
      _income = _income + 7000;
    };
    case (getPlayerUID player in EMT2_id): {
      _income = _income + 6000;
    };
    case (getPlayerUID player in EMT1_id): {
      _income = _income + 5000;
    };
  };

  if (getPlayerUID player in Donate_id)     then { _income = _income + 1500  };
  if (getPlayerUID player in OL_TierX_ID)   then { _income = _income + 3000  };
  if (getPlayerUID player in TopDonator_id) then { _income = _income + 5000  };
  if (getPlayerUID player in adminlevel1) 	then { _income = _income + 2500  };
  if (getPlayerUID player in adminlevel2)   then { _income = _income + 5000  };
  if (getPlayerUID player in adminlevel3) 	then { _income = _income + 7500  };
  if (getPlayerUID player in adminlevel4) 	then { _income = _income + 10000 };

  Kontostand = Kontostand + (round _income);
  player groupChat format [localize "STRS_geld_copmoneyadd", rolestring, ((round _income) call OL_ISSE_str_IntToStr)];
};

if (playerSide == civilian) exitWith {
  _income            = OL_DefaultPaycheck_CIV;
  _activeGangMembers = 0;

  if (getPlayerUID player in Donate_id)     then { _income = _income + 500   };
  if (getPlayerUID player in Donate_id2)    then { _income = _income + 1000  };
  if (getPlayerUID player in Donate_id3)    then { _income = _income + 1500  };
  if (getPlayerUID player in Donate_id4)    then { _income = _income + 2000  };
  if (getPlayerUID player in Donate_id5)    then { _income = _income + 2500  };
  if (getPlayerUID player in Donate_id6)    then { _income = _income + 3000  };
  if (getPlayerUID player in TopDonator_id) then { _income = _income + 5000  };
  if (getPlayerUID player in OL_TierX_ID)   then { _income = _income + 3000  };
  if (getPlayerUID player in adminlevel1)   then { _income = _income + 2500  };
	if (getPlayerUID player in adminlevel2)   then { _income = _income + 5000  };
	if (getPlayerUID player in adminlevel3)   then { _income = _income + 7500  };
	if (getPlayerUID player in adminlevel4)   then { _income = _income + 10000 };

  if (call INV_mygang != "") then {
    for "_i" from 0 to (count gangsarray - 1) do {
      _curGangArray = gangsarray select _i;

      if (name player in (_curGangArray select 1)) exitWith {
        {
          if (_x call OL_ISSE_UnitExists) then {
            _activeGangMembers = _activeGangMembers + 1;
          };
        } forEach (_curGangArray select 1);
      };
    };

    if (gangarea1 getVariable "control" == (call INV_mygang)) then { _income = _income + (gangincome / _activeGangMembers) };
    if (gangarea2 getVariable "control" == (call INV_mygang)) then { _income = _income + (gangincome / _activeGangMembers) };
    if (gangarea3 getVariable "control" == (call INV_mygang)) then { _income = _income + (gangincome / _activeGangMembers) };
    if (gangarea4 getVariable "control" == (call INV_mygang)) then { _income = _income + (gangincome / _activeGangMembers) };
  };


  Kontostand = Kontostand + (round _income);
  player groupChat format [localize "STRS_geld_civmoneyadd", rolestring, (_income call OL_ISSE_str_IntToStr)];

  if (isMayor) then {
    MayorSteuern = MayorSteuern + INV_SteuernGezahlt;
    MayorSteuern = round((MayorSteuern / 100) * MayorBekommtSteuern);
    Kontostand = Kontostand + MayorSteuern;
    Kontostand = Kontostand + MayorExtraPay;

    player groupchat format["As a Mayor you get an extra paycheck of $%1. You also got $%2 taxes.", (MayorExtraPay call OL_ISSE_str_IntToStr), (MayorSteuern call OL_ISSE_str_IntToStr)];
    } else {
      if (INV_SteuernGezahlt > 0) then {
        format["if (isMayor) then {MayorSteuern = MayorSteuern + %1;};", INV_SteuernGezahlt] call OL_network_Swag;
    };
  };

  MayorSteuern       = 0;
	INV_SteuernGezahlt = 0;
};
