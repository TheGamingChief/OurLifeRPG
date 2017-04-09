OL_AllAnimationsArray = [
	["", "Return to normal", "anim", "Return To Normal", 2, ""],
	["amovpercmstpssurwnondnon", "Hands up", "anim", "Hands up", 2, ""],
	["AidlPercSnonWnonDnon_talk1", "reden", "playMoveNow", "talk", 2, ""],
	["UnaErc_UnaErcPoslechVelitele", "reden", "playMoveNow", "hands2", 2, ""],
	["ActsPercMstpSnonWpstDnon_sceneBardakPistol01", "pistolplay", "anim", "pistolplay", 2, ""],
	["AmovPercMstpSlowWrflDnon_Salute", "Salute", "anim", "Salute", 2, ""],
	["AsigPercMstpSlowWrflDnon_AmovPercMrunSlowWrflDnon_GoGo", "Follow me!", "anim", "Follow me!", 2, ""],
	["AsigPercMstpSlowWrflDnon_GoGo", "I'll follow you!", "anim", "I'll follow you!", 2, ""],
	["shaftoe_c0briefing_otazky_loop6", "Cross arms", "anim", "Cross arms", 2, ""],
	["c7a_bravoTleskani_idle1", "Clapping", "anim", "Clapping", 2, ""],
	["AmovPercMstpSnonWnonDnon_idle56kliky", "Workout", "anim", "Workout", 2, ""],
	["AmovPercMstpSnonWnonDnon_idle68boxing", "Boxing,", "anim", "Boxing", 2, ""],
	["AmovPercMstpSnonWnonDnon_idle71kliky", "Pushups", "anim", "Pushups", 2, ""],
	["AidlPpneMstpSnonWnonDnon_SleepC_killFly", "Shew fly", "anim", "Shew fly", 2, ""],
	["ActsPercMstpSnonWnonDnon_DancingDuoStefan", "reden", "playMoveNow", "Dance1", 2, ""],
	["ActsPercMstpSnonWnonDnon_Dancingstefan", "reden", "playMoveNow", "Dance2", 2,	""],
	["ActsPercMstpSnonWnonDnon_DancingDuoIvan", "reden", "playMoveNow", "Dance3", 2, ""],
	["AmovPercMstpSnonWnonDnon_exerciseKata", "reden", "playMoveNow", "Karate", 2, ""]
];

OL_SpawnPoints =  [
	["San Milovitz (East Civilian Spawn)",	[6136.3,  4344.29,0], 0, civilian, "[getPlayerUID player]"],
	["Nanchuk (West Civilian Spawn)",		    [3580.48, 3062.24,0], 0, civilian, "[getPlayerUID player]"],
	["Pueblo (Tier X Spawn)",				        [4328.94, 2359.72,0], 0, civilian, "OL_TierX_ID"],
	["Hidden (Undercover Spawn)",			      [4235.82, 5162.21,0], 1, west, 		 "Undercover_id"]
];

