//AIDS
INV_itemstocks = [-1];
INV_itemmaxstocks = [-1];
//1. Shop items
_emptyshop = [];
//2. Fuel Shop
_fs = ["kanister","Fuelline","RepairKitsBreaksShops","tcgmp","doshd","gdar","bjerk","wulf"];
//4. Item Shop
_is = ["apple","straw","getreide","blowfish","mackerel","herring","perch","trout","walleye","bass","boar","lighter"];
// Market Export
_export = ["apple","straw","getreide","blowfish","mackerel","herring","perch","trout","walleye","bass","boar","cowmeat"];
//5. Copbasefood
_cf = ["wulf","bjerk","tcgmp","doshd"];
//6. Alcohol shop
_pub = ["beer","beer2","vodka","smirnoff","wiskey","wine","wine2"];
//8
_ass = ["RH_m9sd","15Rnd_9x19_M9SD","RH_g17sd","RH_17Rnd_9x19_g17SD","RH_m1911sd","RH_8Rnd_45cal_m1911","RH_mk22sd","RH_8Rnd_9x19_Mksd","RH_uzisd","RH_9mm_32RND_SD_Mag","RH_mp5sd6eot_ass","30rnd_9x19_MP5SD","RH_mk12mod1sd_ass","20Rnd_556x45_Stanag","C1987_P99_black_sd","15Rnd_9x19_p99_sd","VSS_vintorez_ASS","20Rnd_9x39_SP5_VSS"];
//9
_mgs = ["RH_mk22","RH_8Rnd_9x19_Mk","KPFS_MP2","KPFS_32Rnd_MP2","RH_muzi","RH_32rnd_9x19_Muzi","RH_uzi","RH_9mm_32RND_Mag","RH_tmpeot","30Rnd_9x19_MP5","RH_fmg9","RH_9mm_32RND_Mag","GPS","NVGoggles","CHRYSLER_B_limmo","tcg_taurus_security", "ilpd_ags_cvpi"];
//10. Equiptment shop
_es = ["Binocular","GPS","NVGoggles","hideout","fishingpole","bunnyhop","caralarm","drill","TreeFixer"];
//11. Car Upgrades
_cu = ["supgrade1","supgrade2","caralarm"];
//12. Car Shop
_cs1 = ["MMT_USMC","Volha_1_TK_CIV_EP1","S1203_TK_CIV_EP1","civic","Car_hatchback","VWGolf","Car_Sedan","SkodaBlue","Skodared","lada1","lada2","LandRover_TK_CIV_EP1","datsun1_civil_3_open","UAZ_Unarmed_TK_CIV_EP1","oldtruck","oltruc3","Tractor"];
//13
_cs2 = ["MMT_USMC","tractor","oldtruc2","oldtruc2a"];
//14. Sports Car Shop
_sc1 = ["440cuda","roadrunner","roadrunner2","CHEVROLET_CAMARO_SS_396","chevrolet_chevelle","cuda","hemicuda","cd71hm","barcuda","fury","FORD_MUSTANG_SHELBY_COBRA","FORD_MUSTANG_SHELBY_COBRA1","FORD_MUSTANG_SHELBY_COBRA2","FORD_MUSTANG_SHELBY_COBRA3","FORD_GT","monaco_grey","monaco_blue","monaco_white","monaco_green","monaco_red","challenger_grey","challenger_blue","challenger_yellow","challenger_pink","challenger_white","challenger_green","challenger_red","challenger_orange"];
//15
_sc2 =
[
	"DD_DOD12Charger_Black",			// 2012 Dodge Charger (Black)
	"DD_DOD12Charger_Blue",				// 2012 Dodge Charger (Blue)
	"DD_DOD12Charger_Camo",				// 2012 Dodge Charger (Camo)
	"DD_DOD12Charger_DarkGreen",	// 2012 Dodge Charger (Dark Green)
	"DD_DOD12Charger_DarkRed",		// 2012 Dodge Charger (Dark Red)
	"DD_DOD12Charger_Green",			// 2012 Dodge Charger (Green)
	"DD_DOD12Charger_Orange",			// 2012 Dodge Charger (Orange)
	"DD_DOD12Charger_Red",				// 2012 Dodge Charger (Red)
	"DD_DOD12Charger_UrbanCamo",	// 2012 Dodge Charger (Urban Camo)
	"DD_DOD12Charger_White",			// 2012 Dodge Charger (White)
	"DD_DOD12Charger_Yellow",			// 2012 Dodge Charger (Yellow)
	"DD_DOD15Charger_Black",			// 2015 Dodge Charger (Black)
	"DD_DOD15Charger_Blue",				// 2015 Dodge Charger (Blue)
	"DD_DOD15Charger_Camo",				// 2015 Dodge Charger (Camo)
	"DD_DOD15Charger_DarkGreen",	// 2015 Dodge Charger (Dark Green)
	"DD_DOD15Charger_DarkRed",		// 2015 Dodge Charger (Dark Red)
	"DD_DOD15Charger_Green",			// 2015 Dodge Charger (Green)
	"DD_DOD15Charger_Orange",			// 2015 Dodge Charger (Orange)
	"DD_DOD15Charger_Red",				// 2015 Dodge Charger (Red)
	"DD_DOD15Charger_UrbanCamo",	// 2015 Dodge Charger (Urban Camo)
	"DD_DOD15Charger_White",			// 2015 Dodge Charger (White)
	"DD_DOD15Charger_Yellow",			// 2015 Dodge Charger (Yellow)
	"MAZDA_RX_7",
	"MAZDA_RX_71",
	"MAZDA_RX_72",
	"MAZDA_RX_73",
	"MAZDA_RX_75",
	"MAZDA_RX_74",
	"MAZDA_MAZDASPEED_3"
];
//16
_sc3 = ["CHRYSLER_300","RENAULT_CLIO_SPORT_V6","SUBARU_IMPREZA_WRX_STI_AWD","SUBARU_IMPREZA_STI_AWD","FIAT_PUNTO","ALFA_ROMEO_BRERA","NISSAN_240SX_SE","PONTIAC_GTO_6"];
//17
_sc4 = ["MustangGTRyellow_MLOD","Convertible_MLOD","FORD_SHELBY_GT","CORVETTE_Z06","INFINITI_G35","MERCEDES_BENZ_CLK_500","MERCEDES_BENZ_SL_65_AMG","JAGUAR_XK","CADILLAC_CTS","VIL_smart_civil","VIL_smart_civil1"];
//18
_sc5 = ["CL_PORSCHE_997","CL_LAMBORGHINI_GT3","KOENIGSEGG_CCX","KOENIGSEGG_CCX1","KOENIGSEGG_CCX2","KOENIGSEGG_CCX3","MCLAREN_F1","MERCEDES_BENZ_SLR","PORSCHE_997_GT3_RSR","PORSCHE_911_TURBO","PORSCHE_911_GT3_RS","LAMBORGHINI_MURCIELAGO","LAMBORGHINI_REVENTON","LAMBORGHINI_GALLARDO","MASERATI_MC12","JAGUAR_XK","BUGATTI_VEYRON","AUDI_TT_QUATTRO_S_LINE","AUDI_FSI_LE_MANS","PAGANI_ZONDA_F","ASTON_MARTIN_DB9"];
//19
_sc6 = ["NISSAN_GTR_SPECV","NISSAN_GTR_SPECV1","NISSAN_GTR_SPECV2","NISSAN_GTR_SPECV3","NISSAN_350Z","NISSAN_370Z","NISSAN_370Z1","NISSAN_370Z2","NISSAN_370Z3","NISSAN_370Z4","NISSAN_SKYLINE_GT_R_Z","NISSAN_SKYLINE_GT_R_Z1","NISSAN_SKYLINE_GT_R_Z2","NISSAN_SKYLINE_GT_R_Z3"];
//20
_sc7 = ["350z_red","350z_kiwi","350z_black","350z_silver","350z_green","350z_blue","350z_gold","350z_white","350z_pink","350z_mod","350z_ruben","350z_v","350z_yellow"];
//21
_sc8 =
[
	"tcg_taurus_civ1",
	"tcg_taurus_civ2",
	"tcg_taurus_civ3",
	"tcg_taurus_civ4",
	"tcg_taurus_civ5",
	"tcg_taurus_civ6",
	"il_fordcv_white",
	"il_fordcv_grey",
	"il_fordcv_black",
	"il_fordcv_darkblue",
	"il_fordcv_maroon",
	"il_fordcv_sandstone",
	"DD_CHE10Impala_Black",			// Impala SS 2010 (Black)
	"DD_CHE10Impala_Blue",			// Impala SS 2010 (Blue)
	"DD_CHE10Impala_Camo",			// Impala SS 2010 (Camo)
	"DD_CHE10Impala_DarkGreen",		// Impala SS 2010 (Dark Green)
	"DD_CHE10Impala_DarkRed",		// Impala SS 2010 (Dark Red)
	"DD_CHE10Impala_Green",			// Impala SS 2010 (Green)
	"DD_CHE10Impala_Orange",		// Impala SS 2010 (Orange)
	"DD_CHE10Impala_Red",			// Impala SS 2010 (Red)
	"DD_CHE10Impala_UrbanCamo",		// Impala SS 2010 (Urban Camo)
	"DD_CHE10Impala_White",			// Impala SS 2010 (White)
	"DD_CHE10Impala_Yellow"			// Impala SS 2010 (Yellow)
];
//22
_sc9 =
[
	"DD_BMWM5_Black",			// BMW M5 (Black)
	"DD_BMWM5_Blue",			// BMW M5 (Blue)
	"DD_BMWM5_Camo",			// BMW M5 (Camo)
	"DD_BMWM5_DarkGreen",		// BMW M5 (Dark Green)
	"DD_BMWM5_DarkRed",			// BMW M5 (Dark Red)
	"DD_BMWM5_Green",			// BMW M5 (Green)
	"DD_BMWM5_Orange",			// BMW M5 (Orange)
	"DD_BMWM5_Red",				// BMW M5 (Red)
	"DD_BMWM5_UrbanCamo",		// BMW M5 (Urban Camo)
	"DD_BMWM5_White",			// BMW M5 (White)
	"DD_BMWM5_Yellow",			// BMW M5 (Yellow)
	"BMW_M6",
	"BMW_M3_GTR",
	"BMW_M3",
	"BMW_M3_RALLY",
	"BMW_135I",
	"tcg_bmw_m3",
	"tcg_bmw_m3_hamwhite",
	"tcg_bmw_m3_c1",
	"tcg_bmw_m3_c3",
	"tcg_bmw_m3_c4",
	"tcg_bmw_m3_c5",
	"tcg_bmw_m3_c6",
	"tcg_bmw_m3_c7",
	"tcg_bmw_m3_c8",
	"tcg_bmw_m3_c9"
];
//23. Tahoe shop
_tahoe = ["tahoe_grey","tahoe_darkblue","tahoe_blue","tahoe_yellow","tahoe_white","tahoe_green","tahoe_black","tahoe_orange","tahoe_pink","tahoe_darkblue_cb","tahoe_grey_cb","tahoe_blue_cb","tahoe_yellow_cb","tahoe_pink_cb","tahoe_white_cb","tahoe_green_cb","tahoe_black_cb","tahoe_orange_cb"];
//24. Pickup Shop -
_ps =
[
	"DD_FOR16F150_Black",			// 2016 Ford F150 (Black)
	"DD_FOR16F150_Blue",				// 2016 Ford F150 (Blue)
	"DD_FOR16F150_Camo",			// 2016 Ford F150 (Camo)
	"DD_FOR16F150_DarkGreen",		// 2016 Ford F150 (Dark Green)
	"DD_FOR16F150_DarkRed",			// 2016 Ford F150 (Dark Red)
	"DD_FOR16F150_Green",			// 2016 Ford F150 (Green)
	"DD_FOR16F150_Orange",			// 2016 Ford F150 (Orange)
	"DD_FOR16F150_Red",				// 2016 Ford F150 (Red)
	"DD_FOR16F150_UrbanCamo",		// 2016 Ford F150 (Urban Camo)
	"DD_FOR16F150_White",			// 2016 Ford F150 (White)
	"DD_FOR16F150_Yellow",			// 2016 Ford F150 (Yellow)
	"DD_CHE15Suburban_Black",		// 2015 Suburban (Black)
	"DD_CHE15Suburban_Blue",			// 2015 Suburban (Blue)
	"DD_CHE15Suburban_Camo",			// 2015 Suburban (Camo)
	"DD_CHE15Suburban_DarkGreen",	// 2015 Suburban (Dark Green)
	"DD_CHE15Suburban_DarkRed",		// 2015 Suburban (Dark Red)
	"DD_CHE15Suburban_Green",		// 2015 Suburban (Green)
	"DD_CHE15Suburban_Orange",		// 2015 Suburban (Orange)
	"DD_CHE15Suburban_Red",			// 2015 Suburban (Red)
	"DD_CHE15Suburban_UrbanCamo",	// 2015 Suburban (Urban Camo)
	"DD_CHE15Suburban_White",		// 2015 Suburban (White)
	"DD_CHE15Suburban_Yellow",		// 2015 Suburban (Yellow)
	"il_silverado_black",
	"il_silverado_red",
	"il_silverado_orange",
	"il_silverado_white",
	"il_silverado_pink",
	"tcg_suburban_red",
	"tcg_suburban_yellow",
	"tcg_suburban_grey",
	"tcg_suburban_white",
	"tcg_suburban_green",
	"suburban_blue",
	"suburban_black",
	"suburban_maroon",
	"suburban_sandstone",
	"suburban_grey",
	"suburban_white"
];
//25. taxi shop
_tx = ["GLT_M300_LT","GLT_M300_ST","il_fordcv_taxi","tcg_taurus_taxi"];
//26. motorcycle shop
_bsj = ["MMT_USMC"];
_mbs = ["tcg_hrly","tcg_hrly_coco","tcg_hrly_demon","tcg_hrly_limited","tcg_hrly_orig1","tcg_hrly_gay","tcg_hrly_metal","tcg_hrly_orig2","tcg_hrly_white","tcg_hrly_blue","tcg_hrly_red","Old_moto_TK_Civ_EP1","TT650_TK_CIV_EP1","TT650_Ins","TT650_Civ","ATV_CZ_EP1"];
//27
_qbs = ["cl_quaddescammo","cl_green","cl_quadred","cl_quadsaftysteel","cl_quadyellow","cl_blue2","cl_chark","cl_dirtyred"];
//28
_qbss = ["tcg_aprilia_blue","tcg_aprilia_yellow","tcg_aprilia_white","tcg_aprilia_green","tcg_aprilia_red","tcg_aprilia_black","tcg_aprilia_black_2","tcg_aprilia_blue_2","tcg_aprilia_blue_4","tcg_aprilia_blue_5","tcg_aprilia_cyan","tcg_aprilia_green_3","tcg_aprilia_orange","tcg_aprilia_red_1","tcg_aprilia_red_2","tcg_aprilia_white_2","tcg_aprilia_yellow_2"];
//29. Truck Shop
_ts = ["cl_del_mackr","cl_trucktest_mackr","cl_flatbed_mackr","Ural_TK_CIV_EP1","V3S_Open_TK_CIV_EP1","V3S_TK_EP1","UralOpen_CDF","KamazOpen","Ural_CDF","schoolbus","Ikarus_TK_CIV_EP1","Ikarus","cooter","lockpick","roadcone"];
//30. Sport Truck Shops
_sts = [
"raptor_black",
"raptor_grey",
"raptor_blue",
"raptor_yellow",
"raptor_pink",
"raptor_white",
"raptor_green",
"raptor_red",
"raptor_orange",
"Cherokee_black",
"Cherokee_grey",
"Cherokee_blue",
"Cherokee_yellow",
"Cherokee_pink",
"Cherokee_white",
"Cherokee_green",
"Cherokee_red",
"Cherokee_orange",
"rangerover_black",
"rangerover_blue",
"rangerover_yellow",
"rangerover_pink",
"rangerover_white",
"rangerover_green",
"rangerover_red",
"rangerover_orange",
"s331_black",
"s331_grey",
"s331_blue",
"s331_yellow",
"s331_pink",
"s331_white",
"s331_green",
"s331_red",
"s331_orange",
"h1_black",
"h1_grey",
"h1_blue",
"h1_yellow",
"h1_pink",
"h1_white",
"h1_green",
"h1_red",
"transit_pink"
];

