_this    = _this select 3;
_number  = _this select 0;
_art     = _this select 1;

if ((_art == "remove") or (_art == "add")) then {
	if (_art == "add") then {
		_uid = getPlayerUID player;
		_license = ((INV_Lizenzen select _number) select 0);
		_name    = ((INV_Lizenzen select _number) select 2);
		_cost    = ((INV_Lizenzen select _number) select 3);
		if (_license call INV_HasLicense) exitWith {player groupChat localize "STRS_inv_buylicense_alreadytrue";};
		if (_license == "car" or _license == "truck") then {demerits = 10};
		if (_license == "PMC_license" and !(_uid in PMC_id)) exitWith { player groupChat "You Are Not A PMC Member"};
    if (_license == "CommandPMC_license" and !(_uid in CommandPMC_id)) exitWith { player groupChat "You Are Not PMC Command"};
		if (_license == "PatrolBasic_license" and !(iscop)) exitWith { player groupChat "Restricted to Police"};
		if (_license == "Deputy_license" and !(_uid in JrDeputy_id)) exitWith { player groupChat "Restricted to Sheriff's Deputies"};
		if (_license == "SgtDeputy_license" and !(_uid in SgtDeputy_id)) exitWith { player groupChat "Restricted to Sheriff's Sergeant Deputies"};
		if (_license == "Sheriff_license" and !(_uid in Sheriff_id)) exitWith { player groupChat "Restricted to the Sheriff"};
		if (_license == "Medal_Winner" and !(_uid in MedalRecipt_id)) exitWith { player groupChat "Restricted to Medal Recipients"};
		if (_license == "Chief_license" and !(_uid in Chief_id)) exitWith { player groupChat "Restricted to the Chief of Police"};
		if (_license == "Captain_license" and !(_uid in Cpt_id)) exitWith { player groupChat "Restricted to Captains"};
		if (_license == "Lieutenant_license" and !(_uid in Lt_id)) exitWith { player groupChat "Restricted to the Lieutenants"};
		if (_license == "Sergeant_license" and !(_uid in Sgt_id)) exitWith { player groupChat "Restricted to the Sergeants"};
		if (_license == "Corporal_license" and !(_uid in Cpl_id)) exitWith { player groupChat "Restricted to the Corporals"};
		if (_license == "fto_license" and !(_uid in FTO_id)) exitWith { player groupChat "Restricted to the Field Training Officers"};
		if (_license == "K9_license" and !(_uid in K9_id)) exitWith { player groupChat "Restricted to K-9 Officers"};
		if (_license == "PDAviation_license" and !(_uid in PDAviation_id)) exitWith { player groupChat "Restricted to Police Pilots"};
		if (_license == "SWAT_license" and !(_uid in SWAT_id)) exitWith { player groupChat "Restricted to S.W.A.T. Officers"};
		if (_license == "CoastGuard_license" and !(_uid in CoastGuard_id)) exitWith { player groupChat "Restricted to Coast Guard Authorized Personnel"};
		if (_license == "mayorlic" and !(ismayor)) exitWith { player groupChat "Restricted to Mayor"};
		if (_license == "devlic" and !(_uid in SwagDev)) exitWith { player groupChat "Restricted to Developers"};
		if (_license == "CID_license" and !(_uid in Undercover_id)) exitWith { player groupChat "Restricted to CID!"};
		if (_license == "Undercover_license" and !(_uid in Undercover_id)) exitWith { player groupChat "Restricted to Undercover Cops!"};
		if (_license == "RLRPG_Clothing_license" and !(isciv)) exitWith { player groupChat "You need to be civilian!"};
		if (_license == "esul2" and !(_uid in EMT1_id)) exitWith { player groupChat "You are not EMT 1"};
		if (_license == "esul3" and !(_uid in EMT2_id)) exitWith { player groupChat "You are not EMT 2"};
		if (_license == "esul7" and !(_uid in EMT3_id)) exitWith { player groupChat "You are not EMT 3"};
		if (_license == "esul4" and !(_uid in FD_id)) exitWith { player groupChat "You are not FD"};
		if (_license == "esul5" and !(_uid in AirESU_id)) exitWith { player groupChat "You are not EMT Air"};
		if (_license == "esul6" and !(_uid in EMTSupervisor_id)) exitWith { player groupChat "You are not ESU Command"};
		[_cost, _name, "License", 1, _cost, _number] execVM "PurchaseItems.sqf";
	} else {
		_license = ((INV_Lizenzen select _number) select 0);
		_name    = ((INV_Lizenzen select _number) select 2);
		if (!(_license call INV_HasLicense)) exitWith { player groupChat localize "STRS_inv_buylicense_alreadyfalse" };
		INV_LizenzOwner = INV_LizenzOwner - [_license];
		player groupChat format[localize "STRS_inv_buylicense_losttraining", _name];
	};
};