OL_ATM_Clothes = [
	[copswatbank,
		[
			["olrpg_swatcom",		"SWAT_ID", "S.W.A.T. Command Uniform"],
			["olrpg_swatspec",	"SWAT_ID", "S.W.A.T. Specialist Uniform"],
			["olrpg_swatmark",	"SWAT_ID", "S.W.A.T. Marksman Uniform"],
			["olrpg_swatnor",		"SWAT_ID", "S.W.A.T. Operator Uniform"],
			["olrpg_swatprob",	"SWAT_ID", "S.W.A.T. Probationary Uniform"]
		]
	],
	[copcmdbank,
		[
			["olrpg_chiefsuni",		 "Chief_ID", "Chief Of Police Uniform"],
			["olrpg_astchiefsuni", "Chief_ID", "Assistant Chief Uniform"],
			["olrpg_pdcptvest",		 "Cpt_ID",	 "Captain Uniform"],
			["olrpg_pdltvest",		 "Lt_ID",		 "Lieutenant Uniform"]
		]
	],
	[copsgtbank,
		[
			["olrpg_sgtuni", "Sgt_ID", "Sergeant Uniform"],
			["olrpg_cpluni", "Cpl_ID", "Corporal Uniform"]
		]
	],
	[copbank,
		[
			["olrpg_snruni", "PO3_id",								"Senior Patrol Officer Uniform"],
			["olrpg_patuni", "[getPlayerUID player]", "Patrol Officer Uniform"]
		]
	],
	[IRAatm,
		[
			["olrpg_snrftouni",	"FTO_ID", "Senior FTO Uniform"],
			["olrpg_ftouni",		"FTO_ID", "FTO Uniform"]
		]
	],
	[cidbank,
		[
			["olrpg_pdcid",	 "Undercover_ID", "CID Command Uniform"],
			["olrpg_iauni",	 "Undercover_ID", "Internal Affairs Uniform"],
			["olrpg_pdcidc", "Undercover_ID", "CID Uniform"]
		]
	],
	[copdispatchbank,
		[
			["olrpg_k9com", "K9_ID", "K9 Command Uniform"],
			["olrpg_k9nor", "K9_ID", "K9 Uniform"]
		]
	],
	[copairbank,
		[
			["olrpg_pdpilotcom", "PDAviation_ID", "Aviation Command Uniform"],
			["olrpg_oppilot",		 "PDAviation_ID", "OP Pilot Uniform"],
			["olrpg_pdpilot",		 "PDAviation_ID", "Aviation Pilot Uniform"]
		]
	],
	[copsheriffbank,
		[
			["olrpg_cptdepuni",	 "Sheriff_id", 	 "Captain Deputy Uniform"],
			["olrpg_ltdepuni",	 "Sheriff_id", 	 "Lieutenant Deputy Uniform"],
			["olrpg_sgtdepuni2", "SgtDeputy_id", "Sergeant Deputy Uniform"],
			["olrpg_corpdepuni", "Deputy_id",		 "Corporal Deputy Uniform"],
			["olrpg_snrpdepuni", "Deputy_id",		 "Senior Deputy Uniform"],
			["olrpg_depuni",		 "Deputy_id",		 "Deputy Uniform"],
			["olrpg_depk9uni",	 "K9_id",				 "Deputy K9 Uniform"],
			["olrpg_dnrdepuni",	 "Deputy_id",		 "DNR Uniform"]
		]
	],
	[copair2,
		[
			["olrpg_sdpilot", "PDAviation_id", "Deputy Pilot Uniform"]
		]
	],
	[copcoastguardbank,
		[
			["olrpg_sdpilot", "Deputy_id", "Deputy Pilot Uniform"]
		]
	],

	[atm5,
		[
			["KPFS_THW_Press",		"EMT1_id", "Paramedic Uniform"],
			["yup_uscg_Pilot",		"EMT1_id", "Aviation Pilot Uniform"],
			["a2l_firefighter1",	"EMT3_id", "Turn Out Uniform"],
			["a2l_firefighter",		"EMT3_id", "Turn Out SCBA Uniform"],
			["hazmatRed",					"EMT3_id", "Hazmat Red Unifrom"],
			["hazmatYellow", 			"EMT3_id", "Hazmat Yellow Unifrom"],
			["olrpg_firemarshal", "EMT1_id", "Fire Marshal Uniform"]
		]
	],
	[atmsubfire,
		[
			["KPFS_THW_Press",		"EMT1_id", "Paramedic Uniform"],
			["yup_uscg_Pilot",		"EMT1_id", "Aviation Pilot Uniform"],
			["a2l_firefighter1",	"EMT3_id", "Turn Out Uniform"],
			["a2l_firefighter",		"EMT3_id", "Turn Out SCBA Uniform"],
			["hazmatRed",					"EMT3_id", "Hazmat Red Unifrom"],
			["hazmatYellow", 			"EMT3_id", "Hazmat Yellow Unifrom"],
			["olrpg_firemarshal", "EMT1_id", "Fire Marshal Uniform"]
		]
	],

	[towatm,
		[
			["Flyers_Supervisor_Vest", "Tow_id", "Supervisor w/ Vest Uniform"],
			["Flyers_Supervisor",			 "Tow_id", "Supervisor Uniform"],
			["Flyers_Mechanic_Vest",	 "Tow_id", "Mechanic w/ Vest Uniform"],
			["Flyers_Mechanic",				 "Tow_id", "Mechanic Uniform"]
		]
	],
	[atmuc,
		[
			["Functionary1",					 "Undercover_id", "Black Suit (Uniform)"],
			["ibr_lingorman2",				 "Undercover_id", "Camo Pants (Uniform)"],
			["sah_civilian5_shorts",	 "Undercover_id", "Shorts (Uniform)"],
			["Rocker1",								 "Undercover_id", "Rocker (Uniform)"],
			["TK_CIV_Takistani04_EP1", "Undercover_id", "Turban (Uniform)"]
		]
	],
	[pmcbank,
		[
			["FR_Commander",			 "CommandPMC_id",	"General Uniform"],
			["FR_TL",							 "CommandPMC_id",	"Commander Uniform"],
			["FR_AR",							 "CommandPMC_id",	"Lieutenant Uniform"],
			["FR_Sapper",					 "PMC_id",				"Corporal Uniform"],
			["FR_Assault_R",			 "PMC_id",				"Private Uniform"],
			["FR_Marksman",				 "PMC_id",				"Marksman Uniform"],
			["USMC_Soldier_Light", "PMC_id",				"Pilot Uniform"]
		]
	],

	[assassinshop,
		[
			["TK_INS_Soldier_EP1", "[getPlayerUID player]", "Assassin Clothes"]
		]
	]
];

{
	missionNamespace setVariable [format ["OL_%1_ClothesArray", _x select 0], _x]
} forEach OL_ATM_Clothes;