//31. Air Shop
_as = ["V3S_Refuel_TK_GUE_EP1","V3S_Repair_TK_GUE_EP1","An2_1_TK_CIV_EP1","An2_2_TK_CIV_EP1","USEC_MAULE_M7_STD","gnt_piperwii","GNT_C185F","GNT_C185E","GNT_C185R","GNT_C185C","GNT_C185"];
//32
_assa = ["kyo_ultralight","AH6X_EP1","KA137_PMC","CSJ_Gyroc","Mi17_Civilian","bd5j_civil_3","bd5j_civil_2","bd5j","GazelleUN","Gazelle","Gazelle1","Gazelle3","tcg_bell206_3","tcg_bell206_4","tcg_bell206_1","tcg_bell206_2","tcg_bell206_5","tcg_bell206", "MH6J_EP1"];
//33
_asc = ["can_c130","airnz_C130","luf_c130","qantas_C130","A320MPA"];
//34. Scuba Shop
_sb = ["fishingpole","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3"];
//35. Boat Shop
_bs = ["fishingpole","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3","cl_trawler_fishing_boat","cl_sport_fishing_boat","Fishing_boat","cl_container_boat","cl_inflatable","PBX","Zodiac","Smallboat_1","Smallboat_2","lcu", "big_boat"];
//36
_bsp = ["fishingpole","GNT_C185F","GNT_C185E","PBX","Zodiac","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3"];
//37. Terror Boat Shop
_bt = ["fishingpole","PBX", "Zodiac","cl_trawler_fishing_boat","cl_container_boat","cl_sport_fishing_boat","Fishing_boat","cl_inflatable","lcu","JMSDF_US2","JMSDF_US1"];
//38. Jewelry shop
_js = ["Diamond"];
//39. insurance
_ins = ["bankversicherung"];
//41. Resource Shop
_rs = ["gold","iron","copper","diamond rock","Sand"];
//42. Jackos Cheesburgers
_gds = ["bread","straw"];
//43
_gds1 = [];
//44. OL_Shops_Wigsworth
_wigs = ["supgrade1","supgrade2","RepairKitsBreaksShops"];
//45. Oil Trader/Seller
_os = ["OilBarrel","Oil"];
//46. Whale Sale
_ws = ["Whale"];
//47. Cocaine Sell
_dsc = ["cocaine","cocaineseed"];
//48. Marijuana Sell
_dsm = ["marijuana","marijuanaseed"];
//49. LSD Sell
_dsl = ["lsd"];
//50. Heroin Sell
_dsh = ["heroin","heroinseed"];
//51
_psc = ["medikit","pharm","GymMem1","GymMem2","cl_wheelchair"];
//52
_hsc = ["eyes","brain","liver","heart","kidney","bones","teeth"];
//53
_msc = ["meth","GymMem3","GymMem4"];

//54
_copbasic =
[
"HandCuffs",
"Gag",
"spikestrip",
"Itembag",
"medikit",
"Binocular",
"NVGoggles",
"GPS",
"supgrade1",
"supgrade2",
"RepairKitsBreaksShops",
"caralarm",
"TreeFixer"
];

//55
_coptraffic =
[
"roadblock",
"glt_roadsign_octagon",
"bargate",
"SearchLight_UN_EP1",
"roadcone",
"bunkersmall",
"il_barrier",
"roadbarrierlong",
"roadbarriersmall",
"bigbagfence",
"bigbagfenceRound"
];

//56
_copuntrained =
[
"x26",
"x26_Mag",
"RH_m9",
"Rnd_9x19_M9",
"M1014_pd",
"8Rnd_B_Beneli_Pellets",
"olrpg_pdcv_pb" //"DD_FOR06CV_P_P"
];

//57
_coppo1 =
[
"x26",
"x26_Mag",
"rh_p226_pd",
"RH_15Rnd_9x19_usp_swat",
"M1014_pd",
"8Rnd_B_Beneli_Pellets",
"RH_hk416_pd",
"30Rnd_556x45_Stanag",
"olrpg_pdcv_pb", //"DD_FOR06CV_P_P",
"olrpg_pdtaurus" //"DD_CHE10Impala_P_P"
];

//58
_coppo2 =
[
"x26",
"x26_Mag",
"rh_p226_pd",
"RH_15Rnd_9x19_usp_pd",
"M1014_pd",
"8Rnd_B_Beneli_Pellets",
"RH_hk416eotech_pd",
"30Rnd_556x45_Stanag",
//"DD_FOR06CV_P_P",
"olrpg_pdcv_fpb", //"DD_CHE10Impala_P_P",
"olrpg_pdtauruspb" //"DD_FOR13Taurus_P_P"
];

//59
_coppo3 =
[
"x26",
"x26_Mag",
"rh_p226_pd",
"RH_15Rnd_9x19_usp_pd",
"M1014_pd",
"8Rnd_B_Beneli_Pellets",
"RH_hk416aim_pd",
"30Rnd_556x45_Stanag",
//"DD_FOR06CV_P_P",
"olrpg_pdcv_slick_npb", //"DD_CHE10Impala_P_P",
"olrpg_pdtaurusfpb", //"DD_FOR13Taurus_P_P",
"olrpg_pdcharger", //"DD_DOD12Charger_P_P",
"supgrade3_pd"
];

