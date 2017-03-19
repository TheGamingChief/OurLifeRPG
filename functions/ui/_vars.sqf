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
	["Pueblo (Tier X Spawn)",				        [4328.94, 2359.72,0], 0, civilian, "TierX_id"],
	["Hidden (Undercover Spawn)",			      [4235.82, 5162.21,0], 1, west, 		 "Undercover_id"]
];

OL_ATM_Clothes = [
	[atmjail,						[["olrpg_corcmduni","Corrections_ID"],["olrpg_corsupuni","Corrections_ID"],["olrpg_corcuni","Corrections_ID"]]],
	[copswatbank,				[["olrpg_swatcom","SWAT_ID"],["olrpg_swatspec","SWAT_ID"],["olrpg_swatmark","SWAT_ID"],["olrpg_swatnor","SWAT_ID"],["olrpg_swatprob","SWAT_ID"]]],
	[copcmdbank,				[["olrpg_chiefsuni","Chief_ID"],["olrpg_astchiefsuni","Chief_ID"],["olrpg_pdcptvest","Cpt_ID"],["olrpg_pdltvest","Lt_ID"]]],
	[copsgtbank,				[["olrpg_sgtuni","Sgt_ID"],["olrpg_cpluni","Cpl_ID"]]],
	[copbank,						[["olrpg_snruni","PO3_id"],["olrpg_patuni","[getPlayerUID player]"]]],
	[IRAatm,						[["olrpg_snrftouni","FTO_ID"],["olrpg_ftouni","FTO_ID"]]],
	[cidbank,						[["olrpg_pdcid","Undercover_ID"],["olrpg_iauni","Undercover_ID"],["olrpg_pdcidc","Undercover_ID"]]],
	[copdispatchbank, 	[["olrpg_k9com","K9_ID"],["olrpg_k9nor","K9_ID"]]],
	[copairbank, 				[["olrpg_pdpilotcom","PDAviation_ID"],["olrpg_oppilot","PDAviation_ID"],["olrpg_pdpilot","PDAviation_ID"]]],
	[copsheriffbank,		[["olrpg_cptdepuni","Sheriff_id"],["olrpg_ltdepuni","Sheriff_id"],["olrpg_sgtdepuni2","SgtDeputy_id"],["olrpg_corpdepuni","Deputy_id"],["olrpg_snrpdepuni","Deputy_id"],["olrpg_depuni","Deputy_id"],["olrpg_depk9uni","K9_id"],["olrpg_dnrdepuni","Deputy_id"]]],
	[copair2,						[["olrpg_sdpilot","PDAviation_id"]]],
	[copcoastguardbank,	[["olrpg_sdpilot","Deputy_id"]]],

	[atm5,							[["KPFS_THW_Press","EMT1_id"],["yup_uscg_Pilot","EMT1_id"],["a2l_firefighter1","EMT3_id"],["a2l_firefighter","EMT3_id"],["hazmatRed","EMT3_id"],["hazmatYellow","EMT3_id"],["olrpg_firemarshal","EMT1_id"]]],
	[atmsubfire,				[["KPFS_THW_Press","EMT1_id"],["yup_uscg_Pilot","EMT1_id"],["a2l_firefighter1","EMT3_id"],["a2l_firefighter","EMT3_id"],["hazmatRed","EMT3_id"],["hazmatYellow","EMT3_id"],["olrpg_firemarshal","EMT1_id"]]],

	[towatm,						[["Flyers_Supervisor_Vest","Tow_id"],["Flyers_Supervisor","Tow_id"],["Flyers_Mechanic_Vest","Tow_id"],["Flyers_Mechanic","Tow_id"]]],
	[atmuc,							[["Functionary1","Undercover_id"],["ibr_lingorman2","Undercover_id"],["sah_civilian5_shorts","Undercover_id"],["Rocker1","Undercover_id"],["TK_CIV_Takistani04_EP1","Undercover_id"]]],

	[pmcbank,						[["FR_Commander","CommandPMC_id","General"],["FR_TL","CommandPMC_id","Commander"],["FR_AR","CommandPMC_id","Lieutenant"],["FR_Sapper","PMC_id","Corporal"],["FR_Assault_R","PMC_id","Private"],["FR_Marksman","PMC_id","Marksman"],["USMC_Soldier_Light","PMC_id","Pilot"]]]
];

{
	missionNamespace setVariable [format["OL_%1_ClothesArray", _x select 0], _x]
} forEach OL_ATM_Clothes;
