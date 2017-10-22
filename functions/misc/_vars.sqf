doingSomething    = false;
OL_isLockpicking	= false;
OL_isAFK  				= false;
kfcavailable 			= true;
kfc2available 		= true;
OL_CopMarkerArray = [];
OL_EMSMarkerArray = [];

OL_SpeedUpgrades = [
	["supgrade1",			1],
	["tow_supgrade1",	1],
	["supgrade2",			2],
	["tow_supgrade2",	2],
	["supgrade3",   	3],
	["supgrade3_pd",	3],
	["tow_supgrade3", 3],
	["supgrade4",     4],
	["supgrade4_pd",  4],
	["tow_supgrade4", 4],
	["supgrade5",     5],
	["supgrade5_pd",  5],
	["tow_supgrade5", 5],
	["speedx",        6]
];

OL_DogPositions = [
	["olrpg_pdk9cv_fpb", 					[0.07, -0.7, 0.4]], // Police K-9 CV
	["olrpg_pdk9cv_slick_fpb", 		[0.07, -0.7, 0.4]], // Police K-9 CV (Slicktop)
	["olrpg_sd_k9cv_fpb", 				[0.07, -0.7, 0.4]], // Sheriff K-9 CV
	["olrpg_sd_k9cv_slick_fpb", 	[0.07, -0.7, 0.4]], // Sheriff K-9 CV (Slicktop)

	["olrpg_pdk9suburban", 				[0.1, -2.6, -0.55]], // Police K-9 Suburban
	["olrpg_pdk9suburban_slick", 	[0.1, -2.6, -0.55]], // Police K-9 Suburban (Slicktop)
	["olrpg_sdk9suburban", 				[0.1, -2.6, -0.55]], // Sheriff K-9 Suburban
	["olrpg_sdk9suburban_slick", 	[0.1, -2.6, -0.55]], // Sheriff K-9 Suburban (Slicktop)

	["olrpg_pdk9charger", 				[0.1, -1.0, -0.2]],  // Police K-9 Charger
	["olrpg_sd_k9charger", 				[0.1, -1.0, -0.2]],  // Sheriff K-9 Charger

	["olrpg_pdk9taurusfpb", 			[0.1, -0.6, 0.35]],  // Police K-9 Taurus
	["olrpg_sd_k9taurusfpb", 			[0.1, -0.6, 0.35]]   // Sheriff K-9 Taurus
];