//60
_copcpl =
[
"x26",
"x26_Mag",
"rh_p226_pd",
"RH_15Rnd_9x19_usp_pd",
"M1014_pd",
"8Rnd_B_Beneli_Pellets",
"RH_m4sbraim_cmd",
"RH_M4sbreotech_cmd",
"30Rnd_556x45_Stanag",
//"DD_FOR06CV_P_P",
//"DD_CHE10Impala_P_P",
"olrpg_pdcv_slick_pb", //"DD_FOR13Taurus_P_P",
"olrpg_pdtaurus_slick", //"DD_DOD12Charger_P_P",
"olrpg_pdcharger_slick", //"DD_CHE08Tahoe_P_P",
"supgrade3_pd",
"supgrade4_pd"
];

//61
_copsgt =
[
"x26",
"x26_Mag",
"rh_p226_pd",
"RH_15Rnd_9x19_usp_pd",
"M1014_pd",
"8Rnd_B_Beneli_Pellets",
"RH_m4sbraim_cmd",
"RH_M4sbreotech_cmd",
"RH_M4sbracog_cmd",
"30Rnd_556x45_Stanag",
//"DD_FOR06CV_P_P",
//"DD_CHE10Impala_P_P",
"olrpg_pdcv_slick_pb", //"DD_FOR13Taurus_P_P",
"olrpg_pdtaurus_slick", //"DD_DOD12Charger_P_P",
"olrpg_pdcharger_slick", //"DD_CHE08Tahoe_P_P",
"olrpg_pdsuptahoe", //"DD_CHE15Suburban_P_P",
"supgrade3_pd",
"supgrade4_pd"
];

//62
_copdeputy =
[
"x26",
"x26_Mag",
"RH_python_sheriff",
"RH_6Rnd_357_Mag",
"M1014_sheriff",
"8Rnd_B_Beneli_Pellets",
"RH_acrbaim_sheriff",
"RH_acrbeotech_sheriff",
"30Rnd_556x45_Stanag",
"olrpg_sdcv_pb",
"olrpg_sdcv_fpb",
"olrpg_sdcv_slick_npb",
"olrpg_sdcv_slick_pb",
"olrpg_sdcv_slick_fpb",
"olrpg_sdcharger", //"DD_FOR06CV_P_S",
"olrpg_sdcharger_slick", //"DD_CHE10Impala_P_P_S",
"tcg_taurus_shpb", //"DD_FOR13Taurus_P_S",
"olrpg_sdtaurus_slick", //"DD_DOD12Charger_P_S",
"supgrade1",
"supgrade2",
"supgrade3_pd"
];

//62
_copsheriffdnr =
[
"olrpg_sdtahoe_dnr", //"DD_CHE15Suburban_P_P_K9"
"olrpg_sdf350_dnr"
];

_copsheriffmks =
[
"M24_sheriff",
"M40A3_sheriff",
"5Rnd_762x51_M24"
];

_copsgtdeputy =
[
"x26",
"x26_Mag",
"RH_python_sheriff",
"RH_6Rnd_357_Mag",
"M1014_sheriff",
"8Rnd_B_Beneli_Pellets",
"RH_acrbaim_sheriff",
"RH_acrbeotech_sheriff",
"RH_acrbacog_sheriff",
"30Rnd_556x45_Stanag",
"M24_sheriff",
"5Rnd_762x51_M24",
//"DD_FOR06CV_P_S",
//"DD_CHE10Impala_P_P_S",
"olrpg_sdtahoe", //"DD_FOR13Taurus_P_S",
"olrpg_sdsub6", //"DD_DOD12Charger_P_S",
"olrpg_sdf350", //"DD_CHE15Suburban_P_P_K9",
"supgrade3_pd",
"supgrade4_pd"
];

//63
_copsheriff =
[
"x26",
"x26_Mag",
"RH_python_sheriff",
"RH_6Rnd_357_Mag",
"M1014_sheriff",
"8Rnd_B_Beneli_Pellets",
"RH_acrbaim_sheriff",
"RH_acrbeotech_sheriff",
"RH_acrbacog_sheriff",
"30Rnd_556x45_Stanag",
"M24_sheriff",
"5Rnd_762x51_M24",
"Stinger_swat",
"Stinger_mag",
"olrpg_sdtahoe", //"DD_FOR06CV_P_S",
"olrpg_sdf350", //"DD_CHE10Impala_P_P_S",
"olrpg_sdsub6", //"DD_FOR13Taurus_P_S",
"olrpg_sdcv_pool_pb", //"DD_DOD12Charger_P_S",
"olrpg_umcv_dblue", //"DD_DOD15Charger_P_S",
"olrpg_umcv_maroon", //"DD_DOD15Charger_P_P",
"olrpg_umcv_grey", //"DD_CHE15Suburban_P_P_K9",
"olrpg_uctahoe_maroon", //"DD_CHE15Suburban_P_P",
"olrpg_uctahoe_grey", //"DD_CHE15Suburban_U_P_DarkRed",
"olrpg_uctahoe_dblue", //"DD_CHE15Suburban_U_P_DarkBlue",
"supgrade3_pd",
"supgrade4_pd",
"supgrade5_pd",
"Bait_Kit"
];

//64
_coplt =
[
"x26",
"x26_Mag",
"rh_p226_pd",
"RH_15Rnd_9x19_usp_pd",
"M1014_pd",
"8Rnd_B_Beneli_Pellets",
"RH_m4maim_cmd",
"RH_m4meotech_cmd",
"RH_m4macog_cmd",
"30Rnd_556x45_Stanag",
"Stinger_swat",
"Stinger_mag",
//"DD_FOR06CV_P_P",
//"DD_CHE10Impala_P_P",
"olrpg_pdlttahoe", //"DD_FOR13Taurus_P_P",
"olrpg_umcv_dblue", //"DD_DOD12Charger_P_P",
"olrpg_umcv_maroon", //"DD_DOD15Charger_P_P",
"olrpg_umcv_grey", //"DD_CHE08Tahoe_P_P",
"olrpg_uctahoe_maroon", //"DD_CHE15Suburban_P_P",
"olrpg_uctahoe_grey", //"DD_CHE15Suburban_U_P_DarkRed",
"olrpg_uctahoe_dblue", //"DD_CHE15Suburban_U_P_DarkBlue",
"supgrade3_pd",
"supgrade4_pd",
"supgrade5_pd",
"Bait_Kit"
];

//65
_copcpt =
[
"x26",
"x26_Mag",
"rh_p226_pd",
"RH_15Rnd_9x19_usp_pd",
"M1014_pd",
"8Rnd_B_Beneli_Pellets",
"RH_m4maim_cmd",
"RH_m4meotech_cmd",
"RH_m4macog_cmd",
"30Rnd_556x45_Stanag",
"Stinger_swat",
"Stinger_mag",
//"DD_FOR06CV_P_P",
//"DD_CHE10Impala_P_P",
//"DD_FOR13Taurus_P_P",
//"DD_DOD12Charger_P_P",
//"DD_DOD15Charger_P_P",
"olrpg_pdcpttahoe", //"DD_CHE08Tahoe_P_P",
"olrpg_umcv_dblue", //"DD_CHE15Suburban_P_P",
"olrpg_umcv_maroon", //"DD_DOD12Charger_U_P_Black",
"olrpg_umcv_grey", //"DD_CHE15Suburban_U_P_DarkRed",
"olrpg_uctahoe_maroon", //"DD_CHE15Suburban_U_P_DarkBlue",
"olrpg_uctahoe_grey", //"DD_FOR13Taurus_U_Black",
"olrpg_uctahoe_dblue", //"DD_FOR13Taurus_U_DarkBlue",
"olrpg_pdtaurus_um", //"DD_FOR13Taurus_U_Red",
"supgrade3_pd",
"supgrade4_pd",
"supgrade5_pd",
"Bait_Kit"
];

//66
_copchief =
[
"MakarovSD",
"8Rnd_9x18_MakarovSD",
"RH_deaglemzb_cmd",
"RH_7Rnd_50_AE",
"RH_m4maim_cmd",
"RH_m4meotech_cmd",
"RH_m4macog_cmd",
"30Rnd_556x45_Stanag",
"LEXX_SCAR_H_CQC_CCO_BLACK_cmd",
"20Rnd_762x51_B_SCAR_pd",
"Stinger_swat",
"Stinger_mag",
//"DD_FOR06CV_P_P",
//"DD_CHE10Impala_P_P",
"olrpg_pdcv_chief", //"DD_FOR13Taurus_P_P",
"olrpg_pdcoftahoe", //"DD_DOD12Charger_P_P",
"olrpg_pdastcoftahoe", //"DD_DOD15Charger_P_P",
"olrpg_umcv_dblue", //"DD_CHE08Tahoe_P_P",
"olrpg_umcv_maroon", //"DD_CHE15Suburban_P_P",
"olrpg_umcv_grey", //"DD_DOD12Charger_U_P_Black",
"olrpg_uctahoe_maroon", //"DD_DOD15Charger_U_P_Black",
"olrpg_uctahoe_grey", //"DD_DOD06charger_P_P",
"olrpg_uctahoe_dblue", //"DD_DOD16Challenger_P_P",
"olrpg_pdtaurus_um", //"DD_DOD16Challenger_P_Blue",
"olrpg_pdcharger_um", //"DD_DOD16Challenger_P_Red",
"supgrade3_pd",
"supgrade4_pd",
"supgrade5_pd",
"Bait_Kit"
];

//66
_copmedal =
[
"MakarovSD",
"8Rnd_9x18_MakarovSD",
"RH_m4maim_cmd",
"RH_m4meotech_cmd",
"RH_m4macog_cmd",
"30Rnd_556x45_Stanag",
/*"DD_FOR06CV_P_P",
"DD_CHE10Impala_P_P",
"DD_FOR13Taurus_P_P",
"DD_DOD12Charger_P_P",
"DD_DOD15Charger_P_P",
"DD_CHE08Tahoe_P_P",
"DD_CHE15Suburban_P_P",*/
"supgrade3_pd",
"supgrade4_pd",
"supgrade5_pd"
];

//68
_copk9p =
[
"x26",
"x26_Mag",
"RH_m1911old_k9",
"RH_8Rnd_45cal_m1911",
"LEXX_SCAR_L_CQC_BLACK_k9",
"30Rnd_556x45_Stanag",
"olrpg_pdk9cv_fpb" //"DD_FOR06CV_P_K9"
];

//68
_copk9 =
[
"x26",
"x26_Mag",
"RH_m1911old_k9",
"RH_8Rnd_45cal_m1911",
"LEXX_SCAR_L_CQC_BLACK_k9",
"LEXX_SCAR_L_CQC_Holo_BLACK_k9",
"30Rnd_556x45_Stanag",
"olrpg_pdk9cv_fpb", //"DD_FOR06CV_P_K9",
"olrpg_pdk9taurusfpb", //"DD_FOR13Taurus_P_K9",
"olrpg_pdk9suburban" //"DD_DOD12Charger_P_P_K9"
];

//68
_copk9c =
[
"x26",
"x26_Mag",
"RH_m1911old_k9",
"RH_8Rnd_45cal_m1911",
"LEXX_SCAR_L_CQC_BLACK_k9",
"LEXX_SCAR_L_CQC_Holo_BLACK_k9",
"LEXX_SCAR_L_STD_Mk4CQT_BLACK_k9",
"30Rnd_556x45_Stanag",
"RH_m21_k9",
"20Rnd_762x51_DMR",
"M24_k9",
"5Rnd_762x51_M24",
"olrpg_pdk9cv_slick_fpb", //"DD_FOR06CV_P_K9",
"olrpg_pdk9taurusfpb", //"DD_DOD12Charger_P_P_K9",
"olrpg_pdk9charger", //"DD_FOR13Taurus_P_K9",
"olrpg_pdk9suburban_slick" //"DD_CHE08Tahoe_P_K9"
];

 //68.5
_copk9sheriff =
[
"olrpg_sdk9suburban",
"olrpg_sd_k9charger", //"DD_FOR06CV_P_SK9",
"olrpg_sd_k9taurusfpb", //"DD_DOD12Charger_P_SK9",
"olrpg_sd_k9cv_slick_fpb" //"DD_CHE08Tahoe_P_SK9"
];

_copav3 =
[
//"DD_CHE10Impala_P_P_APO",
"olrpg_pdcv_pool_pb" //"DD_FOR13Taurus_P_APO"
];

//69
_copav2 =
[
"RH_m9",
"Rnd_9x19_M9",
"RH_umpaim_av",
"RH_45ACP_25RND_Mag",
"RH_PDR_av",
"30Rnd_556x45_Stanag",
"olrpg_swatmh6j",
"olrpg_swatmh60s"
];

//70
_copav1 =
[
"Donut",
"RH_m9",
"Rnd_9x19_M9",
"RH_mp5a5aim_av",
"30rnd_9x19_MP5",
"olrpg_pdbell206",
"OH58g",
"olrpg_pdgazelle"
];

_copavsh =
[
"RH_m9",
"Rnd_9x19_M9",
"RH_mp5a5aim_av",
"30rnd_9x19_MP5",
"olrpg_sdbell206"
];

//71.1
_copswat1 =
[
"SmokeShell",
"RAB_L111A1_swat",
"SWAT",
"Rnd_9x19_M9",
"x26",
"x26_Mag",
"M1014_pd",
"8Rnd_B_Beneli_Pellets",
"RH_Mk18gl_swat",
"1Rnd_Smoke_M203_swat",
"30Rnd_556x45_Stanag_swat"
];

//71.2
_copswat2 =
[
"SmokeShell",
"RAB_L111A1_swat",
"SWAT",
"Rnd_9x19_M9",
"x26",
"x26_Mag",
"RH_usp_swat",
"RH_15Rnd_9x19_usp_swat",
"RH_Mk18gl_swat",
"RH_Mk18gleot_swat",
"RH_Mk18glaim_swat",
"30Rnd_556x45_Stanag_swat",
"1Rnd_Smoke_M203_swat",
"LEXX_M32_EP1_BLACK_swat",
"6Rnd_Smoke_M203",
"RH_mk14ebrsp_swat",
"20Rnd_762x51_DMR"
];

//71.3
_copswat3 =
[
"SmokeShell",
"RAB_L111A1_swat",
"SWAT",
"Rnd_9x19_M9",
"x26",
"x26_Mag",
"RH_usp_swat",
"RH_15Rnd_9x19_usp_swat",
"RH_Mk18glacog_swat",
"RH_mk18sdeot_swat",
"RH_mk18sdaim_swat",
"30Rnd_556x45_Stanag_swat",
"30Rnd_556x45_StanagSD_swat",
"1Rnd_Smoke_M203_swat",
"LEXX_M32_EP1_BLACK_swat",
"6Rnd_Smoke_M203",
"RH_mk14ebrsp_swat",
"20Rnd_762x51_DMR"
];

//71.4
_copswat4 =
[
"x26",
"x26_Mag",
"RH_uspsd_swat",
"RH_15Rnd_9x19_uspsd_swat",
"RH_mk18dcsdaim_swat",
"30Rnd_556x45_StanagSD_swat",
"DMR_swat",
"RH_mk14ebrsp_sd_swat",
"20Rnd_762x51_DMR",
"BAF_LRR_scoped_swat",
"5Rnd_86x70_L115A1",
"Binocular_Vector"
];

//71.5
_copswat5 =
[
"SmokeShell",
"RAB_L111A1_swat",
"SWAT",
"Rnd_9x19_M9",
"x26",
"x26_Mag",
"RH_usp_swat",
"RH_15Rnd_9x19_usp_swat",
"RH_mk18sdeot_swat",
"RH_mk18sdaim_swat",
"RH_mk18sdacog_swat",
"30Rnd_556x45_StanagSD_swat",
"LEXX_M32_EP1_BLACK_swat",
"6Rnd_Smoke_M203",
"RH_mk14ebrsp_swat",
"20Rnd_762x51_DMR",
"Stinger_swat",
"Stinger_mag"
];

_copswat6 =
[
"RHIB",
"Zodiac"
];

//72
_copswatvehicle =
[
"olrpg_tahoe_swat_um", //"DD_CHE08Tahoe_P_SWAT",
"olrpg_swat_suburban_um", //"DD_CHE15Suburban_U_P_SWAT",
"olrpg_swat_f350",
"olrpg_swat_command",
"olrpg_swat_bearcat"
];

//72
_cid =
[
"x26",
"x26_Mag",
"RH_p226_cid",
"RH_15Rnd_9x19_usp",
"RH_M16a4_cid",																								// M16A4 Iron Sights
"RH_M16A4aim_cid",																						// M16A4 Aimpoint
"RH_M16A4eotech_cid",																					// M16A4 EOTech
"RH_M16A4acog_cid",																						// M16A4 Acog
"30Rnd_556x45_Stanag",																				// 30Rnd 5.56x45 Stanag Mag
//"DD_CHE10Impala_U_P_Black",																	// Impala (Black)
//"DD_CHE10Impala_U_P_DarkRed",																// Impala (Dark Red)
//"DD_CHE10Impala_U_P_Red",																		// Impala (Red)
"olrpg_detcv_black", //"DD_CHE10Impala_U_P_DarkBlue",					// Impala (Dark Blue)
"olrpg_detcv_sands", //"DD_DOD12Charger_U_P_DarkRed",					// Dodge Charger 2012 (Dark Red)
"olrpg_detcv_maroon", //"DD_DOD12Charger_U_P_Red",						// Dodge Charger 2012 (Red)
"olrpg_detcv_dblue", //"DD_DOD12Charger_U_P_DarkBlue",				// Dodge Charger 2012 (Dark Blue)
"olrpg_detcv_grey", //"DD_DOD15Charger_U_P_DarkRed",					// Dodge Charger 2015 (Dark Red)
"olrpg_detcv_white", //"DD_DOD15Charger_U_P_Red",							// Dodge Charger 2015 (Red)
"olrpg_dettahoe_maroon", //"DD_DOD15Charger_U_P_DarkBlue",		// Dodge Charger 2015 (Dark Blue)
"olrpg_dettahoe_grey", //"DD_CHE15Suburban_U_P_Black",				// Suburban (Black)
"olrpg_dettahoe_blue", //"DD_CHE15Suburban_U_P_DarkRed",			// Suburban (Dark Red)
"olrpg_dettahoe_black", //"DD_CHE15Suburban_U_P_DarkBlue",		// Suburban (Dark Blue)
"olrpg_dettahoe_white", //"DD_BMWM5_P_P",											// 2013 BMW M5 (Black)
"olrpg_dettahoe_pink", //"DD_FOR13Mustang_P_P",								// 2013 Ford Mustang (Black)
"olrpg_dettahoe_green", //"DD_FOR13Mustang_P_Blue",						// 2013 Ford Mustang (Blue)
"olrpg_dettahoe_orange", //"DD_FOR13Mustang_P_Red",						// 2013 Ford Mustang (Red)
"olrpg_cv_taxi_npb",
"ilpd_Traffic_black",
"ilpd_Traffic_white",
"ilpd_Traffic_sandstone",
"ilpd_Traffic_maroon",
"ilpd_Traffic_grey",
"ilpd_Traffic_darkblue",
"Bait_Kit"
];

//73
_copcoastguard =
[
"olrpg_sdpbx",
"olrpg_sdrhib"
];


//73
_copcoastguardair =
[
"pmo_mh6jc_green",
"olrpg_sdbell206",
"olrpg_sdhh60",
"olrpg_sdmh60"
];

//73.5
_copfto =
[
"rh_m16a1_fto",
"RH_hk417saim",
"rh_hk417seotech",
"30Rnd_556x45_Stanag",
"RH_20Rnd_762x51_hk417",
//"DD_FOR06CV_P_P",
"olrpg_snrftotahoe", //"DD_CHE10Impala_P_P",
"olrpg_pdftocharger", //"DD_DOD12Charger_P_P",
"olrpg_pdcv_slick_fpb_fto" //"DD_CHE08Tahoe_P_P"
];

//74
_copvip =
[
"supgrade3",
"supgrade4",
"supgrade5",
"RH_masbaim",
"30Rnd_556x45_Stanag",
"RH_p90sdeot",
"RH_p90sdaim",
"RH_57x28mm_50RND_Mag",
"MakarovSD",
"8Rnd_9x18_MakarovSD",
"m5_pd_traffic" //"DD_FOR13Taurus_P_P"
];

//75
_undercover =
[
"tcg_taurus_civ2",
"tahoe_black_cb",
"suburban_black",
"transit_pink",
"monaco_red",
"CL_LAMBORGHINI_GT3",
"MakarovSD",
"8Rnd_9x18_MakarovSD",
"RH_g19_cid",
"RH_17Rnd_9x19_g19",
"RH_bull_cid",
"RH_6Rnd_44_Mag",
"KPFS_KarSmaf_uc",
"KPFS_10Rnd_762x39_SKS",
"AK_47_M_uc",
"30Rnd_762x39_AK47",
"RH_ar10s_uc",
"RH_20Rnd_762x51_AR10",
"Huntingrifle_uc",
"5x_22_LR_17_HMR",
"HandCuffs",
"RepairKitsBreaksShops",
"Itembag",
"bjerk",
"medikit",
"Binocular",
"NVGoggles",
"GPS",
"supgrade3_pd",
"supgrade4_pd",
"supgrade5_pd",
"Bait_Kit"
];

//76
_terrorshop =
[
"NVGoggles",
"safehack",
"RH_oc14",
"RH_20Rnd_9x39_SP6_mag",
"RH_rk95",
"RH_aks47",
"RH_aks47b",
"AK_47_S",
"RH_akm",
"30Rnd_762x39_AK47",
"RH_m14maf",
"20Rnd_762x51_DMR",
"RPG18",
"RPG18_mag",
"V3S_Reammo_TK_GUE_EP1"
];

//77
_shady =
[
"lockpick",
"ziptie",
"codeb",
"Gag",
"lighter"
];

//82
_Donate = ["RepairKitsBreaksShops","medikit","supgrade1","LeeEnfieldmaf","x_303","donateRH_deagle","donateRH_browninghp","donateRH_mk22","donateRH_usp","donateRH_m1911","donateRH_m9","donateRH_g17","donateRH_g18","donateRH_g19","donateRH_mk2","donateRH_tt33","donateRH_vz61","donateRH_tec9","donateRH_muzi","donateRH_ppk","donateRH_p38","donateRH_p226","donateRH_anac","donateRH_bull","donateRH_python","donateRH_7Rnd_50_AE","donateRH_13Rnd_9x19_bhp","donateRH_8Rnd_9x19_Mk","donateRH_15Rnd_9x19_usp","donateRH_8Rnd_45cal_m1911","donate15Rnd_9x19_M9","donateRH_17Rnd_9x19_g17","donateRH_33Rnd_9x19_g18","donateRH_17Rnd_9x19_g19","donateRH_10Rnd_22LR_mk2","donateRH_8Rnd_762_tt33","donateRH_20Rnd_32cal_vz61","donateRH_30Rnd_9x19_tec","donateRH_32Rnd_9x19_Muzi","donateRH_7Rnd_32cal_ppk","donateRH_8Rnd_9x19_p38","donateRH_15Rnd_9x19_uspp","donateRH_6Rnd_43_Mag","donateRH_6Rnd_44_Mag","donateRH_6Rnd_357_Mag"];

//83
_Donate2 = ["supgrade2","donateRH_ak47","donateRH_aks74u","donateRH_ak74","donateRH_ak103","donateRH_m4","donateRH_m4m","donateRH_m16a1","donateRH_mp5a4","donateRH_mp5k","donateRH_uzi","donate30Rnd_762x39_AK47","donate30Rnd_545x39_AK","donate30Rnd_9x19_MP5","donateRH_9mm_32RND_Mag","donate30Rnd_556x45_Stanag","DODGE_VIPER_SRT10","CORVETTE_Z06"];

//84
_Donate3 = ["supgrade3","IRAfal","20Rnd_762x51_FNFAL","donateRH_mk22vsd","donateRH_uspsd","donateRH_m1911sd","donateRH_m9sd","donateRH_m9csd","donateRH_g19t","donateRH_m1911old","donateRH_m93r","donateRH_anacg","donateRH_p226s","donateRH_Deaglemzb","donateRH_8Rnd_9x19_Mksd","donateRH_8Rnd_45cal_m1911sd","donate15Rnd_9x19_M9SD","donateRH_15Rnd_9x19_uspsd","donateRH_17Rnd_9x19_g19","donateRH_15Rnd_9x19_uspp","donateRH_8Rnd_45cal_m1911","donateRH_6Rnd_43_Mag","donateRH_7Rnd_50_AE","m5_c_bgreen","m5_c_dblue","m5_c_lblue","m5_c_orange","m5_c_yellow"];

//85
_Donate4 = ["supgrade4","donateRH_mp5a4aim","donateRH_mp5a4eot","donateRH_mp5a4rfx","donateRH_mp5sd6","donateRH_mp5sd6aim","donateRH_mp5sd6eot","donateRH_mp5sd6RFX","donateRH_kriss","donateRH_krissaim","donateRH_krisseot","donateRH_krissRFX","donateRH_krisssd","donateRH_krisssdaim","donateRH_krisssdeot","donateRH_krisssdRFX","donateRH_uzisd","donateRH_tmp","donateRH_tmpaim","donateRH_tmpeot","donateRH_tmpsd","donateRH_tmpsdaim","donateRH_tmpsdeot","donateRH_mp7","donateRH_mp7aim","donateRH_mp7eot","donateRH_mp7RFX","donateRH_mp7sd","donateRH_mp7sdaim","donateRH_mp7sdeot","donate30Rnd_9x19_MP54","donate30Rnd_9x19_MP5SD4","donateRH_45ACP_30RND_Mag","donateRH_45ACP_30RND_SD_Mag","donateRH_9mm_32RND_SD_Mag","donate30Rnd_9x19_TMP","donate30Rnd_9x19_TMPSD","donateRH_46x30mm_40RND_Mag","donateRH_46x30mm_40RND_SD_Mag","clbuggy"];

//86
_Donate5 = ["supgrade5","donateRH_m4aim","donateRH_m4eotech","donateRH_m4acog","donateRH_m4maim","donateRH_m4meotech","donateRH_m4macog","donateRH_hk416aim","donateRH_hk416acog","donateRH_hk416eotech","donateRH_hk417aim","donateRH_hk417acog","donateRH_hk417eotech","donateRH_acracog","donateRH_acraim","donateRH_acreotech","MBG_Compound_Bow","donateRH_20Rnd_762x51_hk417","MBG_Arrow_HE","donate30Rnd_556x45_Stanag"];

//87
_Donate6 = ["donateRH_m4sd","donateRH_m4sdaim","donateRH_m4sdacog","donateRH_m4sdeotech","donateRH_hk416sd","donateRH_hk416sdaim","donateRH_hk416sdeotech","donateRH_hk417sd","donateRH_hk417sdaim","donateRH_hk417sdacog","donateRH_hk417sdeotech","donateRH_massd","donateRH_massdacog","donateRH_massdaim","donateRH_massdeotech","donate30Rnd_556x45_StanagSD","donateRH_20Rnd_762x51_SD_hk417","donate30Rnd_556x45_Stanag"];

//91
_VIPterror =
[
"RH_ar10s",
"safehack",
"RH_20Rnd_762x51_AR10",
"RH_aks47g",
"AK_107_GL_kobra",
"30Rnd_762x39_AK47",
"RH_bizonk",
"64Rnd_9x19_Bizon",
"RH_m14aim",
"20Rnd_762x51_DMR",
"RH_svdg",
"10Rnd_762x54_SVD",
"AKS_74_GOSHAWK",
"30Rnd_545x39_AK",
"FN_FAL_ANPVS4",
"donate20Rnd_762x51_FNFAL"
];

//93
_vipterrorairlist =
[
"UH1H_TK_EP1"
];

_weaponx =
[
"RH_mk18dcsdaim",
"RH_mk18dcsdeot",
"RH_mk18dcsdacog",
"xRH_m93r",
"15Rnd_9x19_M9SD",
"donateRH_Deaglemzb",
"xRH_Deagleg",
"donateRH_7Rnd_50_AE",
"xRH_acraim",
"xRH_acreotech",
"xRH_acr",
"xRH_ctar21",
"xRH_ctar21m",
"xRH_star21",
"xRH_m4macog",
"xRH_M4maim",
"xRH_m4meotech",
"Rnd_556x45_Stanag",
"xRH_MK12sd",
"20Rnd_556x45_Stanag_k9",
"xG36_C_SD_eotech",
"30Rnd_556x45_G36SD",
"RH_ak103",
"RH_aks47g",
"RH_ak47",
"x30Rnd_762x39_AK47",
"xRH_umpsdaim",
"xRH_umpsdeot",
"RH_45ACP_25RND_SD_Mag",
"xRH_p90sdaim",
"xRH_p90sdeot",
"RH_57x28mm_50RND_SD_Mag",
"xRH_mp5sd6g",
"30Rnd_9x19_MP5SD",
"xRH_Rk95sdaim",
"RH_30Rnd_762x39_SDmag",
"xRH_hk417sdsp",
"xRH_20Rnd_762x51_SD_hk417",
"xBAF_LRR_scoped",
"5Rnd_86x70_L115A1",
"RPG18",
"RPG18_mag",
"MBG_Compound_Bow",
"xMBG_Arrow_HE"
];

_itemx =
[
"supgrade1",
"supgrade2",
"supgrade3",
"supgrade4",
"supgrade5",
"speedx",
"RepairKitsBreaksShops",
"medikit",
"ziptie",
"GNT_ScubaW",
"vclammo"
];

_carx =
[
"f350_black",
"f350_blue",
"f350_pink",
"f350_white",
"f350_red",
"transit_black",
"transit_grey",
"transit_blue",
"transit_yellow",
"transit_pink",
"transit_white",
"transit_green",
"transit_red",
"transit_orange",
"suburban_black",
"h1c_black",
"h1c_white",
"h1c_red",
"h1c_grey",
"rangeroverc_black",
"rangeroverc_white",
"rangeroverc_red",
"rangeroverc_grey",
"s331c_black",
"s331_white",
"s331_red",
"s331_grey",
"il_silverado_selvo",
"PAGANI_ZONDA_F",
"Enzo",
"bentley",
"m5_c_black",
"cl_del_mackr",
"ASTON_MARTIN_DBR9",
"CORVETTE_Z06",
"MustangGTRyellow_MLOD",
"FORD_SHELBY_GT",
"FORD_MUSTANG_SHELBY_COBRA",
"FORD_MUSTANG_SHELBY_COBRA1",
"FORD_MUSTANG_SHELBY_COBRA2",
"FORD_MUSTANG_SHELBY_COBRA3",
"DODGE_VIPER_SRT10",
"CORVETTE_C6R",
"ibr_van_BNK",
"240GD",
"Da_kart",
"CHRYSLER_W_limmo",
"UAZ_MG_TK_EP1",
"Offroad_DSHKM_TK_GUE_EP1",
"Pickup_PK_TK_GUE_EP1",
"SUV_TK_EP1"
];

_boatx =
[
"RHIB",
"fishingpole",
"PBX",
"Zodiac",
"cl_trawler_fishing_boat",
"cl_container_boat",
"cl_sport_fishing_boat",
"Fishing_boat",
"cl_inflatable",
"lcu",
"JMSDF_US2",
"JMSDF_US1"
];

_helix =
[
"UH1H_TK_EP1",
"Gazelle",
"Gazelle3",
"GazelleUN",
"USEC_ch53_e"
];

_PMC =
[
"ziptie",
"RepairKitsBreaksShops",
"medikit",
"bjerk",
"M24_PMC",
"5Rnd_762x51_M24",
"RH_m4aim_PMC",
"M16A4pmc",
"30Rnd_556x45_Stanag",
"C1987_P99_black_PMC",
"15Rnd_9x19_p99",
"RH_usp_pmc",
"RH_15Rnd_9x19_usp",
"HMMWV_DES_EP1"
];

_CommandPMC =
[
"ziptie",
"RepairKitsBreaksShops",
"medikit",
"bjerk",
"M24_PMC",
"5Rnd_762x51_M24",
"M16A4pmc",
"30Rnd_556x45_Stanag",
"G36C_camo",
"30Rnd_556x45_G36",
"RH_p90",
"RH_57x28mm_50RND_Mag",
"C1987_P99_black_PMC",
"15Rnd_9x19_p99",
"RH_usp_pmc",
"RH_15Rnd_9x19_usp",
"HMMWV_DES_EP1"
];

_PMCAIR =
[
"MH6J_EP1", //Black LB
"pmo_mh6dl_urban", //PMC LB
"olrpg_pmcjayhunarmed" //Unarmed Jayhawk
];

_pistol =
[
"RH_g19t",
"RH_17Rnd_9x19_g17",
"RH_p38",
"RH_8Rnd_9x19_p38",
"RH_tt33",
"RH_8Rnd_762_tt33",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_uspm",
"RH_12Rnd_45cal_usp",
"RH_usp",
"RH_15Rnd_9x19_usp",
"RH_mk2",
"RH_10Rnd_22LR_mk2",
"RH_m93r",
"RH_20Rnd_9x19_M93",
"RH_m9c",
"Rnd_9x19_M9",
"RH_anac",
"RH_6Rnd_44_Mag",
"RH_python",
"RH_6Rnd_357_Mag",
"RH_g17",
"RH_19Rnd_9x19_g18",
"RH_m1911old",
"RH_8Rnd_45cal_m1911",
"RH_bull",
"RH_6Rnd_44_Mag",
"C1987_P99_black",
"15Rnd_9x19_p99"
];

_sub =
[
"RH_muzi",
"RH_32rnd_9x19_Muzi",
"RH_uzi",
"RH_9mm_32RND_Mag",
"RH_fmg9",
"RH_9mm_32RND_Mag"
];

_rifle =
[
"Huntingrifle",
"5x_22_LR_17_HMR",
"MBG_Compound_Bow",
"MBG_Arrow_N",
"tcg_mossberg",
"LeeEnfieldmaf",
"x_303",
"tcg_combat",
"Saiga12K",
"8Rnd_B_Saiga12_Pellets",
"8Rnd_B_Beneli_Pellets",
"KPFS_KarS",
"KPFS_10Rnd_762x39_SKS"
];

_guss =
[
"RH_mac10_guss",
"RH_9mm_32RND_Mag",
"RH_TMP_guss",
"30Rnd_9x19_MP5",
"RH_m1s_guss",
"RH_m14_guss",
"20Rnd_762x51_DMR"
];

_gangshop_buy =
[
"RH_g19t",
"RH_17Rnd_9x19_g17",
"RH_p38",
"RH_8Rnd_9x19_p38",
"RH_tt33",
"RH_8Rnd_762_tt33",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_muzi",
"RH_32rnd_9x19_Muzi",
"RH_uzi",
"RH_9mm_32RND_Mag",
"RH_tmpeot",
"30Rnd_9x19_MP5",
"RH_fmg9",
"RH_9mm_32RND_Mag"
];

//Civilian Clothing
M_rlrpgclothing =
[
"Functionary1",
"Functionary2",
"Worker2",
"Woodlander3",
"Doctor",
"Rocker2",
"TK_CIV_Takistani01_EP1",
"TK_CIV_Takistani02_EP1",
"TK_CIV_Takistani03_EP1",
"TK_CIV_Worker01_EP1",
"TK_CIV_Worker02_EP1"
];
//Tactical Military Clothing
M_rlrpgclothing_1 =
[
"Soldier_TL_PMC",
"Soldier_Pilot_PMC",
"Reynolds_PMC",
"Dixon_PMC",
"Ry_PMC"
];
//Military Surplus
M_rlrpgclothing_2 =
[
"GUE_Soldier_Sniper",
"TK_Special_Forces_EP1",
"TK_Soldier_Officer_EP1",
"TK_Soldier_EP1",
"TK_Aziz_EP1",
"TK_GUE_Soldier_5_EP1",
"TK_GUE_Soldier_AAT_EP1",
"TK_GUE_Soldier_EP1",
"TK_INS_Soldier_TL_EP1",
"TK_INS_Soldier_AA_EP1"
];

_td =
[
"olrpg_f350_ambo_untrained",
"olrpg_gmc_untrained_ambo",
"supgrade1",
"supgrade2",
"wulf",
"Bread",
"doshd",
"TreeFixer"
];
_td2 =
[
"olrpg_f350_ambo_emt1",
"olrpg_gmc_emt2_ambo",
"il_f350_brush",
"supgrade1",
"supgrade2",
"wulf",
"Bread",
"doshd",
"TreeFixer"
];
_td3 =
[
"olrpg_f350_ambo_emt2",
"olrpg_gmc_emt1_ambo",
"olrpg_2012_EMS",
"supgrade1",
"supgrade2",
"wulf",
"Bread",
"doshd",
"TreeFixer"
];
_td4 =
[
"olrpg_gmc_fire_ambo",
"firetruck",
"il_kw_tanker",
"laddertruck",
"il_f350_brush",
"supgrade1",
"supgrade2",
"wulf",
"Bread",
"doshd",
"TreeFixer"
];
_td5 =
[
"rescue",
"a2l_kme_res",
"a2l_kme",
"laddertruck2",
"supgrade1",
"supgrade2",
"wulf",
"Bread",
"doshd",
"TreeFixer"
];
_td6 =
[
"UH60M_MEV_EP1",
"yup_HH60J",
"ibr_as350",
"olrpg_coastguard_bell206",
"NVGoggles",
"wulf",
"Bread",
"doshd",
"TreeFixer"
];

_td7 =
[
"olrpg_ems_chief_cv_ptrl",
"olrpg_ems_chief",
"olrpg_ems_chief_slk",
"olrpg_firedepartment_districtchief",
"olrpg_firedepartment_districtc_slk",
"olrpg_firedepartment_sup",
"olrpg_firedepartment_lt",
"olrpg_firedepartment_lt_slk",
"olrpg_ems_supervisor",
"olrpg_ems_lt",
"olrpg_ems_lt_tahoe_slk",
"olrpg_firemarshal_hub_tahoe",
"il_silverado_pd",
"fire_atv",
"engine",
"a2l_kme_air",
"olrpg_gmc_breast_ambo",
"supgrade1",
"supgrade2",
"wulf",
"Bread",
"doshd",
"TreeFixer"
];

_td8 =
[
//"DD_DOD15Charger_U_F",
//"DD_CHE15Suburban_U_F",
"olrpg_firemarshal_hub_tahoe",
"olrpg_firemarshal_tahoe_slk",
"olrpg_2006_firemarshal_slk",
"olrpg_firemarshalf350",
"a2l_kme_res116",
"olrpg_gmc_fire_ambo",
"supgrade1",
"supgrade2",
"wulf",
"Bread",
"doshd",
"TreeFixer"
];

_rm =
[
"supgrade1",
"supgrade2",
"RepairKitsBreaksShops",
"kanister"
];

_Tow =
[
"wulf",
"Bread",
"doshd"
];

_Tow1 =
[
"tow_RepairKitsBreaksShops",
"tow_gas",
"TreeFixer",
"tow_supgrade1",
"tow_supgrade2",
"tow_supgrade3",
"caralarm"
];

_Tow2 =
[
"VIL_passat_civil",
"VIL_octavia_policeEU",
"vil_sprinter_armamb",
"flyers",
"il_towtruck",
"cl_fuel_mackr"
];

_Tow3 =
[
"VIL_passat_civil",
"VIL_octavia_policeEU",
"vil_sprinter_armamb",
"flyers",
"il_towtruck",
"cl_fuel_mackr"
];

_Tow4 =
[
"VIL_passat_civil",
"VIL_octavia_policeEU",
"vil_sprinter_armamb",
"flyers",
"il_towtruck",
"cl_fuel_mackr"
];

INV_ItemShops = [
	[OL_Shop_Undercover,				"Undercover Police Equipment",				OL_Shop_Undercover,	ccarspawnuc,			_undercover,				_undercover,				true,  "Undercover_id"],
	[OL_Shop_ClothingStore,			"Civilian Clothing Shop",							dummyobj,						dummyobj,					M_rlrpgclothing,		M_rlrpgclothing,		true,  "[getPlayerUID player]"],
	[OL_Shop_ClothingStore_1,		"Military Surplus",										dummyobj,						dummyobj,					M_rlrpgclothing_1,	M_rlrpgclothing_1,	true,  "[getPlayerUID player]"],
	[OL_Shop_ClothingStore_2,		"Tactical Military Clothing",					dummyobj,						dummyobj,					M_rlrpgclothing_2,	M_rlrpgclothing_2,	true,  "[getPlayerUID player]"],
	[OL_Shop_ClothingStore_3,		"Civilian Clothing Shop",							dummyobj,						dummyobj,					M_rlrpgclothing,		M_rlrpgclothing,		true,  "[getPlayerUID player]"],
	[OL_Shop_ClothingStore_4,		"Military Surplus",										dummyobj,						dummyobj,					M_rlrpgclothing_1,	M_rlrpgclothing_1,	true,  "[getPlayerUID player]"],
	[OL_Shop_pistol,						"Licensed Pistol",										OL_Shop_pistol,			OL_Shop_pistol,		_pistol,						_pistol,						true,  "[getPlayerUID player]"],
	[sub,												"Submachine Gun",											sub,								sub,							_sub,								_sub,								true,  "[getPlayerUID player]"],
	[rifle,											"Licensed Rifle",											rifle,							rifle,						_rifle,							_rifle,							true,  "[getPlayerUID player]"],
	[guss,											"Illegal Fire Arms",									gussbox,						dummyobj,					_guss,							_guss,							true,  "[getPlayerUID player]"],
	[txwshop,										"Tier X Weapons",											weaponx,						weaponx,					_weaponx,						_weaponx,						true,  "OL_TierX_id"],
	[txeshop,										"Tier X Equipment",										itemx,							itemx,						_itemx,							_itemx,							true,  "OL_TierX_id"],
	[carx,											"Tier X Vehicles",										carx,								carxspawn,				_carx,							_carx,							true,  "OL_TierX_id"],
	[boatx,											"Tier X Boats",												boatx,							boatxspawn,				_boatx,							_boatx,							true,  "OL_TierX_id"],
	[helix,											"Tier X Helicopters",									helix,							helixspawn,				_helix,							_helix,							true,  "OL_TierX_id"],
	[fuel2,											"Fuel-station Shop",									dummyobj,						dummyobj,					_fs,								_fs,								true,  "[getPlayerUID player]"],
	[fuel4,											"Fuel-station Shop",									dummyobj,						dummyobj,					_fs,								_fs,								true,  "[getPlayerUID player]"],
	[fuel5,											"Fuel-station Shop",									dummyobj,						dummyobj,					_fs,								_fs,								true,  "[getPlayerUID player]"],
	[fuel7,											"Fuel-station Shop",									dummyobj,						dummyobj,					_fs,								_fs,								true,  "[getPlayerUID player]"],
	[fuel8,											"Fuel-station Shop",									dummyobj,						dummyobj,					_fs,								_fs,								true,  "[getPlayerUID player]"],
	[shop1,											"Food Shop",													dummyobj,						dummyobj,					_is,								_is,								true,  "[getPlayerUID player]"],
	[shop4,											"Food Shop",													dummyobj,						dummyobj,					_is,								_is,								true,  "[getPlayerUID player]"],
	[bailflag,									"Food and Gun Locker",								dummyobj,						dummyobj,					_cf,								_cf,								true,  "[getPlayerUID player]"],
	[pub1,											"Pub",																dummyobj,						dummyobj,					_pub,								_pub,								true,  "[getPlayerUID player]"],
	[pub2,											"Pub",																dummyobj,						dummyobj,					_pub,								_pub,								true,  "[getPlayerUID player]"],
	[pub3,											"Pub",																dummyobj,						dummyobj,					_pub,								_pub,								true,  "[getPlayerUID player]"],
	[pub4,											"Pub",																dummyobj,						dummyobj,					_pub,								_pub,								true,  "[getPlayerUID player]"],
	[pub5,											"Saloon",															dummyobj,						dummyobj,					_pub,								_pub,								true,  "[getPlayerUID player]"],
	[martpub,										"Alcohol",														dummyobj,						dummyobj,					_pub,								_pub,								true,  "[getPlayerUID player]"],
	[assassinshop,							"Assassin Shop",											assassinshop,				dummyobj,					_ass,								_ass,								true,  "[getPlayerUID player]"],
	[mayorguns,									"Government Equip Shop",							mayorguns,					mayorcarspawn,		_mgs,								_mgs,								true,  "[getPlayerUID player]"],
	[equipbox,									"Equipment Shop",											equipbox,						dummyobj,					_es,								_es,								true,  "[getPlayerUID player]"],
	[equipbox2,									"Equipment Shop",											equipbox2,					dummyobj,					_es,								_es,								true,  "[getPlayerUID player]"],
	[tuning1,										"Car Upgrades",												dummyobj,						dummyobj,					_cu,								_cu,								true,  "[getPlayerUID player]"],
	[rMart,											"Car Items",													dummyobj,						dummyobj,					_rm,								_rm,								true,  "[getPlayerUID player]"],
	[carshop1,									"Used Cars",													dummyobj,						carspawn1,				_cs1,								_cs1,								true,  "[getPlayerUID player]"],
	[carshop4,									"Used Cars",													dummyobj,						carspawn4,				_cs1,								_cs1,								true,  "[getPlayerUID player]"],
	[carshop2,									"Farm Equipment",											dummyobj,						carspawn2,				_cs2,								_cs2,								false, "[getPlayerUID player]"],
	[scarshop,									"Muscle Car Shop",										dummyobj,						scarspawn1,				_sc1,								_sc1,								true,  "[getPlayerUID player]"],
	[scarshop2,									"Charger and Mazda",									dummyobj,						scarspawn2,				_sc2,								_sc2,								true,  "[getPlayerUID player]"],
	[scarshop3,									"Low End Sports",											dummyobj,						scarspawn3,				_sc3,								_sc3,								true,  "[getPlayerUID player]"],
	[scarshop4,									"Mid Level Sports",										dummyobj,						scarspawn4,				_sc4,								_sc4,								true,  "[getPlayerUID player]"],
	[scarshop5,									"High End Sports",										dummyobj,						scarspawn5,				_sc5,								_sc5,								true,  "[getPlayerUID player]"],
	[scarshop6,									"Nissan Car Shop",										dummyobj,						scarspawn6,				_sc6,								_sc6,								true,  "[getPlayerUID player]"],
	[scarshop7,									"350z Car Shop",											dummyobj,						scarspawn7,				_sc7,								_sc7,								true,  "[getPlayerUID player]"],
	[scarshop8,									"Ford Car Shop",											dummyobj,						scarspawn8,				_sc8,								_sc8,								true,  "[getPlayerUID player]"],
	[scarshop9,									"BMW Car Shop",												dummyobj,						scarspawn9,				_sc9,								_sc9,								true,  "[getPlayerUID player]"],
	[tahoeshop1,								"Tahoe Shop",													dummyobj,						tahoespawn1,			_tahoe,							_tahoe,							true,  "[getPlayerUID player]"],
	[pickupshop1,								"Pickup Shop",												dummyobj,						pickupspawn1,			_ps,								_ps,								true,  "[getPlayerUID player]"],
	[taxishop,									"Taxi Shop",													dummyobj,						taxispawn1,				_tx,								_tx,								true,  "[getPlayerUID player]"],
	[bicycleshop,								"Bicycle Shop",												dummyobj,						bicyclespawn,			_bsj,								_bsj,								true,  "[getPlayerUID player]"],
	[bikeshop,									"Mikes Bike Shop",										dummyobj,						bikespawn,				_mbs,								_mbs,								true,  "[getPlayerUID player]"],
	[bikeshop1,									"Quad Bike Shop",											dummyobj,						bikespawn1,				_qbs,								_qbs,								true,  "[getPlayerUID player]"],
	[bikeshop2,									"Sports Bike Shop",										dummyobj,						bikespawn1,				_qbss,							_qbss,							true,  "[getPlayerUID player]"],
	[truckshop,									"Truck and Bus Shop",									dummyobj,						truckspawn,				_ts,								_ts,								true,  "[getPlayerUID player]"],
	[struckshop,								"Sport Truck Shop",										dummyobj,						struckspawn,			_sts,								_sts,								true,  "[getPlayerUID player]"],
	[airshop,										"Airplane Shop",											dummyobj,						asairspawn,				_as,								_as,								true,  "[getPlayerUID player]"],
	[airshop2,									"Chopper and Jet Shop",								dummyobj,						asairspawn,				_assa,							_assa,							true,  "[getPlayerUID player]"],
	[airshop3,									"Commercial Air Shop",								dummyobj,						asairspawn,				_asc,								_asc,								true,  "[getPlayerUID player]"],
	[AFP,												"Dem Airoplanes Store",								dummyobj,						AFPspawn,					_as,								_as,								true,  "[getPlayerUID player]"],
	[AFH,												"Dem Helamacopters Store",						dummyobj,						AFHspawn,					_assa,							_assa,							true,  "[getPlayerUID player]"],
	[scubashop, 								"Boat Shop",													dummyobj,						bs1spawn,					_bs,								_bs, 								true,  "[getPlayerUID player]"],
	[boatshop2, 								"Boat Shop",													dummyobj,						boatspawn2,				_bs,								_bs, 								true,  "[getPlayerUID player]"],
	[insure,										"Insurance",													insure,							dummyobj,					_ins, 							_emptyshop,					false, "[getPlayerUID player]"],
	[tdoc,											"FireFighter 1",											dummyobj,						tdocspawn,				_td4,								_td4,								true,  "EMT3_id"],
	[tdoc6sub,									"FireFighter 1",											dummyobj,						tdocspawnsub,			_td4,								_td4,								true,  "EMT3_id"],
	[tdoc2,											"Untrained Equipment",								dummyobj,						tdocspawn,				_td,								_td,								true,  "[getPlayerUID player]"],
	[tdoc2sub,									"Untrained Equipment",								dummyobj,						tdocspawnsub,			_td,								_td,								true,  "[getPlayerUID player]"],
	[tdoc3,											"EMT 1 Equipment",										dummyobj,						tdocspawn,				_td2,								_td2,								true,  "EMT1_id"],
	[tdoc3sub,									"EMT 1 Equipment",										dummyobj,						tdocspawnsub,			_td2,								_td2,								true,  "EMT1_id"],
	[tdoc4,											"FireFighter 2",											dummyobj,						tdocspawn,				_td5,								_td5,								true,  "FD_id"],
	[tdoc4sub,									"FireFighter 2",											dummyobj,						tdocspawnsub,			_td5,								_td5,								true,  "FD_id"],
	[tdoc5,											"Air Rescue Equipment",								tdoc5,							jailpad2_1,				_td6,								_td6,								true,  "ESUAviation_id"],
	[tdoc5sub,									"Air Rescue Equipment",								tdoc5sub,						tdocspawnsubair,	_td6,								_td6,								true,  "ESUAviation_id"],
	[tdoc6,											"Command Equipment",									dummyobj,						tdocspawn,				_td7,								_td7,								true,  "ESUCommand_id"],
	[tdocsub,										"Command Equipment",									dummyobj,						tdocspawnsub,			_td7,								_td7,								true,  "ESUCommand_id"],
	[tdoc7,											"EMT 2 Equipment",										dummyobj,						tdocspawn,				_td3,								_td3,								true,  "EMT2_id"],
	[tdoc7sub,									"EMT 2 Equipment",										dummyobj,						tdocspawnsub,			_td3,								_td3,								true,  "EMT2_id"],
	[tdoc8,											"Fire Marshal Equipment",							dummyobj,						tdocspawn,				_td8,								_td8,								true,  "FD_id"],
	[resourcesell,							"Sell Resources",											dummyobj,						dummyobj,					_rs,								_rs,								true,  "[getPlayerUID player]"],
	[OL_Shop_Wigsworth,					"Wigworths",													dummyobj,						dummyobj,					_wigs,							_wigs,							true,  "[getPlayerUID player]"],
	[OilSell1,									"Oil Dealer", 												dummyobj,						dummyobj, 				_emptyshop,					_os,								true,  "[getPlayerUID player]"],
	[whalesell,									"Sell Whale",													dummyobj,						dummyobj,					_emptyshop,					_ws,								true,  "[getPlayerUID player]"],
	[terrorbox,									"Terror Stuff",												terrorbox,					vipterroraswpawn,	_terrorshop,				_terrorshop,				true,  "[getPlayerUID player]"],
	[shadyd,										"Barely Legal",												shadyd,							dummyobj, 				_shady,							_shady,							true,  "[getPlayerUID player]"],
	[OL_Shop_Gangarea1,					"Gang Shop",													gangbox1,						dummyobj,					_gangshop_buy,			_gangshop_buy,			true,  "[getPlayerUID player]"],
	[OL_Shop_Gangarea2,					"Gang Shop",													gangbox2,						dummyobj,					_gangshop_buy,			_gangshop_buy,			true,  "[getPlayerUID player]"],
	[OL_Shop_Gangarea3,					"Gang Shop",													gangbox3,						dummyobj,					_gangshop_buy,			_gangshop_buy,			true,  "[getPlayerUID player]"],
	[OL_Shop_Gangarea4,					"Gang Shop",													gangbox4,						dummyobj,					_gangshop_buy,			_gangshop_buy,			true,  "[getPlayerUID player]"],
	[cdrugsell,									"Sell Cocaine",												dummyobj,						dummyobj,					_dsc,								_dsc,								true,  "[getPlayerUID player]"],
	[mdrugsell,									"Sell Marijuana",											dummyobj,						dummyobj,					_dsm,								_dsm,								true,  "[getPlayerUID player]"],
	[ldrugsell,									"Sell LSD",														dummyobj,						dummyobj,					_emptyshop,					_dsl,								true,  "[getPlayerUID player]"],
	[hdrugsell,									"Sell Heroin",												dummyobj,						dummyobj,					_dsh,								_dsh,								true,  "[getPlayerUID player]"],
	[methsell,									"Sell Meth",													dummyobj,						dummyobj,					_msc,								_msc,								true,  "[getPlayerUID player]"],
	[pharmacy,									"Pharmacy",														dummyobj,						pharmspawn,				_psc,								_emptyshop,					false, "[getPlayerUID player]"],
	[copbasic1,									"Basic Police Gear",									copbasic1,					ccarspawn, 				_copbasic,					_copbasic,					true,  "[getPlayerUID player]"],
	[copbasic2,									"Basic Police Gear",									copbasic2,					ccarspawn, 				_copbasic,					_copbasic,					true,  "[getPlayerUID player]"],
	[copbasic4,									"Basic Police Gear",									copbasic4,					ccarspawn, 				_copbasic,					_copbasic,					true,  "[getPlayerUID player]"],
	[copbasic6,									"Basic Police Gear",									copbasic6,					ccarspawn1, 			_copbasic,					_copbasic,					true,  "[getPlayerUID player]"],
	[copswate,									"Basic Police Gear",									copswate,						dummyobj, 				_copbasic,					_copbasic,					true,  "[getPlayerUID player]"],
	[copuntrained,							"Untrained Patrol Officer Equipment",	copuntrained,				ccarspawn,				_copuntrained,			_copuntrained,			true,  "[getPlayerUID player]"],
	[coppo1,										"Rookie Patrol Officer Equipment",		coppo1,							ccarspawn,				_coppo1,						_coppo1,						true,  "PO1_id"],
	[coppo2,										"Patrol Officer Equipment",						coppo2,							ccarspawn,				_coppo2,						_coppo2,						true,  "PO2_id"],
	[coppo3,										"Senior Patrol Officer Equipment",		coppo3,							ccarspawn,				_coppo3,						_coppo3,						true,  "PO3_id"],
	[copcpl,										"Corporal Equipment",									copcpl,							ccarspawn2,				_copcpl,						_copcpl,						true,  "Cpl_id"],
	[copsgt,										"Sergeant Equipment",									copsgt,							ccarspawn2,				_copsgt,						_copsgt,						true,  "Sgt_id"],
	[copdeputy,									"Sheriff Deputy Equipment",						copdeputy,					ccarspawn1,				_copdeputy,					_copdeputy,					true,  "Deputy_id"],
	[copsgtdeputy,							"Sheriff Sgt Deputy Equipment",				copsgtdeputy,				ccarspawn1,				_copsgtdeputy,			_copsgtdeputy,			true,  "SgtDeputy_id"],
	[copsheriffdnr,							"Sheriff D.N.R",											copsheriffdnr,			ccarspawn1,				_copsheriffdnr,			_copsheriffdnr,			true,  "Deputy_id"],
	[copsheriffmks,							"Sheriff Marksman",										copsheriffmks,			dummyobj,					_copsheriffmks,			_copsheriffmks,			true,  "Deputy_id"],
	[copsheriff,								"Sheriff Equipment",									copsheriff,					ccarspawn1,				_copsheriff,				_copsgt,						true,  "Deputy_id"],
	[coplt,											"Lieutenant Equipment",								coplt,							ccarspawnlt,			_coplt,							_coplt,							true,  "Lt_id"],
	[copcpt,										"Captain Equipment",									copcpt,							ccarspawncpt,			_copcpt,						_copcpt,						true,  "Cpt_id"],
	[copmedalbox,								"Medal Recipients Equipment",					copmedalbox,				ccarspawnchief,		_copmedal,					_copmedal,					true,  "Medal_id"],
	[copchief,									"Chief of Police Equipment",					copchief,						ccarspawnchief,		_copchief,					_copchief,					true,  "Chief_id"],
	[copk9,											"K-9 Officer",												copk9,							ck9spawn,					_copk9,							_copk9,							true,  "K9_id"],
	[copk9p,										"K-9 Probation",											copk9p,							ck9spawn,					_copk9p,						_copk9p,						true,  "K9_id"],
	[copk9c,										"K-9 Command",												copk9c,							ck9spawn,					_copk9c,						_copk9c,						true,  "K9_id"],
	[copk92,										"Sheriff K-9 Equipment",							copk92,							ccarspawn1,				_copk9sheriff,			_copk9sheriff,			true,  "K9_id"],
	[copav1,										"Aviation",														copav1, 						cairspawn,				_copav1,						_copav1,						true,  "PDAviation_id"],
	[copav2,										"Operation Pilot",										copav2, 						cairspawn,				_copav2,						_copav2,						true,  "PDAviation_id"],
	[copav3,										"Air Patrol Operations",							dummyobj, 					copavapo,					_copav3,						_copav3,						true,  "PDAviation_id"],
	[copair2,										"Sheriff Aviation",										copairweapon2, 			airsheriff,				_copavsh,						_copavsh,						true,  "PDAviation_id"],
	[copswat1,									"S.W.A.T. Probation",									copswat1,						dummyobj,					_copswat1,					_copswat1,					true,  "SWAT_id"],
	[copswat2,									"S.W.A.T. Operator",									copswat2,						dummyobj,					_copswat2,					_copswat2,					true,  "SWAT_id"],
	[copswat3,									"S.W.A.T. Specialist",								copswat3,						dummyobj,					_copswat3,					_copswat3,					true,  "SWAT_id"],
	[copswat4,									"S.W.A.T. Marksman",									copswat4,						dummyobj,					_copswat4,					_copswat4,					true,  "SWAT_id"],
	[copswat5,									"S.W.A.T. Command",										copswat5,						dummyobj,					_copswat5,					_copswat5,					true,  "SWAT_id"],
	[swatcg,										"S.W.A.T. Water Craft",								dummyobj,						cgboatspawn,			_copswat6,					_copswat6,					true,  "SWAT_id"],
	[copswatvehicle,						"S.W.A.T. Vehicles",									dummyobj,						ccarspawnswat,		_copswatvehicle,		_copswatvehicle,		true,  "SWAT_id"],
	[cidbox,										"CID Equipment",											cidbox,							cidcarspawn,			_cid,								_cid,								true,  "Undercover_id"],
	[copcoastguard,							"Sheriff Marine Water Craft",					dummyobj,						cgboatspawn,			_copcoastguard,			_copcoastguard,			true,  "Coastguard_id"],
	[copcoastguardair,					"Sheriff Marine Aviation",						dummyobj,						jailpadcg,				_copcoastguardair,	_copcoastguardair,	true,  "Coastguard_id"],
	[ftobox,										"F.T.O Equipment",										ftobox,							ftocarspawn,			_copfto,						_copfto,						true,  "FTO_id"],
	[copVIPBox,									"Cop Donator Equipment",							copVIPBox,					ccarspawn,				_copvip,						_copvip,						true,  "Donate_id"],
	[copVIPBox2,								"Cop Donator Equipment",							copVIPBox2,					ccarspawn1,				_copvip,						_copvip,						true,  "Donate_id"],
	[copVIPBox3,								"Cop Donator Equipment",							copVIPBox3,					ccarspawn2,				_copvip,						_copvip,						true,  "Donate_id"],
	[copswatd,									"Cop Donator Equipment",							copswatd,						ccarspawn2,				_copvip,						_copvip,						true,  "Donate_id"],
	[copcidd,										"Cop Donator Equipment",							copcidd,						cidcarspawn,			_copvip,						_copvip,						true,  "Donate_id"],
	[dshop1,										"Donator Shop (Tier 1)",							maindonateshop,			dummyobj,					_Donate,						_Donate,						true,  "Donate_id"],
	[dshop2,										"Donator Shop (Tier 2)",							donateshop2,				donatespawn2,			_Donate2,						_Donate2,						true,  "Donate2_id"],
	[dshop3,										"Donator Shop (Tier 3)",							donateshop3,				donatespawn3,			_Donate3,						_Donate3,						true,  "Donate3_id"],
	[dshop4,										"Donator Shop (Tier 4)",							donateshop4,				donatespawn4,			_Donate4,						_Donate4,						true,  "Donate4_id"],
	[dshop5,										"Donator Shop (Tier 5)",							donateshop5,				dummyobj,					_Donate5,						_Donate5,						true,  "Donate5_id"],
	[dshop6,										"Donator Shop (Tier 6)",							donateshop6,				dummyobj,					_Donate6,						_Donate6,						true,  "Donate6_id"],
	[terrorvip,									"Terror VIP Shop",										terrorvip,					vipterroraswpawn,	_VIPterror,					_VIPterror,					true,  "Donate_id"],
	[Diamond_1,									"Pawn Shop",													dummyobj,						dummyobj,					_js,								_js,								true,  "[getPlayerUID player]"],
	[vipterrorair,							"VIP Terror Air Shop",								vipterrorair,				vipterroraswpawn,	_vipterrorairlist,	_vipterrorairlist,	true,  "Donate_id"],
	[hospsell,									"Sell Organs",												dummyobj,						dummyobj,					_hsc,								_hsc,								true,  "[getPlayerUID player]"],
	[pmcbox,										"PMC Operator",												pmcbox,							pmcspawn,					_PMC,								_PMC,								true,  "PMC_id"],
	[pmcbox1,										"PMC Command",												pmcbox1,						pmcspawn,					_CommandPMC,				_CommandPMC,				true,  "PMCCommand_id"],
	[pmcbox2,										"PMC Air",														dummyobj,						pmchelipad,				_PMCAIR,						_PMCAIR,						true,  "PMC_id"],
	[towfoodshop,								"Flyer's Vending Machine",						dummyobj,						dummyobj,					_Tow,								_Tow,								true,  "Tow_id"],
	[tow_box,										"Parts Box",													dummyobj,						dummyobj,					_Tow1,							_Tow1,							true,  "Tow_id"],
	[towcarshop,								"Junior Mechanic",										dummyobj,						tow_spawn,				_Tow2,							_Tow2,							true,  "Tow_id"],
	[towcarshop_1,							"Senior Supervisor",									dummyobj,						tow_spawn,				_Tow3,							_Tow3,							true,  "Tow_id"],
	[towcarshop_2,							"Mechanic Supervisor",								dummyobj,						tow_spawn,				_Tow4,							_Tow4,							true,  "Tow_id"]
];

{
	missionNamespace setVariable [format ["OL_SA_%1", _x select 0], _x]
} forEach INV_ItemShops;

OL_shops_getArray = {
	missionNamespace getVariable ["OL_SA_%1", _this]
};
