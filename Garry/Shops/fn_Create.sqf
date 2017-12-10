//AIDS
INV_itemstocks = [-1];
INV_itemmaxstocks = [-1];

//Shop items
_emptyshop = [];

//Fuel Shop
_fs = [
	"kanister",														//Gas Can
	"Fuelline",														//Syphon Fuelkit
	"RepairKitsBreaksShops",							//Repair Kit
	"tcgmp",															//TheGamingChief's Moon Pie
	"doshd",															//Wolf's Meaty Hot Dog
	"gdar",																//Vanilla Ice Cream
	"bjerk",															//Bryce Beef Jerky
	"wulf"																//Wulf Energy Drink
];

//Item Shop
_is = [
	"apple",															//Apple
	"straw",															//Pumpkin
	"getreide",														//Wheat
	"blowfish",														//Blowfish
	"mackerel",														//Mackerel
	"herring",														//Herring
	"perch",															//Perch
	"trout",															//Trout
	"walleye",														//Walleye
	"bass",																//Bass
	"boar",																//Boar Meat
	"lighter"															//Lighter
];

//Market Export
_export = [
	"apple",															//Apple
	"straw",															//Pumpkin
	"getreide",														//Wheat
	"blowfish",														//Blowfish
	"mackerel",														//Mackerel
	"herring",														//Herring
	"perch",															//Perch
	"trout",															//Trout
	"walleye",														//Walleye
	"bass",																//Bass
	"boar",																//Boar Meat
	"cowmeat"															//Cow Meat
];

//Copbasefood
_cf = [
	"wulf",																//Wulf Energy Drink
	"bjerk",															//Bryce Beef Jerky
	"tcgmp",															//TheGamingChief's Moon Pie
	"doshd"																//Wolf's Meaty Hot Dog
];

//Alcohol shop
_pub = [
	"beer",																//Coors Light
	"beer2",															//Guinness
	"vodka",															//Vodka
	"smirnoff",														//Smirnoff ICE
	"wiskey",															//Jack Daniels
	"wine",																//White Wine
	"wine2"																//Red Wine
];

//Assasin Shop
_ass = [
	"RH_m9sd",														//M9 Silenced
	"15Rnd_9x19_M9SD",										//M9 Silenced Mag
	"RH_g17sd",														//Glock17 Silenced
	"RH_17Rnd_9x19_g17SD",								//Glock Silenced Mag
	"RH_m1911sd",													//1911 Silenced
	"RH_8Rnd_45cal_m1911",								//Kimber M1911 Magazine
	"RH_mk22sd",													//MK Silenced
	"RH_8Rnd_9x19_Mksd",									//MK Silenced Mag
	"RH_uzisd",														//Uzi Silenced
	"RH_9mm_32RND_SD_Mag",								//Uzi Silenced Mag
	"RH_mp5sd6eot_ass",										//MP5SD6 Eotech
	"30rnd_9x19_MP5SD",										//30Rnd 9mm MP5 SD Mag
	"RH_mp7sd_ass",												//K MP-7 Silenced
	"RH_mp7sdaim_ass",										//HK MP-7 Silenced CCO
	"RH_mp7sdeot_ass",										//HK MP-7 Silenced Holo
	"RH_46x30mm_40RND_SD_Mag",						//MP7 SD Mag
	"RH_mk12mod1sd_ass",									//Mk12 Mod1 SD SPR
	"20Rnd_556x45_Stanag",								//20Rnd AR-15 and HK416 Magazine
	"C1987_P99_black_sd",									//P99 SD
	"15Rnd_9x19_p99_sd"										//P99 15Rnd SD Mag
];

//Gov Shop
_mgs = [
	"RH_mk22",														//Mk22
	"RH_8Rnd_9x19_Mk",										//9mm Mk22 8rd Mag
	"KPFS_MP2",														//MP2
	"KPFS_32Rnd_MP2",											//32Rnd MP2 Mag
	"RH_muzi",														//Micro Uzi
	"RH_32rnd_9x19_Muzi",									//32rd Micro Uzi Mag
	"RH_uzi",															//Uzi
	"RH_9mm_32RND_Mag",										//32rd 9mm Mag
	"RH_tmpeot",													//TMP EOT
	"30Rnd_9x19_MP5",											//30Rnd 9mm Ammo
	"RH_fmg9",														//fmg9
	"RH_9mm_32RND_Mag",										//32rd 9mm Mag
	"GPS",																//GPS
	"NVGoggles",													//NVGoggles
	"CHRYSLER_B_limmo",										//Armored Black Limo
	"tcg_taurus_security",								//Taurus Security
	"ilpd_ags_cvpi"												//CV Security
];

//Equiptment shop
_es = [
	"Binocular",													//Binocular
	"GPS",																//GPS
	"NVGoggles",													//NVGoggles
	"hideout",														//Hideout
	"fishingpole",												//Fishing Pole
	"bunnyhop",														//Bunny-Hop (Bike Only)
	"caralarm",														//OnStar Car Alarm
	"drill",															//StrongArm MiniRig Drill
	"TreeFixer"														//Tree Fixer
];

//Wigswrorth
_cu = [
	"supgrade1",													//Shocks 1
	"supgrade2",													//Fuel Injection 2
	"supgrade3",													//Violator 3
	"supgrade4",													//Interceptor 4
	"supgrade5",													//Fast And Furious 5
	"caralarm"														//OnStar Car Alarm
];

//Used Car Dealer
_cs1 = [
	"MMT_USMC",														//Mountain Bike
	"Volha_1_TK_CIV_EP1",									//Vohla Blue
	"S1203_TK_CIV_EP1",										//S1203 Van
	"civic",															//Honda Civic
	"Car_hatchback",											//Hatchback
	"VWGolf",															//Volkswagen Golf
	"Car_Sedan",													//Sedan
	"SkodaBlue",													//Blue Skoda
	"Skodared",														//Red Skoda
	"lada1",															//VAZ (White)
	"lada2",															//VAZ (Red)
	"LandRover_TK_CIV_EP1",								//LandRover
	"datsun1_civil_3_open",								//Pick-Up (Tube frame)
	"UAZ_Unarmed_TK_CIV_EP1",							//Old UAZ
	"oldtruck",														//GMC Fleetliner
	"oltruc3",														//1977 F-250 Pickup
	"Tractor"															//Tractor
];

//Farm Shop
_cs2 = [
	"MMT_USMC",														//Bicycle
	"tractor",														//Tractor
	"oldtruc2",														//Farm Truck
	"oldtruc2a"														//Farm Truck Wooden
];

//Muscle Car Dealer
_sc1 = [
	"440cuda",														//440 Cuda
	"roadrunner",													//Green Road Runner
	"roadrunner2",												//Yellow Road Runner
	"CHEVROLET_CAMARO_SS_396",						//Chevrolet Camaro SS 396
	"chevrolet_chevelle",									//Chevrolet Chevelle
	"cuda",																//70 Plymouth Hemi
	"hemicuda",														//70 Hemicuda
	"cd71hm",															//Plymouth Hemicuda
	"barcuda",														//Plymouth Barracuda
	"fury",																//Fury
	"FORD_MUSTANG_SHELBY_COBRA",					//Black Mustang Shelby Cobra
	"FORD_MUSTANG_SHELBY_COBRA1",					//Blue Mustang Shelby Cobra
	"FORD_MUSTANG_SHELBY_COBRA2",					//Green Mustang Shelby Cobra
	"FORD_MUSTANG_SHELBY_COBRA3",					//Red Mustang Shelby Cobra
	"FORD_GT",														//Ford GT
	"monaco_grey",												//Monaco Grey
	"monaco_blue",												//Monaco Blue
	"monaco_white",												//Monaco White
	"monaco_green",												//Monaco Green
	"monaco_red",													//Monaco Red
	"challenger_grey",										//Challenger Grey
	"challenger_blue",										//Challenger Blue
	"challenger_yellow",									//Challenger Yellow
	"challenger_pink",										//Challenger Pink
	"challenger_white",										//Challenger White
	"challenger_green",										//Challenger Green
	"challenger_red",											//Challenger Red
	"challenger_orange"										//Challenger Orange
];

//Charger Shop
_sc2 = [
	"DD_DOD12Charger_Black",							//2012 Dodge Charger (Black)
	"DD_DOD12Charger_Blue",								//2012 Dodge Charger (Blue)
	"DD_DOD12Charger_Camo",								//2012 Dodge Charger (Camo)
	"DD_DOD12Charger_DarkGreen",					//2012 Dodge Charger (Dark Green)
	"DD_DOD12Charger_DarkRed",						//2012 Dodge Charger (Dark Red)
	"DD_DOD12Charger_Green",							//2012 Dodge Charger (Green)
	"DD_DOD12Charger_Orange",							//2012 Dodge Charger (Orange)
	"DD_DOD12Charger_Red",								//2012 Dodge Charger (Red)
	"DD_DOD12Charger_UrbanCamo",					//2012 Dodge Charger (Urban Camo)
	"DD_DOD12Charger_White",							//2012 Dodge Charger (White)
	"DD_DOD12Charger_Yellow",							//2012 Dodge Charger (Yellow)
	"DD_DOD15Charger_Black",							//2015 Dodge Charger (Black)
	"DD_DOD15Charger_Blue",								//2015 Dodge Charger (Blue)
	"DD_DOD15Charger_Camo",								//2015 Dodge Charger (Camo)
	"DD_DOD15Charger_DarkGreen",					//2015 Dodge Charger (Dark Green)
	"DD_DOD15Charger_DarkRed",						//2015 Dodge Charger (Dark Red)
	"DD_DOD15Charger_Green",							//2015 Dodge Charger (Green)
	"DD_DOD15Charger_Orange",							//2015 Dodge Charger (Orange)
	"DD_DOD15Charger_Red",								//2015 Dodge Charger (Red)
	"DD_DOD15Charger_UrbanCamo",					//2015 Dodge Charger (Urban Camo)
	"DD_DOD15Charger_White",							//2015 Dodge Charger (White)
	"DD_DOD15Charger_Yellow",							//2015 Dodge Charger (Yellow)
	"MAZDA_RX_7",													//Black MAZDA RX7
	"MAZDA_RX_71",												//Blue MAZDA RX7
	"MAZDA_RX_72",												//Green MAZDA RX7
	"MAZDA_RX_73",												//Grey MAZDA RX7
	"MAZDA_RX_75",												//Purple MAZDA RX7
	"MAZDA_RX_74",												//Red MAZDA RX7
	"MAZDA_MAZDASPEED_3"									//Mazda Speed 3
];

//Mid End
_sc3 = [
	"CHRYSLER_300",												//CHRYSLER 300
	"RENAULT_CLIO_SPORT_V6",							//Renault Clio Sport V6
	"SUBARU_IMPREZA_WRX_STI_AWD",					//Subaru Impreza WRX STI AWD
	"SUBARU_IMPREZA_STI_AWD",							//Subaru Impreza STI AWD
	"FIAT_PUNTO",													//Fiat Punto
	"ALFA_ROMEO_BRERA",										//Alfa Romeo Brera
	"NISSAN_240SX_SE",										//NISSAN 240SX SE
	"PONTIAC_GTO_6"												//Pontiac GTO
];

//Also Mid End in Bank Town
_sc4 = [
	"MustangGTRyellow_MLOD",							//Mustang GTR Lime
	"Convertible_MLOD",										//Mustang Convert
	"FORD_SHELBY_GT",											//Ford Shelby GT
	"CORVETTE_Z06",												//Chevrolet Corvette Z06
	"INFINITI_G35",												//Infiniti G35
	"MERCEDES_BENZ_CLK_500",							//Mercedes Benz CLK 500
	"MERCEDES_BENZ_SL_65_AMG",						//Mercedes Benz SL 65 AMG
	"JAGUAR_XK",													//Jaguar XK
	"CADILLAC_CTS",												//Black CADILLAC
	"VIL_smart_civil",										//Hello Kitty Smart Car
	"VIL_smart_civil1"										//Blue Smart Car
];

//High End Sports Dealer
_sc5 = [
	"DD_MCL13P1_Black",										//2013 McLaren (Black)
	"DD_MCL13P1_Blue",										//2013 McLaren (Blue)
	"DD_MCL13P1_Camo",										//2013 McLaren (Camo)
	"DD_MCL13P1_DarkGreen",								//2013 McLaren (Dark Green)
	"DD_MCL13P1_DarkRed",									//2013 McLaren (Dark Red)
	"DD_MCL13P1_Green",										//2013 McLaren (Green)
	"DD_MCL13P1_Orange",									//2013 McLaren (Orange)
	"DD_MCL13P1_Red",											//2013 McLaren (Red)
	"DD_MCL13P1_UrbanCamo",								//2013 McLaren (Urban Camo)
	"DD_MCL13P1_White",										//2013 McLaren (White)
	"DD_MCL13P1_Yellow",									//2013 McLaren (Yellow)
	"CL_PORSCHE_997",											//Porshe 997
	"CL_LAMBORGHINI_GT3",									//Racing Lamborghini
	"KOENIGSEGG_CCX",											//Blue KOENIGSEGG
	"KOENIGSEGG_CCX1",										//Green KOENIGSEGG
	"KOENIGSEGG_CCX2",										//Orange KOENIGSEGG
	"KOENIGSEGG_CCX3",										//Red KOENIGSEGG
	"MCLAREN_F1",													//McLaren F1
	"MERCEDES_BENZ_SLR",									//Mercedes Benz SLR
	"PORSCHE_997_GT3_RSR",								//Porche 997 GT3
	"PORSCHE_911_TURBO",									//Porsche 911 Turbo
	"PORSCHE_911_GT3_RS",									//Porsche 911 GT3 RS
	"LAMBORGHINI_MURCIELAGO",							//Lamborghini Murcielago
	"LAMBORGHINI_REVENTON",								//Lamborghini Reventon
	"LAMBORGHINI_GALLARDO",								//Lamborghini Gallardo
	"MASERATI_MC12",											//Maserati MC12
	"JAGUAR_XK",													//Jaguar XK
	"BUGATTI_VEYRON",											//Bugatti Veyron
	"AUDI_TT_QUATTRO_S_LINE",							//Audi TT Quattro
	"AUDI_FSI_LE_MANS",										//Audi FSI Le Lans
	"PAGANI_ZONDA_F",											//Pagani Zonda F
	"ASTON_MARTIN_DB9"										//Aston Martin DB9
];

//Nissan Dealer
_sc6 = [
	"NISSAN_GTR_SPECV",										//Nissan GTR Black
	"NISSAN_GTR_SPECV1",									//Nissan GTR Green
	"NISSAN_GTR_SPECV2",									//Nissan GTR Red
	"NISSAN_GTR_SPECV3",									//Nissan GTR Spider
	"NISSAN_350Z",												//Nissan 350Z
	"NISSAN_370Z",												//Black Nissan 370Z
	"NISSAN_370Z1",												//Blue Nissan 370Z
	"NISSAN_370Z2",												//Flame Nissan 370Z
	"NISSAN_370Z3",												//Green Nissan 370Z
	"NISSAN_370Z4",												//Red Nissan 370Z
	"NISSAN_SKYLINE_GT_R_Z",							//Nissan Skyline GTR Blue
	"NISSAN_SKYLINE_GT_R_Z1",							//Nissan Skyline GTR Green
	"NISSAN_SKYLINE_GT_R_Z2",							//Nissan Skyline GTR Red
	"NISSAN_SKYLINE_GT_R_Z3"							//Nissan Skyline GTR Army
];

//350z Dealer
_sc7 = [
	"350z_red",														//350Z Red
	"350z_kiwi",													//350Z Kiwi
	"350z_black",													//350Z Black
	"350z_silver",												//350Z Silver
	"350z_green",													//350Z Green
	"350z_blue",													//350Z Blue"
	"350z_gold",													//350Z Gold
	"350z_white",													//350Z White
	"350z_pink",													//350Z Pink
	"350z_mod",														//350Z Mod
	"350z_ruben",													//350Z Ruben
	"350z_v",															//350Z V
	"350z_yellow"													//350z_yellow
];

//Ford Dealer
_sc8 =
[
	"DD_FOR13Mustang_Black",							//2013 Ford Mustang (Black)
	"DD_FOR13Mustang_Blue",								//2013 Ford Mustang (Blue)
	"DD_FOR13Mustang_Camo",								//2013 Ford Mustang (Camo)
	"DD_FOR13Mustang_DarkGreen",					//2013 Ford Mustang (Dark Green)
	"DD_FOR13Mustang_DarkRed",						//2013 Ford Mustang (Dark Red)
	"DD_FOR13Mustang_Green",							//2013 Ford Mustang (Green)
	"DD_FOR13Mustang_Orange",							//2013 Ford Mustang (Orange)
	"DD_FOR13Mustang_Red",								//2013 Ford Mustang (Red)
	"DD_FOR13Mustang_UrbanCamo",					//2013 Ford Mustang (Urban Camo)
	"DD_FOR13Mustang_White",							//2013 Ford Mustang (White)
	"DD_FOR13Mustang_Yellow",							//2013 Ford Mustang (Yellow)
	"tcg_taurus_civ1",										//Taurus Purple
	"tcg_taurus_civ2",										//Taurus Black
	"tcg_taurus_civ3",										//Taurus Spec
	"tcg_taurus_civ4",										//Taurus Grey
	"tcg_taurus_civ5",										//Taurus Blue
	"tcg_taurus_civ6",										//Taurus Red
	"il_fordcv_white",										//Crown Victoria (White)
	"il_fordcv_grey",											//Crown Victoria (Grey)
	"il_fordcv_black",										//Crown Victoria (Black)
	"il_fordcv_darkblue",									//Crown Victoria (Dark Blue)
	"il_fordcv_maroon",										//Crown Victoria (Maroon)
	"il_fordcv_sandstone",								//Crown Victoria (Sandstone)
	"DD_CHE10Impala_Black",								//Impala SS 2010 (Black)
	"DD_CHE10Impala_Blue",								//Impala SS 2010 (Blue)
	"DD_CHE10Impala_Camo",								//Impala SS 2010 (Camo)
	"DD_CHE10Impala_DarkGreen",						//Impala SS 2010 (Dark Green)
	"DD_CHE10Impala_DarkRed",							//Impala SS 2010 (Dark Red)
	"DD_CHE10Impala_Green",								//Impala SS 2010 (Green)
	"DD_CHE10Impala_Orange",							//Impala SS 2010 (Orange)
	"DD_CHE10Impala_Red",									//Impala SS 2010 (Red)
	"DD_CHE10Impala_UrbanCamo",						//Impala SS 2010 (Urban Camo)
	"DD_CHE10Impala_White",								//Impala SS 2010 (White)
	"DD_CHE10Impala_Yellow"								//Impala SS 2010 (Yellow)
];

//BMW Dealer
_sc9 = [
	"DD_BMWM5_Black",											// BMW M5 (Black)
	"DD_BMWM5_Blue",											// BMW M5 (Blue)
	"DD_BMWM5_Camo",											// BMW M5 (Camo)
	"DD_BMWM5_DarkGreen",									// BMW M5 (Dark Green)
	"DD_BMWM5_DarkRed",										// BMW M5 (Dark Red)
	"DD_BMWM5_Green",											// BMW M5 (Green)
	"DD_BMWM5_Orange",										// BMW M5 (Orange)
	"DD_BMWM5_Red",												// BMW M5 (Red)
	"DD_BMWM5_UrbanCamo",									// BMW M5 (Urban Camo)
	"DD_BMWM5_White",											// BMW M5 (White)
	"DD_BMWM5_Yellow",										// BMW M5 (Yellow)
	"BMW_M6",															//BMW M6 E92
	"BMW_M3_GTR",													//BMW M3 E46 GTR
	"BMW_M3",															//BMW M3 E46
	"BMW_M3_RALLY",												//BMW M3 E46 Rally
	"BMW_135I",														//BMW 135i
	"tcg_bmw_m3",													//M3 E92 Hamann Black
	"tcg_bmw_m3_hamwhite",								//M3 E92 Hamann White
	"tcg_bmw_m3_c1",											//BMW M3 E92 Red
	"tcg_bmw_m3_c3",											//BMW M3 E92 Teal
	"tcg_bmw_m3_c4",											//BMW M3 E92 Grey
	"tcg_bmw_m3_c5",											//BMW M3 E92 Blue
	"tcg_bmw_m3_c6",											//BMW M3 E92 White
	"tcg_bmw_m3_c7",											//BMW M3 E92 Yellow
	"tcg_bmw_m3_c8",											//BMW M3 E92 Kitty
	"tcg_bmw_m3_c9"												//BMW M3 E92 Black
];

//Tahoe shop
_tahoe = [
	"tahoe_grey",													//Grey Tahoe
	"tahoe_darkblue",											//Dark Blue Tahoe
	"tahoe_blue",													//Blue Tahoe
	"tahoe_yellow",												//Yellow Tahoe
	"tahoe_white",												//White Tahoe
	"tahoe_green",												//Green Tahoe
	"tahoe_black",												//Black Tahoe
	"tahoe_orange",												//Orange Tahoe
	"tahoe_pink",													//Vanillas Princess Tahoe
	"tahoe_darkblue_cb",									//Dark Blue Pimp Tahoe
	"tahoe_grey_cb",											//Grey Pimp Tahoe
	"tahoe_blue_cb",											//Blue Pimp Tahoe
	"tahoe_yellow_cb",										//Yellow Pimp Tahoe
	"tahoe_pink_cb",											//Pink Pimp Tahoe
	"tahoe_white_cb",											//White Pimp Tahoe
	"tahoe_green_cb",											//Green Pimp Tahoe
	"tahoe_black_cb",											//Black Pimp Tahoe
	"tahoe_orange_cb"											//Orange Pimp Tahoe
];

//Pickup Shop
_ps = [
	"DD_FOR16F150_Black",									//2016 Ford F150 (Black)
	"DD_FOR16F150_Blue",									//2016 Ford F150 (Blue)
	"DD_FOR16F150_Camo",									//2016 Ford F150 (Camo)
	"DD_FOR16F150_DarkGreen",							//2016 Ford F150 (Dark Green)
	"DD_FOR16F150_DarkRed",								//2016 Ford F150 (Dark Red)
	"DD_FOR16F150_Green",									//2016 Ford F150 (Green)
	"DD_FOR16F150_Orange",								//2016 Ford F150 (Orange)
	"DD_FOR16F150_Red",										//2016 Ford F150 (Red)
	"DD_FOR16F150_UrbanCamo",							//2016 Ford F150 (Urban Camo)
	"DD_FOR16F150_White",									//2016 Ford F150 (White)
	"DD_FOR16F150_Yellow",								//2016 Ford F150 (Yellow)
	"DD_CHE15Suburban_Black",							//2015 Suburban (Black)
	"DD_CHE15Suburban_Blue",							//2015 Suburban (Blue)
	"DD_CHE15Suburban_Camo",							//2015 Suburban (Camo)
	"DD_CHE15Suburban_DarkGreen",					//2015 Suburban (Dark Green)
	"DD_CHE15Suburban_DarkRed",						//2015 Suburban (Dark Red)
	"DD_CHE15Suburban_Green",							//2015 Suburban (Green)
	"DD_CHE15Suburban_Orange",						//2015 Suburban (Orange)
	"DD_CHE15Suburban_Red",								//2015 Suburban (Red)
	"DD_CHE15Suburban_UrbanCamo",					//2015 Suburban (Urban Camo)
	"DD_CHE15Suburban_White",							//2015 Suburban (White)
	"DD_CHE15Suburban_Yellow",						//2015 Suburban (Yellow)
	"il_silverado_black",									//Black Silverado
	"il_silverado_red",										//Red Silverado
	"il_silverado_orange",								//Orange Silverado
	"il_silverado_white",									//Deans Custom Truck (White)
	"il_silverado_pink",									//Custom Pink Silverado
	"tcg_suburban_red",										//Suburban 2006 Red
	"tcg_suburban_yellow",								//Suburban 2006 Yellow
	"tcg_suburban_grey",									//Suburban 2006 Grey
	"tcg_suburban_white",									//Suburban 2006 White
	"tcg_suburban_green",									//Suburban 2006 Green
	"suburban_blue",											//Suburban 2008 Blue
	"suburban_black",											//Suburban 2008 Black
	"suburban_maroon",										//Suburban 2008 Maroon
	"suburban_sandstone",									//Suburban 2008 Sandstone
	"suburban_grey",											//Suburban 2008 Grey"
	"suburban_white"											//Suburban 2008 White
];

//Taxi Shop
_tx = [
	"GLT_M300_LT",												//Lada Taxi
	"GLT_M300_ST",												//Sedan Taxi
	"il_fordcv_taxi",											//Crown Vic Taxi
	"tcg_taurus_taxi"											//Taurus Taxi
];

//Bike Shop
_bsj = [
	"MMT_USMC"														//Mountain Bike
];

//Motorcycle Shop
_mbs = [
	"tcg_hrly",														//Flame Harley
	"tcg_hrly_coco",											//Coco Harley
	"tcg_hrly_demon",											//Demon Harley
	"tcg_hrly_limited",										//Red Flame Harley
	"tcg_hrly_orig1",											//Black Harley
	"tcg_hrly_gay",												//Blue Flame Harley
	"tcg_hrly_metal",											//Blue Harley
	"tcg_hrly_orig2",											//"White Harley
	"tcg_hrly_white",											//Dirty Harley
	"tcg_hrly_blue",											//Patriot Harley
	"tcg_hrly_red",												//Red Devil Harley
	"Old_moto_TK_Civ_EP1",								//Motorcycle
	"TT650_TK_CIV_EP1",										//Dirt Bike
	"TT650_Ins",													//Sports Motorbike
	"TT650_Civ",													//Motorbike
	"ATV_CZ_EP1"													//ATV civ
];

//Quad Shop
_qbs = [
	"cl_quaddescammo",										//Desert Camo Quad
	"cl_green",														//Green Quad
	"cl_quadred",													//Red Quad
	"cl_quadsaftysteel",									//Steel Quad
	"cl_quadyellow",											//Yellow Quad
	"cl_blue2",														//Blue Quad
	"cl_chark",														//Gray Quad
	"cl_dirtyred"													//Dirty Red Quad
];

//Sport Bike Dealer
_qbss = [
	"tcg_aprilia_blue",										//Blue Sport Bike
	"tcg_aprilia_yellow",									//Yellow Sport Bike
	"tcg_aprilia_white",									//White Sport Bike
	"tcg_aprilia_green",									//Green Sport Bike
	"tcg_aprilia_red",										//Red Sport Bike
	"tcg_aprilia_black",									//Black Sport Bike
	"tcg_aprilia_black_2",								//Black 2 Sport Bike
	"tcg_aprilia_blue_2",									//Blue 2 Sport Bike
	"tcg_aprilia_blue_4",									//Blue 4 Sport Bike
	"tcg_aprilia_blue_5",									//Blue 5 Sport Bike
	"tcg_aprilia_cyan",										//Cyan Sport Bike
	"tcg_aprilia_green_3",								//Green 3 Sport Bike
	"tcg_aprilia_orange",									//Orange Sport Bike
	"tcg_aprilia_red_1",									//Red 1 Sport Bike
	"tcg_aprilia_red_2",									//Red 2 Sport Bike
	"tcg_aprilia_white_2",								//White 2 Sport Bike
	"tcg_aprilia_yellow_2"								//Yellow 2 Sport Bike
];

//Truck Shop
_ts = [
	"cl_del_mackr",												//Delivery Truck
	"cl_trucktest_mackr",									//Cargo Truck
	"cl_flatbed_mackr",										//Flatbed Truck
	"Ural_TK_CIV_EP1",										//Ural Truck
	"V3S_Open_TK_CIV_EP1",								//V3S Truck
	"V3S_TK_EP1",													//V3S Covered Truck
	"UralOpen_CDF",												//Ural Open
	"KamazOpen",													//Kamaz (Open)
	"Ural_CDF",														//Ural
	"schoolbus",													//TCG Schoolbus
	"Ikarus_TK_CIV_EP1",									//Bus
	"Ikarus",															//Bus
	"cooter",															//Cooter's Tow Truck
	"lockpick",														//Lockpick
	"roadcone"														//Road Cone
];

//Sport Truck Shops
_sts = [
	"raptor_black",												//Raptor Black
	"raptor_grey",												//Raptor Grey
	"raptor_blue",												//Raptor Blue
	"raptor_yellow",											//Raptor Yellow
	"raptor_pink",												//Raptor Pink
	"raptor_white",												//Raptor White
	"raptor_green",												//Raptor Green
	"raptor_red",													//Raptor Red
	"raptor_orange",											//Raptor Orange
	"Cherokee_black",											//Cherokee Black
	"Cherokee_grey",											//Raptor Grey
	"Cherokee_blue",											//Raptor Blue
	"Cherokee_yellow",										//Raptor Yellow
	"Cherokee_pink",											//Raptor Pink
	"Cherokee_white",											//Raptor White
	"Cherokee_green",											//Raptor Green
	"Cherokee_red",												//Raptor Red
	"Cherokee_orange",										//Raptor Orange
	"rangerover_black",										//Rangerover Black
	"rangerover_blue",										//Rangerover Blue
	"rangerover_yellow",									//Rangerover Yellow
	"rangerover_pink",										//Rangerover Pink
	"rangerover_white",										//Rangerover White
	"rangerover_green",										//Rangerover Green
	"rangerover_red",											//Rangerover Red
	"rangerover_orange",									//Rangerover Orange
	"s331_black",													//S331 Black
	"s331_grey",													//S331 Grey
	"s331_blue",													//S331 Blue
	"s331_yellow",												//S331 Yellow
	"s331_pink",													//S331 Pink
	"s331_white",													//S331 White
	"s331_green",													//S331 Green
	"s331_red",														//S331 Red
	"s331_orange",												//S331 Orange
	"h1_black",														//Hummer Black
	"h1_grey",														//Hummer Grey
	"h1_blue",														//Hummer Blue
	"h1_yellow",													//Hummer Yellow
	"h1_pink",														//Hummer Pink
	"h1_white",														//Hummer White
	"h1_green",														//Hummer Green
	"h1_red",															//Hummer Red
	"transit_pink"												//Transit Pink
];

//Plane Shop
_as = [
	"V3S_Refuel_TK_GUE_EP1",							//V3S Fuel Truck
	"V3S_Repair_TK_GUE_EP1",							//V3S Repair Truck
	"An2_1_TK_CIV_EP1",										//An-2 Prop Plane Red
	"An2_2_TK_CIV_EP1",										//An-2 Prop Plane Green
	"USEC_MAULE_M7_STD",									//Maule Single Prop
	"gnt_piperwii",												//Piper Airplane
	"GNT_C185F",													//Cessna Seaplane Blue
	"GNT_C185E",													//Cessna Seaplane Yellow
	"GNT_C185R",													//Cessna Yellow
	"GNT_C185C",													//Cessna White
	"GNT_C185"														//Cessna Red and Yellow
];

//Heli Shop
_assa = [
	"kyo_ultralight",											//Ultralight
	"AH6X_EP1",														//Little Bird
	"KA137_PMC",													//Experimental Craft
	"CSJ_Gyroc",													//Gyro Chopper
	"Mi17_Civilian",											//Mi-17-Civil
	"bd5j_civil_3",												//MicroJet 3
	"bd5j_civil_2",												//MicroJet 2
	"bd5j",																//MicroJet 1
	"GazelleUN",													//Gazelle UN
	"Gazelle",														//Jackos Gazelle
	"Gazelle1",														//Gazelle Camo
	"Gazelle3",														//Gazelle White
	"tcg_bell206_3",											//Bell 206 Brown
	"tcg_bell206_4",											//Bell 206 Blue and Yellow
	"tcg_bell206_1",											//Bell 206 Executive
	"tcg_bell206_2",											//Bell 206 Blue
	"tcg_bell206_5",											//Bell Red and White
	"tcg_bell206",												//Bell Red and White
	"MH6J_EP1"														//Little Bird w/ Benches
];

//Big Air Shop
_asc = [
	"can_c130",														//Air Canada C130
	"airnz_C130",													//New Zealand C130
	"luf_c130",														//Luftasia C130
	"qantas_C130",												//Quantas C130
	"A320MPA",														//FedEx Airbus
	"USEC_ch53_e"													//USEC CH53E
];

//Boat Shop 1
_sb = [
	"fishingpole",												//Fishing Pole
	"tcg_wrun",														//Jet Ski
	"tcg_wave_red",												//Armed Pirate Jetski
	"tcg_wave_black",											//Black Jet Ski
	"tcg_wave_red2",											//Red White Jet Ski
	"tcg_wave_sky",												//Sky Jet Ski
	"tcg_wave_red3"												//White Red Jet Ski
];

//Boat Shop 2
_bs = [
	"fishingpole",												//Fishing Pole
	"tcg_wrun",														//Jet Ski
	"tcg_wave_red",												//Armed Pirate Jetski
	"tcg_wave_black",											//Black Jet Ski
	"tcg_wave_red2",											//Red White Jet Ski
	"tcg_wave_sky",												//Sky Jet Ski
	"tcg_wave_red3",											//White Red Jet Ski
	"cl_trawler_fishing_boat",						//Large Fishing Boat
	"cl_sport_fishing_boat",							//Sport Fishing Boat
	"Fishing_boat",												//Fishing Boat
	"cl_container_boat",									//Large Cargo Boat
	"cl_inflatable",											//Small Inflatable Boat
	"PBX",																//PBX
	"Zodiac",															//CRRC
	"Smallboat_1",												//Leisure Boat
	"Smallboat_2",												//Leisure Boat 2
	"lcu",																//CB Island Ferry Boat
	"big_boat"														//Pirate Gunboat
];

//Boat Shop 3
_bsp = [
	"fishingpole",												//Fishing Pole
	"GNT_C185F",													//Cessna Seaplane Blue
	"GNT_C185E",													//Cessna Seaplane Yellow
	"PBX",																//PBX
	"Zodiac",															//CRRC
	"tcg_wrun",														//Jet Ski
	"tcg_wave_red",												//Armed Pirate Jetski
	"tcg_wave_black",											//Black Jet Ski
	"tcg_wave_red2",											//Red White Jet Ski
	"tcg_wave_sky",												//Sky Jet Ski
	"tcg_wave_red3"												//White Red Jet Ski
];

//Terror Boat Shop
_bt = [
	"fishingpole",												//Fishing Pole
	"PBX",																//PBX
	"Zodiac",															//CRRC
	"cl_trawler_fishing_boat",						//Large Fishing Boat
	"cl_container_boat",									//Large Cargo Boat
	"cl_sport_fishing_boat",							//Sport Fishing Boat
	"Fishing_boat",												//Fishing Boat
	"cl_inflatable",											//Small Inflatable Boat
	"lcu"																	//CB Island Ferry Boat
];

//Jewelry Shop
_js = [
	"Diamond"															//Diamond
];

//Insurance
_ins = [
	"bankversicherung"										//Bank Insurance
];

//Resource Shop
_rs = [
	"gold",																//Gold
	"iron",																//Iron
	"copper",															//Copper
	"diamond rock",												//Diamond rock
	"Sand"																//Sand
];

//Jackos Cheesburgers
_gds = [
	"bread",															//Cheeseburger
	"straw"																//Pumpkin
];

//43
_gds1 = [];

//OL_Shops_Wigsworth
_wigs = [
	"supgrade1",													//Shocks 1
	"supgrade2",													//Fuel Injection 2
	"supgrade3",													//Violator 3
	"supgrade4",													//Interceptor 4
	"supgrade5",													//Fast And Furious 5
	"RepairKitsBreaksShops"								//Repair Kit
];

//Oil Trader/Seller
_os = [
	"OilBarrel",													//Petroleum
	"Oil"																	//Crude Oil
];

//Whale Sale
_ws = [
	"Whale"																//Whale
];

//Cocaine Sell
_dsc = [
	"cocaine",														//Cocaine
	"cocaineseed"													//Coca Seed
];

//Marijuana Sell
_dsm = [
	"marijuana",													//Marijuana
	"marijuanaseed"												//Marijuana Seed
];

//LSD Sell
_dsl = [
	"lsd"																	//LSD
];

//Heroin Sell
_dsh = [
	"heroin",															//Heroin
	"heroinseed"													//Poppy Seed
];

//Pharmacy
_psc = [
	"medikit",														//Med-kit
	"pharm",															//Pharmaceutical Items
	"GymMem1",														//Blades Natural Supplements
	"GymMem2",														//Hiros Hero Pills
	"cl_wheelchair",											//Jackos Wheel Chair
	"cpr_kit",														//CPR Kit
	"Gas_Mask"														//Gas Mask
];

//Organ Dealer
_hsc = [
	"eyes",																//Bloody Eyes
	"brain",															//Human Brain
	"liver",															//Human Liver
	"heart",															//Human Heart
	"kidney",															//Human Kidney
	"bones",															//Human Bones
	"teeth"																//Human Teeth
];

//Meth Shop
_msc = [
	"meth",																//Meth
	"GymMem3",														//GymMem3
	"GymMem4"															//Illegal Steroids
];

//Basic Cop
_copbasic = [
	"PD_Kit",															//PD (Required Equipment Kit)
	"HandCuffs",													//HandCuffs
	"Gag",																//Gag
	"spikestrip",													//Spike Strip
	"Itembag",														//Evidence Bag
	"medikit",														//Med-kit
	"Binocular",													//Binocular
	"NVGoggles",													//NVGoggles
	"GPS",																//GPS
	"supgrade1",													//Shocks 1
	"supgrade2",													//Fuel Injection 2
	"RepairKitsBreaksShops",							//Repair Kit
	"caralarm",														//OnStar Car Alarm
	"TreeFixer"														//Tree Fixer
];

//Checkpoint PD
_coptraffic = [
	"roadblock",													//Roadblock
	"glt_roadsign_octagon",								//Stop Sign
	"bargate",														//Bar Gate
	"SearchLight_UN_EP1",									//Search Light
	"roadcone",														//Road Cone
	"bunkersmall",												//Bunker (Small)
	"il_barrier",													//Short Concrete Road Block Barrier
	"roadbarrierlong",										//Caution Barrier Large
	"roadbarriersmall",										//Caution Barrier Small
	"bigbagfence",												//Big bag fence
	"bigbagfenceRound"										//Big bag fence (Round)
];

//Untrained Box
_copuntrained = [
	"PD_Kit",															//PD (Required Equipment Kit)
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"RH_m9",															//M9 Pistol
	"Rnd_9x19_M9",												//15Rnd 9mm M9/92FS Mag
	"M1014_pd",														//M1014 Shotgun
	"8Rnd_B_Beneli_Pellets",							//12 Gauge Buckshot
	"olrpg_pdcv_pb" 											//Crown Victoria (Pushbar)
];

//PO1 Box
_coppo1 = [
	"PD_Kit",															//PD (Required Equipment Kit)
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"rh_p226_pd",													//SIGG P226
	"RH_15Rnd_9x19_usp_pd",								//SIGG Mag
	"M1014_pd",														//M1014 Shotgun
	"8Rnd_B_Beneli_Pellets",							//12 Gauge Buckshot
	"RH_hk416_pd",												//HK416
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"olrpg_pdcv_pb", 											//Crown Victoria (Pushbar)
	"olrpg_pdtaurus" 											//Ford Taurus
];

//PO2 Box
_coppo2 = [
	"PD_Kit",															//PD (Required Equipment Kit)
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"rh_p226_pd",													//SIGG P226
	"RH_15Rnd_9x19_usp_pd",								//SIGG Mag
	"M1014_pd",														//M1014 Shotgun
	"8Rnd_B_Beneli_Pellets",							//12 Gauge Buckshot
	"RH_hk416eotech_pd",									//HK416 Eotech
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"olrpg_pdcv_pb", 											//Crown Victoria (Full Pushbar)
	"olrpg_pdtaurus" 											//Ford Taurus (Pushbar)
];

//PO3 Box
_coppo3 = [
	"PD_Kit",															//PD (Required Equipment Kit)
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"MakarovSD",													//MakarovSD
	"8Rnd_9x18_MakarovSD",								//8Rnd Makarov SD Mag
	"rh_p226_pd",													//SIGG P226
	"RH_15Rnd_9x19_usp_pd",								//SIGG Mag
	"M1014_pd",														//M1014 Shotgun
	"8Rnd_B_Beneli_Pellets",							//12 Gauge Buckshot
	"RH_hk416aim_pd",											//HK416 Aimpoint
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"olrpg_pdupcv_slick_pb", 							//Crown Victoria Slicktop
	"olrpg_pdtaurus", 										//Ford Taurus (Full Pushbar)
	"olrpg_pd_charger", 										//Dodge Charger
	"supgrade3_pd"												//Violator 3
];

//CPL Box
_copcpl = [
	"PD_Kit",															//PD (Required Equipment Kit)
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"MakarovSD",													//MakarovSD
	"8Rnd_9x18_MakarovSD",								//8Rnd Makarov SD Mag
	"rh_p226_pd",													//SIGG P226
	"RH_15Rnd_9x19_usp_pd",								//SIGG Mag
	"M1014_pd",														//M1014 Shotgun
	"8Rnd_B_Beneli_Pellets",							//12 Gauge Buckshot
	"RH_m4sbraim_cmd",										//M4 Magpul SBR Aimpoint
	"RH_M4sbreotech_cmd",									//M4 Magpul SBR EoTech
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"olrpg_pdupcv_slick_pb", 							//Crown Victoria Slicktop (Pushbar)
	"olrpg_pdsuptaurus_slick", 						//Ford Taurus Slicktop
	"olrpg_pdsupervisor_charger_slk", 		//Dodge Charger Slicktop
	"supgrade3_pd",												//Violator 3
	"supgrade4_pd"												//Interceptor 4
];

//SGT Box
_copsgt = [
	"PD_Kit",															//PD (Required Equipment Kit)
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"MakarovSD",													//MakarovSD
	"8Rnd_9x18_MakarovSD",								//8Rnd Makarov SD Mag
	"rh_p226_pd",													//SIGG P226
	"RH_15Rnd_9x19_usp_pd",								//SIGG Mag
	"M1014_pd",														//M1014 Shotgun
	"8Rnd_B_Beneli_Pellets",							//12 Gauge Buckshot
	"RH_m4sbraim_cmd",										//M4 Magpul SBR Aimpoint
	"RH_M4sbreotech_cmd",									//M4 Magpul SBR EoTech
	"RH_M4sbracog_cmd",										//M4 Magpul SBR Acog
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"olrpg_pdupcv_slick_pb", 							//Crown Victoria Slicktop (Pushbar)
	"olrpg_pdsuptaurus_slick", 						//Ford Taurus Slicktop
	"olrpg_pdsupervisor_charger_slk", 		//Dodge Charger Slicktop
	"olrpg_pdsup_slk", 										//Chevrolet Tahoe Slicktop
	"supgrade3_pd",												//Violator 3
	"supgrade4_pd"												//Interceptor 4
];

//Deputy Box
_copdeputy = [
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"RH_python_sheriff",									//Sheriff Colt Python
	"RH_6Rnd_357_Mag",										//357 Moon Clip
	"M1014_sheriff",											//M1014 Shotgun
	"8Rnd_B_Beneli_Pellets",							//12 Gauge Buckshot
	"RH_acrbaim_sheriff",									//Black ACR Aimpoint
	"RH_acrbeotech_sheriff",							//Black ACR Eotech
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"olrpg_sdcv_pb",											//Crown Victoria (Pushbar)
	"olrpg_sd_charger", 										//Dodge Charger
	"tcg_taurus_shpb", 										//Ford Taurus (Pushbar)
	"supgrade1_pd",												//Shocks 1
	"supgrade2_pd",												//Fuel Injection 2
	"supgrade3_pd"												//Violator 3
];

//DNR Box
_copsheriffdnr = [
	"olrpg_sddnr", 									//Chevrolet Tahoe (DNR)
	"olrpg_sdf350_dnr"										//Sheriff F350 (DNR)
];

//Sheriff Marksman Box
_copsheriffmks = [
	"M24_sheriff",												//M24 Sniper
	"M40A3_sheriff",											//M40A3 Sniper
	"5Rnd_762x51_M24"											//5Rnd 762x51 Mag
];

//SGT Deputy Box
_copsgtdeputy = [
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"MakarovSD",													//MakarovSD
	"8Rnd_9x18_MakarovSD",								//8Rnd Makarov SD Mag
	"RH_python_sheriff",									//Sheriff Colt Python
	"RH_6Rnd_357_Mag",										//357 Moon Clip
	"M1014_sheriff",											//M1014 Shotgun
	"8Rnd_B_Beneli_Pellets",							//12 Gauge Buckshot
	"RH_acrbaim_sheriff",									//Black ACR Aimpoint
	"RH_acrbeotech_sheriff",							//Black ACR Eotech
	"RH_acrbacog_sheriff",								//Black ACR ACOG
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"M24_sheriff",												//M24 Sniper
	"5Rnd_762x51_M24",										//5Rnd 762x51 Mag
	"olrpg_sdpatrolt", 											//hevrolet Tahoe (Supervisor)
	"olrpg_sdsub6", 											//Chevrolet Suburban (Sheriff)
	"olrpg_sdf350", 											//Sheriff F350
	"supgrade3_pd",												//Violator 3
	"supgrade4_pd"												//Interceptor 4
];

//Sheriff Command Box
_copsheriff = [
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"MakarovSD",													//MakarovSD
	"8Rnd_9x18_MakarovSD",								//8Rnd Makarov SD Mag
	"RH_python_sheriff",									//Sheriff Colt Python
	"RH_6Rnd_357_Mag",										//357 Moon Clip
	"M1014_sheriff",											//M1014 Shotgun
	"8Rnd_B_Beneli_Pellets",							//12 Gauge Buckshot
	"RH_acrbaim_sheriff",									//Black ACR Aimpoint
	"RH_acrbeotech_sheriff",							//Black ACR Eotech
	"RH_acrbacog_sheriff",								//Black ACR ACOG
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"M24_sheriff",												//M24 Sniper
	"5Rnd_762x51_M24",										//5Rnd 762x51 Mag
	"Stinger_swat",												//Stinger Launcher
	"Stinger_mag",												//Stinger Missile
	"olrpg_sdpatrolt", 										//Chevrolet Tahoe (Supervisor)
	"olrpg_sdf350", 											//Sheriff F350
	"olrpg_sdsub6", 											//Chevrolet Suburban (Sheriff)
	"olrpg_sdcv_pb",											//Crown Victoria Sheriff
	"olrpg_umcv_dblue", 									//Unmarked Crown Victoria (Blue)
	"olrpg_umcv_maroon", 									//Unmarked Crown Victoria (Maroon)
	"olrpg_umcv_grey", 										//Unmarked Crown Victoria (Grey)
	"olrpg_uctahoe_maroon", 							//Unmarked Tahoe (Maroon)
	"olrpg_uctahoe_grey", 								//Unmarked Tahoe (Grey)
	"olrpg_uctahoe_dblue",								//Unmarked Tahoe (Blue)
	"olrpg_pdtaurus_um", 									//Unmarked Ford Taurus
	"supgrade3_pd",												//Violator 3
	"supgrade4_pd",												//Interceptor 4
	"supgrade5_pd",												//Fast And Furious 5
	"Bait_Kit"														//Bait Kit
];

//LT Box
_coplt = [
	"PD_Kit",															//PD (Required Equipment Kit)
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"MakarovSD",													//MakarovSD
	"8Rnd_9x18_MakarovSD",								//8Rnd Makarov SD Mag
	"rh_p226_pd",													//SIGG P226
	"RH_15Rnd_9x19_usp_pd",								//SIGG Mag
	"M1014_pd",														//M1014 Shotgun
	"8Rnd_B_Beneli_Pellets",							//12 Gauge Buckshot
	"RH_m4maim_cmd",											//M4 Magpul Aimpoint
	"RH_m4meotech_cmd",										//M4 Magpul EoTech
	"RH_m4macog_cmd",											//M4 Magpul Acog
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"Stinger_swat",												//Stinger Launcher
	"Stinger_mag",												//Stinger Missile
	"olrpg_pdlt", 										//Chevrolet Tahoe (Lt)
	"olrpg_umcv_dblue", 									//Unmarked Crown Victoria (Blue)
	"olrpg_umcv_maroon",									//Unmarked Crown Victoria (Maroon)
	"olrpg_umcv_grey", 										//Unmarked Crown Victoria (Grey)
	"olrpg_uctahoe_maroon", 							//Unmarked Tahoe (Maroon)
	"olrpg_uctahoe_grey", 								//Unmarked Tahoe (Grey)
	"olrpg_uctahoe_dblue", 								//Unmarked Tahoe (Blue)
	"supgrade3_pd",												//Violator 3
	"supgrade4_pd",												//Interceptor 4
	"supgrade5_pd",												//Fast And Furious 5
	"Bait_Kit"														//Bait Kit
];

//CPT Box
_copcpt = [
	"PD_Kit",															//PD (Required Equipment Kit)
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"MakarovSD",													//MakarovSD
	"8Rnd_9x18_MakarovSD",								//8Rnd Makarov SD Mag
	"rh_p226_pd",													//SIGG P226
	"RH_15Rnd_9x19_usp_pd",								//SIGG Mag
	"M1014_pd",														//M1014 Shotgun
	"8Rnd_B_Beneli_Pellets",							//12 Gauge Buckshot
	"RH_m4maim_cmd",											//M4 Magpul Aimpoint
	"RH_m4meotech_cmd",										//M4 Magpul EoTech
	"RH_m4macog_cmd",											//M4 Magpul Acog
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"Stinger_swat",												//Stinger Launcher
	"Stinger_mag",												//Stinger Missile
	"olrpg_pdcapt", 									//Chevrolet Tahoe (Cpt)
	"olrpg_umcv_dblue", 									//Unmarked Crown Victoria (Blue)
	"olrpg_umcv_maroon", 									//Unmarked Crown Victoria (Maroon)
	"olrpg_umcv_grey", 										//Unmarked Crown Victoria (Grey)
	"olrpg_uctahoe_maroon",							 	//Unmarked Tahoe (Maroon)
	"olrpg_uctahoe_grey", 								//Unmarked Tahoe (Grey)
	"olrpg_uctahoe_dblue", 								//Unmarked Tahoe (Blue)
	"olrpg_pdtaurus_um",								 	//Unmarked Ford Taurus
	"supgrade3_pd",												//Violator 3
	"supgrade4_pd",												//Interceptor 4
	"supgrade5_pd",												//Fast And Furious 5
	"Bait_Kit"														//Bait Kit
];

//Chief Box
_copchief = [
	"PD_Kit",															//PD (Required Equipment Kit)
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"MakarovSD",													//MakarovSD
	"8Rnd_9x18_MakarovSD",								//8Rnd Makarov SD Mag
	"RH_deaglemzb_cmd",										//Chief Desert Eagle
	"RH_7Rnd_50_AE",											//Desert Eagle Mag
	"RH_m4maim_cmd",											//M4 Magpul Aimpoint
	"RH_m4meotech_cmd",										//M4 Magpul EoTech
	"RH_m4macog_cmd",											//M4 Magpul Acog
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"LEXX_SCAR_H_CQC_CCO_BLACK_cmd",			//Mk17 CCO
	"20Rnd_762x51_B_SCAR_pd",							//Mk17 Mag
	"Stinger_swat",												//Stinger Launcher
	"Stinger_mag",												//Stinger Missile
	"sahco",															//Fosters Car
	"olrpg_chf_cvold", 										//Crown Victoria Chief
	"olrpg_pdchief", 											//Chevrolet Tahoe (Chief)
	"olrpg_pdassistantchief", 								//Chevrolet Tahoe (Ast. Chief)
	"olrpg_umcv_dblue", 									//Unmarked Crown Victoria (Blue)
	"olrpg_umcv_maroon", 									//Unmarked Crown Victoria (Maroon)
	"olrpg_umcv_grey", 										//Unmarked Crown Victoria (Grey)
	"olrpg_uctahoe_maroon", 							//Unmarked Tahoe (Maroon)
	"olrpg_uctahoe_grey", 								//Unmarked Tahoe (Grey)
	"olrpg_uctahoe_dblue", 								//Unmarked Tahoe (Blue)
	"olrpg_pdtaurus_um", 									//Unmarked Ford Taurus
	"olrpg_pd_chargerblack", 							//Unmarked Dodge Charger
	"supgrade3_pd",												//Violator 3
	"supgrade4_pd",												//Interceptor 4
	"supgrade5_pd",												//Fast And Furious 5
	"Bait_Kit"														//Bait Kit
];

//PD Medal Box
_copmedal = [
	"MakarovSD",													//MakarovSD
	"8Rnd_9x18_MakarovSD",								//8Rnd Makarov SD Mag
	"RH_m4maim_cmd",											//M4 Magpul Aimpoint
	"RH_m4meotech_cmd",										//M4 Magpul EoTech
	"RH_m4macog_cmd",											//M4 Magpul Acog
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"olrpg_pdlt", 										//Chevrolet Tahoe (Lt)
	"olrpg_umcv_dblue", 									//Unmarked Crown Victoria (Blue)
	"olrpg_umcv_maroon", 									//Unmarked Crown Victoria (Maroon)
	"olrpg_umcv_grey", 										//Unmarked Crown Victoria (Grey)
	"olrpg_uctahoe_maroon", 							//Unmarked Tahoe (Maroon)
	"olrpg_uctahoe_grey", 								//Unmarked Tahoe (Grey)
	"olrpg_uctahoe_dblue",							 	//Unmarked Tahoe (Blue)
	"m5_pd_traffic",											//BMW M5 (Police)
	"supgrade3_pd",												//Violator 3
	"supgrade4_pd",												//Interceptor 4
	"supgrade5_pd"												//Fast And Furious 5
];

//K9 Box
_copk9p = [
	"K9_Kit",															//K9 (Required Equipment Kit)
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"RH_m1911old_k9",											//M1911
	"RH_8Rnd_45cal_m1911",								//Kimber M1911 Magazine
	"RH_Mk18_k9",													//Mk18
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"olrpg_pdk9cv_pb" 										//Crown Victoria (K9)
];

//K9 Box 2
_copk9 = [
	"K9_Kit",															//K9 (Required Equipment Kit)
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"RH_m1911old_k9",											//M1911
	"RH_8Rnd_45cal_m1911",								//Kimber M1911 Magazine
	"RH_Mk18_k9",													//Mk18
	"RH_Mk18eot_k9",											//Mk18 Eotech
	"RH_Mk18aim_k9",											//Mk18 Aimpoint
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"olrpg_pdk9cv_pb", 										//Crown Victoria (K9)
	"olrpg_pdtaurusk9", 								//Ford Taurus (K9)
	"olrpg_pdk9suburban" 									//K-9 Suburban
];

//K9 Command Box
_copk9c = [
	"K9_Kit",															//K9 (Required Equipment Kit)
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"RH_m1911old_k9",											//M1911
	"RH_8Rnd_45cal_m1911",								//Kimber M1911 Magazine
	"RH_Mk18eot_k9",											//Mk18 Eotech
	"RH_Mk18aim_k9",											//Mk18 Aimpoint
	"RH_Mk18acog_k9",											//Mk18 Acog
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"RH_m21_k9",													//M21 Sniper Rifle
	"20Rnd_762x51_DMR",										//20Rnd 762x51 DMR Mag
	"M24_k9",															//M24 Sniper
	"5Rnd_762x51_M24",										//5Rnd 762x51 Mag
	"olrpg_pdk9cv_pb", 						//Crown Victoria Slicktop (K9)
	"olrpg_pdtaurusk9", 								//Ford Taurus (K9)
	"olrpg_pdk9_charger", 									//Dodge Charger (K9)
	"olrpg_pdk9sub6" 						//K-9 Suburban Slicktop
];

 //K9 Sheriff Box
_copk9sheriff = [
	"olrpg_sdk9sub6",											//Sheriff K-9 Suburban
	"olrpg_sdk9_charger", 								//Sheriff K-9 Charger
	"olrpg_sdtaurusk9" 										//Sheriff K-9 Taurus
];

//OP Pilot Box
_copav2 = [
	"RH_m9",															//M9 Pistol
	"Rnd_9x19_M9",												//15Rnd 9mm M9/92FS Mag
	"RH_umpaim_av",												//UMP Aimpoint
	"RH_45ACP_25RND_Mag",									//UMP 45 Mag
	"RH_PDR_av",													//PDR Aimpoint
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"olrpg_swatmh6j",											//Operation Little Bird
	"olrpg_swatmh60s"											//Operation Seahawk
];

//Aviation PD Box
_copav1 = [
	"AVIATION_Kit",												//Aviation (Required Equipment Kit)
	"Donut",															//Donut
	"RH_m9",															//M9 Pistol
	"Rnd_9x19_M9",												//15Rnd 9mm M9/92FS Mag
	"RH_mp5a5aim_av",											//MP5 Aimpoint
	"30rnd_9x19_MP5",											//30Rnd 9mm Ammo
	"olrpg_pdbell206",										//Police Bell 206
	"OH58g",															//OH58G
	"olrpg_pdgazelle"											//Police Gazelle
];

//Sheriff Aviation
_copavsh = [
	"RH_m9",															//M9 Pistol
	"Rnd_9x19_M9",												//15Rnd 9mm M9/92FS Mag
	"RH_mp5a5aim_av",											//MP5 Aimpoint
	"30rnd_9x19_MP5",											//30Rnd 9mm Ammo
	"Donut",															//Donut
	"olrpg_sdbell206"											//Sheriff Bell 206
];

//Probie SWAT Box
_copswat1 = [
	"SWAT_Kit",														//SWAT (Required Equipment Kit)
	"SmokeShell",													//Tear Gas Grenade
	"RAB_L111A1_swat",										//Flashbang
	"Gas_Mask_SWAT",											//Gas Mask
	"SWAT",																//SWAT Shield
	"Rnd_9x19_M9",												//15Rnd 9mm M9/92FS Mag
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"M1014_pd",														//M1014 Shotgun
	"8Rnd_B_Beneli_Pellets",							//12 Gauge Buckshot
	"RH_M4a1_swat",												//M4A1
	"RH_M4a1gl_swat",											//M4A1 M203
	"6Rnd_Smoke_M203",										//6Rnd M32 tear gas
	"1Rnd_Smoke_M203_swat",								//1Rnd M203 Tear Gas
	"30Rnd_556x45_Stanag_swat"						//30Rnd Stanag Mag
];

//Operator SWAT Box
_copswat2 = [
	"SWAT_Kit",														//SWAT (Required Equipment Kit)
	"SmokeShell",													//Tear Gas Grenade
	"RAB_L111A1_swat",										//Flashbang
	"Gas_Mask_SWAT",											//Gas Mask
	"SWAT",																//SWAT Shield
	"Rnd_9x19_M9",												//15Rnd 9mm M9/92FS Mag
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"RH_usp_swat",												//USP
	"RH_15Rnd_9x19_usp_swat",							//USP Mag
	"RH_M4a1eotech_swat",									//M4A1 Eotech
	"RH_M4a1gleotech_swat",								//M4A1 Eotech M203
	"RH_M4a1aim_swat",										//M4A1 Aimpoint
	"RH_M4a1glaim_swat",									//M4A1 Aimpoint M203
	"30Rnd_556x45_Stanag_swat",						//30Rnd Stanag Mag
	"1Rnd_Smoke_M203_swat",								//1Rnd M203 Tear Gas
	"LEXX_M32_EP1_BLACK_swat",						//M32
	"6Rnd_Smoke_M203",										//6Rnd M32 Tear Gas
	"RH_mk14ebrsp_swat",									//Mk14 EBR
	"20Rnd_762x51_DMR"										//20Rnd 762x51 DMR Mag
];

//Specialist SWAT Box
_copswat3 = [
	"SWAT_Kit",														//SWAT (Required Equipment Kit)
	"SmokeShell",													//Tear Gas Grenade
	"RAB_L111A1_swat",										//Flashbang
	"Gas_Mask_SWAT",											//Gas Mask
	"SWAT",																//SWAT Shield
	"Rnd_9x19_M9",												//15Rnd 9mm M9/92FS Mag
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"RH_usp_swat",												//USP
	"RH_15Rnd_9x19_usp_swat",							//USP Mag
	"RH_M4sdeotech_swat",									//M4A1 SD Eotech
	"RH_M4sdgleotech_swat",								//M4A1 SD Eotech M203
	"RH_M4sdaim_swat",										//M4A1 SD Aimpoint
	"RH_M4sdglaim_swat",									//M4A1 SD Aimpoint M203
	"RH_M4a1acog_swat",										//M4A1 ACOG
	"RH_M4a1glacog_swat",									//M4A1 ACOG M203
	"30Rnd_556x45_Stanag_swat",						//30Rnd Stanag Mag
	"30Rnd_556x45_StanagSD_swat",					//30Rnd Stanag Mag SD
	"1Rnd_Smoke_M203_swat",								//1Rnd M203 Tear Gas
	"LEXX_M32_EP1_BLACK_swat",						//M32
	"6Rnd_Smoke_M203",										//6Rnd M32 Tear Gas
	"RH_mk14ebrsp_swat",									//Mk14 EBR
	"20Rnd_762x51_DMR"										//20Rnd 762x51 DMR Mag
];

//Marksman SWAT Box
_copswat4 = [
	"SWAT_Kit",														//SWAT (Required Equipment Kit)
	"Gas_Mask_SWAT",											//Gas Mask
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"RH_uspsd_swat",											//USP Silenced
	"RH_15Rnd_9x19_uspsd_swat",						//USP SD Mag
	"RH_M4sdaim_wdl_swat",								//M4A1 SD Aimpoint Camo
	"30Rnd_556x45_StanagSD_swat",					//30Rnd Stanag Mag SD
	"DMR_swat",														//DMR
	"RH_mk14ebrsp_sd_swat",								//Mk14 EBR SD
	"20Rnd_762x51_DMR",										//20Rnd 762x51 DMR Mag
	"BAF_LRR_scoped_swat",								//Lapua Magnum Sniper Rifle
	"5Rnd_86x70_L115A1",									//5 Round Lapua Sniper Ammo
	"Binocular_Vector"										//Range Finder
];

//Command SWAT Box
_copswat5 = [
	"SWAT_Kit",														//SWAT (Required Equipment Kit)
	"SmokeShell",													//Tear Gas Grenade
	"RAB_L111A1_swat",										//Flashbang
	"Gas_Mask_SWAT",											//Gas Mask
	"SWAT",																//SWAT Shield
	"Rnd_9x19_M9",												//15Rnd 9mm M9/92FS Mag
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"RH_usp_swat",												//USP
	"RH_15Rnd_9x19_usp_swat",							//USP Mag
	"RH_M4sdacog_swat",										//M4A1 SD ACOG
	"RH_M4sdglacog_swat",									//M4A1 SD ACOG M203
	"30Rnd_556x45_StanagSD_swat",					//30Rnd Stanag Mag SD
	"LEXX_M32_EP1_BLACK_swat",						//M32
	"6Rnd_Smoke_M203",										//6Rnd M32 Tear Gas
	"RH_mk14ebrsp_swat",									//Mk14 EBR
	"20Rnd_762x51_DMR",										//20Rnd 762x51 DMR Mag
	"Stinger_swat",												//Stinger Launcher
	"Stinger_mag"													//Stinger Missile
];

//SWAT Maritime
_copswat6 = [
	"RHIB",													      //RHIB (S.W.A.T.)
	"Zodiac"															//CRRC
];

//SWAT Vehicles
_copswatvehicle = [
	"olrpg_swat", 												//SWAT Tahoe
	"olrpg_swatf350",											//SWAT F350
	"olrpg_swat_command",									//SWAT Command Suburban
	"olrpg_swat_bearcat"									//SWAT Bearcat
];

//CID Box
_cid = [
	"CID_Kit",														//CID (Required Equipment Kit)
	"x26",																//X26 Taser
	"x26_Mag",														//X26 Taser Charge
	"RH_p226_cid",												//SIG P226
	"RH_15Rnd_9x19_usp_pd",								//SIGG Mag
	"RH_M16a4_cid",												//M16A4 Iron Sights
	"RH_M16A4aim_cid",										//M16A4 Aimpoint
	"RH_M16A4eotech_cid",									//M16A4 EOTech
	"RH_M16A4acog_cid",										//M16A4 Acog
	"30Rnd_556x45_Stanag",								//30Rnd 5.56x45 Stanag Mag
	"olrpg_detcv_black", 									//Detective Crown Victoria (Black)
	"olrpg_detcv_sands", 									//Detective Crown Victoria (Sand)
	"olrpg_detcv_maroon", 								//Detective Crown Victoria (Maroon)
	"olrpg_detcv_dblue", 									//Detective Crown Victoria (Blue)
	"olrpg_detcv_grey", 									//Detective Crown Victoria (Grey)
	"olrpg_detcv_white", 									//Detective Crown Victoria (White)
	"olrpg_dettahoe_maroon", 							//Detective Tahoe (Maroon)
	"olrpg_dettahoe_grey", 								//Detective Tahoe (Grey)
	"olrpg_dettahoe_blue", 								//Detective Tahoe (Blue)
	"olrpg_dettahoe_black", 							//Detective Tahoe (Black)
	"olrpg_dettahoe_white", 							//Detective Tahoe (White)
	"olrpg_dettahoe_pink", 								//Detective Tahoe (Pink)
	"olrpg_dettahoe_green", 							//Detective Tahoe (Green)
	"olrpg_dettahoe_orange", 							//Detective Tahoe (Orange)
	"ilpd_Traffic_black",									//Internal Affairs CV (Black)
	"ilpd_Traffic_white",									//Internal Affairs CV (White)
	"ilpd_Traffic_sandstone",							//Internal Affairs CV (Sandstone)
	"ilpd_Traffic_maroon",								//Internal Affairs CV (Maroon)
	"ilpd_Traffic_grey",									//Internal Affairs CV (Grey)
	"ilpd_Traffic_darkblue",							//Internal Affairs CV (Dark Blue)
	"Bait_Kit"														//Bait Kit
];

//Sheriff Maritime Box
_copcoastguard = [
	"olrpg_sdpbx",												//Sheriff Zodiac
	"olrpg_sdrhib"												//Sheriff RHIB
];

//FTO Box
_copfto = [
	"FTO_Kit",														//FTO (Required Equipment Kit)
	"RH_M4eotech_FTO",										//M4 Eotech
	"RH_M4aim_FTO",												//M4 Aimpoint
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"olrpg_pdupcv_slick_pb",							//Crown Victoria Slicktop
	"olrpg_pdtaurus_slick"								//Ford Taurus Slicktop
];

//FTO 2 Box
_copftos = [
	"FTO_Kit",														//FTO (Required Equipment Kit)
	"RH_M4eotech_FTO",										//M4 Eotech
	"RH_M4aim_FTO",												//M4 Aimpoint
	"RH_M4acog_FTO",											//M4 Acog
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"olrpg_pdupcv_slick_pb",								//Crown Victoria Slicktop
	"olrpg_pdtaurus_slick",								//Ford Taurus Slicktop
	"olrpg_pdsup_slk"									//Chevrolet Tahoe Slicktop
	];

//FTO Command Box
_copftoc = [
	"FTO_Kit",														//FTO (Required Equipment Kit)
	"RH_M4eotech_FTO",										//M4 Eotech
	"RH_M4aim_FTO",												//M4 Aimpoint
	"RH_M4acog_FTO",											//M4 Acog
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"olrpg_pdupcv_slick_pb",								//Crown Victoria Slicktop
	"olrpg_pdtaurus_slick",								//Ford Taurus Slicktop
	"olrpg_pdsup_slk"									//Chevrolet Tahoe Slicktop
];

//Undercover Box
_undercover = [
	"tcg_taurus_civ2",										//Taurus Black
	"tahoe_black_cb",											//Black Pimp Tahoe
	"suburban_black",											//Suburban 2008 Black
	"transit_pink",												//Transit Pink
	"monaco_red",													//Monaco Red
	"CL_LAMBORGHINI_GT3",									//Racing Lamborghini
	"MakarovSD",													//MakarovSD
	"8Rnd_9x18_MakarovSD",								//8Rnd Makarov SD Mag
	"RH_g19_cid",													//Glock 19
	"RH_17Rnd_9x19_g19",									//Glock 19 Mag
	"RH_bull_cid",												//Raging Bull
	"RH_6Rnd_44_Mag",											//44 Magnum Moon Clip
	"KPFS_KarSmaf_uc",										//Karabiner S
	"KPFS_10Rnd_762x39_SKS",							//7.62 10Rnd Karabiner Mag
	"AK_47_M_uc",													//AKM
	"30Rnd_762x39_AK47",									//30rd AK/RK95/HK32 Mag
	"Huntingrifle_uc",										//CZ 550
	"5x_22_LR_17_HMR",										//CZ 550 Mag
	"HandCuffs",													//HandCuffs
	"RepairKitsBreaksShops",							//Repair Kit
	"Itembag",														//Evidence Bag
	"bjerk",															//Bryce Beef Jerky
	"medikit",														//Med-kit
	"Binocular",													//Binocular
	"NVGoggles",													//NVGoggles
	"GPS",																//GPS
	"supgrade3_pd",												//Violator 3
	"supgrade4_pd",												//Interceptor 4
	"supgrade5_pd",												//Fast And Furious 5
	"Bait_Kit"														//Bait Kit
];

//Terror Shop
_terrorshop = [
	"NVGoggles",													//NVGoggles
	"safehack",														//Vault Code Cracker
	"RH_oc14",														//Groza 9
	"RH_20Rnd_9x39_SP6_mag",							//20Rnd OC14 Mag
	"RH_rk95",														//RK95
	"RH_aks47",														//AKS47 No Buttstock
	"RH_aks47b",													//AKS47
	"AK_47_S",														//AKS
	"RH_akm",															//AK47 Modernized
	"30Rnd_762x39_AK47",									//30rd AK/RK95/HK32 Mag
	"RH_m14maf",													//M14 Long Rifle
	"20Rnd_762x51_DMR",										//20Rnd 762x51 DMR Mag
	"RPG18",															//RPG-18
	"RPG18_mag",													//RPG-18 Rocket
	"V3S_Reammo_TK_GUE_EP1",							//V3S Reammo Truck
	"vclammo"															//Vehicle Ammo
];

//Terror Boat SHop
_terrorboatshop = [
	"RHIB",																//Pirate RHIB
	"fishingpole",												//Fishing Pole
	"PBX",																//PBX
	"Zodiac",															//CRRC
	"cl_trawler_fishing_boat",						//Large Fishing Boat
	"cl_container_boat",									//Large Cargo Boat
	"cl_sport_fishing_boat",							//Sport Fishing Boat
	"Fishing_boat",												//Fishing Boat
	"cl_inflatable",											//Small Inflatable Boat
	"lcu"																	//CB Island Ferry Boat
];

//Terror Heli Shop
_terrorhelishop = [
	"UH1H_TK_EP1",												//Terrorist Huey
	"Gazelle",														//Police Gazelle
	"Gazelle3",														//Gazelle White
	"GazelleUN"														//Gazelle UN
];

//Barely Legal
_shady = [
	"lockpick",														//Lockpick
	"ziptie",															//Zip Tie
	"codeb",															//Digital Code Breaker
	"Gag",																//Gag
	"lighter"															//Lighter
];

//PMC Box
_PMC = [
	"ziptie",						 									//Ziptie
	"RepairKitsBreaksShops",					 		//Repair Kits
	"medikit", 														//Med kits
	"bjerk", 															//Beef Jerky
	"supgrade1", 													//Speed Upgrade 1
	"supgrade2", 													//Speed Upgrade 2
	"supgrade3", 													//Speed Upgrade 3
	"supgrade4", 													//Speed Upgrade 4
	"supgrade5", 													//Speed Upgrade 5
	"M24_PMC", 														//M24
	"5Rnd_762x51_M24", 										//M24 Magazine
	"m8_carbine", 												//M8 Carbine
	"m8_compact", 												//M8 Compact
	"m8_compact_pmc", 										//M8 Compact (PMC)
	"m8_carbine_pmc", 										//M8 Carbine (PMC)
	"m8_sharpshooter",  									//M8 Sharpshooter
	"30Rnd_556x45_G36", 									//M8 Magazines
	"RH_m4eotech_pmc", 										//M4 EOTech
	"RH_m4aim_pmc", 											//M4 Aimpoint
	"RH_m4acog_pmc", 											//M4 ACog
	"RH_m16a4_pmc",												//M16A4 (Iron Sights)
	"RH_M16A4aim_pmc",										//M16A4 (Aimpoint)
	"RH_M16A4eotech_pmc",									//M16A4 (EOTech)
	"30Rnd_556x45_Stanag_pmc",  					//30 Round Stanag
	"G36C_camo_pmc",											//G36C Camo
	"30Rnd_556x45_G36_pmc",								//G36C Magazines
	"RH_usp_pmc",													//USP Tactical
	"RH_15Rnd_9x19_usp",									//USP & Sig Magazines
	"RH_browninghp_pmc",									//Browning HP
	"RH_13Rnd_9x19_bhp_pmc",							//Browning HP Magazine
	"olrpg_pmccharger",										//PMC Charger
	"olrpg_pmctahoe",											//PMC Tahoe
	"olrpg_pmcsub6",											//PMC Suburban (2006)
	"olrpg_pmcsub12"											//PMC Suburban (2012)
];

//PMC Command Box
_CommandPMC = [
	"ziptie", 														//Ziptie
	"RepairKitsBreaksShops", 							//Repair Kits
	"medikit", 														//Med kits
	"bjerk", 															//Beef Jerky
	"supgrade1", 													//Speed Upgrade 1
	"supgrade2", 													//Speed Upgrade 2
	"supgrade3", 													//Speed Upgrade 3
	"supgrade4", 													//Speed Upgrade 4
	"supgrade5", 													//Speed Upgrade 5
	"M24_PMC", 														//M24
	"5Rnd_762x51_M24", 										//M24 Magazine
	"m8_carbine", 												//M8 Carbine
	"m8_compact", 												//M8 Compact
	"m8_compact_pmc", 										//M8 Compact (PMC)
	"m8_carbine_pmc", 										//M8 Carbine (PMC)
	"m8_sharpshooter",  									//M8 Sharpshooter
	"30Rnd_556x45_G36", 									//M8 Magazines
	"RH_m4eotech_pmc", 										//M4 EOTech
	"RH_m4aim_pmc", 											//M4 Aimpoint
	"RH_m4acog_pmc", 											//M4 ACog
	"RH_acraim_pmc", 											//Bush ACR (Aimpoint)
	"RH_acreotech_pmc", 									//Bush ACR (EOTech)
	"RH_acracog_pmc", 										//Bush ACR (ACog)
	"RH_m16a4_pmc",												//M16A4 (Iron Sights)
	"RH_M16A4aim_pmc",										//M16A4 (Aimpoint)
	"RH_M16A4eotech_pmc",									//M16A4 (EOTech)
	"30Rnd_556x45_Stanag_pmc",  					//30 Round Stanag
	"G36C_camo_pmc",											//G36C Camo
	"30Rnd_556x45_G36_pmc",								//G36C Magazines
	"RH_usp_pmc",													//USP Tactical
	"RH_15Rnd_9x19_usp",									//USP & Sig Magazines
	"RH_m1911_pmc",												//Kimber M1911
	"RH_8Rnd_45cal_m1911_pmc",						//Kimber M1911 Magazine
	"RH_browninghp_pmc",									//Browning HP
	"RH_13Rnd_9x19_bhp_pmc",							//Browning HP Magazine
	"olrpg_pmccharger",										//PMC Charger
	"olrpg_pmctahoe",											//PMC Tahoe
	"olrpg_pmcsub6",											//PMC Suburban (2006)
	"olrpg_pmcsub12"											//PMC Suburban (2012)
];

//PMC Air Box
_PMCAIR = [
	"MH6J_EP1", 													//Black LB
	"pmo_mh6dl_urban",									 	//PMC LB
	"olrpg_pmcjayhunarmed" 								//Unarmed Jayhawk
];

//Pistol Shop
_pistol = [
	"RH_g19t",														//Glock 19 Tan
	"RH_17Rnd_9x19_g17",									//G17 mag
	"RH_p38",															//P38
	"RH_8Rnd_9x19_p38",										//P38 Mag
	"RH_tt33",														//TT33
	"RH_8Rnd_762_tt33",										//TT33 Mag
	"RH_browninghp",											//Browning HP 9mm
	"RH_13Rnd_9x19_bhp",									//Browning Mag
	"RH_uspm",														//USP Match
	"RH_12Rnd_45cal_usp",									//12 Round USP Match Mag
	"RH_usp",															//USP Tactical
	"RH_15Rnd_9x19_usp",									//15 Round Sig and USP Mag
	"RH_mk2",															//22 Ruger MK2 Pistol
	"RH_10Rnd_22LR_mk2",									//10 Round Ruger 22 Mag
	"RH_m93r",														//M93R 9mm Burst Pistol
	"RH_20Rnd_9x19_M93",									//M93R Magazine
	"RH_m9c",															//M9 Camo Pistol
	"Rnd_9x19_M9",												//15Rnd 9mm M9/92FS Mag
	"RH_anac",														//Colt Anaconda 44 Magnum
	"RH_6Rnd_44_Mag",											//44 Magnum Moon Clip
	"RH_python",													//Colt Python 357 Magnum
	"RH_6Rnd_357_Mag",										//357 Moon Clip
	"RH_g17",															//Glock 17 9mm
	"RH_19Rnd_9x19_g18",									//GLock 19 and 17 Mag
	"RH_m1911old",												//Kimber 1911 Classic
	"RH_8Rnd_45cal_m1911",								//8 Round Kimber 45 Mag
	"RH_bull",														//Raging Bull
	"RH_6Rnd_44_Mag",											//44 Magnum Moon Clip
	"C1987_P99_black",										//P99
	"15Rnd_9x19_p99"											//P99 15Rnd Mag
];

//Submachine Gun Shop
_sub = [
	"RH_muzi",														//Micro Uzi
	"RH_32rnd_9x19_Muzi",									//32rd Micro Uzi Mag
	"RH_uzi",															//Uzi
	"RH_9mm_32RND_Mag",										//32rd 9mm Mag
	"RH_fmg9",														//fmg9
	"RH_9mm_32RND_Mag"										//32rd 9mm Mag
];

//Rifle Gun Shop
_rifle = [
	"Huntingrifle",												//CZ 550 Scoped
	"5x_22_LR_17_HMR",										//CZ550 Clip
	"MBG_Compound_Bow",										//Compound Bow
	"MBG_Arrow_N",												//Arrow
	"tcg_mossberg",												//Mossberg 500 Shotgun
	"LeeEnfieldmaf",											//Lee Enfield
	"x_303",															//10Rnds Lee Enfield
	"tcg_combat",													//Mini 12 Gauge
	"Saiga12K",														//Saiga 12
	"8Rnd_B_Saiga12_Pellets",							//8Rnd Saiga Buckshot
	"8Rnd_B_Beneli_Pellets",							//12 Gauge Buckshot
	"KPFS_KarS",													//Karabiner S
	"KPFS_10Rnd_762x39_SKS"								//7.62 10Rnd Karabiner Mag
];

//Guss Dealer
_guss = [
	"RH_mac10_guss",											//Illegal Mac 10
	"RH_9mm_32RND_Mag",										//32rd 9mm Mag
	"RH_TMP_guss",												//Illegal TMP
	"30Rnd_9x19_MP5",											//30Rnd 9mm MP5 Mag
	"RH_m14_guss",												//Illegal M14
	"20Rnd_762x51_DMR",										//20Rnd 762x51 DMR Mag
	"RH_mp5a4aim_guss",										//MP5A4 AIM
	"RH_mp5a4eot_guss",										//MP5A4 EOT
	"RH_mp5a4rfx_guss",										//MP5A4 RFX
	"30Rnd_9x19_MP5",											//30Rnd 9mm MP5 Mag
	"RH_m4aim_guss",											//M4 Aim
	"RH_m4eotech_guss",										//M4 Eotech
	"30Rnd_556x45_Stanag",								//30Rnd 5.56x45 Stanag Mag
	"RH_mp7_guss",												//HK MP-7
	"RH_mp7aim_guss",											//HK MP-7 CCO
	"RH_mp7eot_guss",											//HK MP-7 Holo
	"RH_46x30mm_40RND_Mag"								//40rnd Mp7 mag
];

//Gang Shop
_gangshop_buy = [
	"RH_g19t",														//Glock 19 Tan
	"RH_17Rnd_9x19_g17",									//G17 mag
	"RH_p38",															//P38
	"RH_8Rnd_9x19_p38",										//P38 Mag
	"RH_tt33",														//TT33
	"RH_8Rnd_762_tt33",										//TT33 Mag
	"RH_browninghp",											//Browning HP 9mm
	"RH_13Rnd_9x19_bhp",									//Browning Mag
	"RH_muzi",														//Micro Uzi
	"RH_32rnd_9x19_Muzi",									//32rd Micro Uzi Mag
	"RH_uzi",															//Uzi
	"RH_9mm_32RND_Mag",										//32rd 9mm Mag
	"RH_tmpeot",													//TMP EOT
	"30Rnd_9x19_MP5",											//30Rnd 9mm MP5 Mag
	"RH_fmg9",														//fmg9
	"RH_9mm_32RND_Mag"										//32rd 9mm Mag
];

//Civilian Clothing
_civilian_Clothing = [
	"Functionary1",												//Black Suit
	"Functionary2",												//Brown Suit
	"Worker2",														//Worker Green Vest
	"Woodlander3",												//WoodLander Brown
	"Doctor",															//Doctor
	"Rocker2",														//Dark Rocker
	"TK_CIV_Takistani01_EP1",							//Takistani (sweater)
	"TK_CIV_Takistani02_EP1",							//Takistani (jacket)
	"TK_CIV_Takistani03_EP1",							//Takistani (hat)
	"TK_CIV_Worker01_EP1",								//Worker (red)
	"TK_CIV_Worker02_EP1"									//Worker (brown)
];

//Tactical Military Clothing
_tacticalMilitary_Clothing = [
	"Soldier_TL_PMC",											//Team Leader
	"Soldier_Pilot_PMC",									//Team Pilot
	"Reynolds_PMC",												//Team Sniper
	"Dixon_PMC",													//Team Solider (American)
	"Ry_PMC"															//Team Solider (Asian)
];

//Military Surplus
_militarySurplus_Clothing = [
	"GUE_Soldier_Sniper",									//Soldier Sniper
	"TK_Special_Forces_EP1",							//Taliban Solider
	"TK_Soldier_Officer_EP1",							//Taliban Commander
	"TK_Soldier_EP1",											//Taliban Solider
	"TK_Aziz_EP1",												//Swag Taliban
	"TK_GUE_Soldier_5_EP1",								//Guerilla (Turban)
	"TK_GUE_Soldier_AAT_EP1",							//Guerilla (Face-Covered)
	"TK_GUE_Soldier_EP1",									//Guerilla 2 (Face-Covered
	"TK_INS_Soldier_TL_EP1",							//Team Leader
	"TK_INS_Soldier_AA_EP1"								//Specialist
];

//Untrained EMS
_td = [
	"olrpg_f350_ambo_emt1",								//F350 Ambulance
	"olrpg_gmc_emt2_ambo",								//GMC Ambulance
	"supgrade1",													//Shocks 1
	"supgrade2",													//Fuel Injection 2
	"wulf",																//Wulf Energy Drink
	"Bread",															//Cheeseburger
	"doshd",															//Wolf's Meaty Hot Dog
	"TreeFixer"														//Tree Fixer
];

//EMT 1 Box
_td2 = [
	"olrpg_f350_ambo_untrained",					//F350 Ambulance
	"olrpg_gmc_untrained_ambo",						//GMC Ambulance
	"olrpg_brush_5",											//F350 Brush 5
	"supgrade1",													//Shocks 1
	"supgrade2",													//Fuel Injection 2
	"supgrade3",													//Violator 3
	"wulf",																//Wulf Energy Drink
	"Bread",															//Cheeseburger
	"doshd",															//Wolf's Meaty Hot Dog
	"TreeFixer"														//Tree Fixer
];

//EMT 2 Box
_td3 = [
	"olrpg_f350_ambo_emt2",								//F350 Ambulance
	"olrpg_gmc_emt1_ambo",								//GMC Ambulance
	"supgrade1",													//Shocks 1
	"supgrade2",													//Fuel Injection 2
	"supgrade3",													//Violator 3
	"supgrade4",													//Interceptor 4
	"wulf",																//Wulf Energy Drink
	"Bread",															//Cheeseburger
	"doshd",															//Wolf's Meaty Hot Dog
	"TreeFixer"														//Tree Fixer
];

//EMT 3 Box
_td4 = [
	"olrpg_gmc_fire_ambo",								//GMC Ambulance Fire Department
	"firetruck",													//KME Engine 1
	"il_kw_tanker",												//KW T800 Tanker 4
	"laddertruck",												//KME Ladder 7
	"olrpg_brush_5",											//F350 Brush 5
	"supgrade1",													//Shocks 1
	"supgrade2",													//Fuel Injection 2
	"supgrade3",													//Violator 3
	"supgrade4",													//Interceptor 4
	"wulf",																//Wulf Energy Drink
	"Bread",															//Cheeseburger
	"doshd",															//Wolf's Meaty Hot Dog
	"TreeFixer"														//Tree Fixer
];

//EMT Fire Box
_td5 = [
	"rescue",															//KME HZ13
	"a2l_kme_res",												//KME HR9
	"a2l_kme",														//KME Engine 2
	"laddertruck2",												//Ladder 17
	"supgrade1",													//Shocks 1
	"supgrade2",													//Fuel Injection 2
	"supgrade3",													//Violator 3
	"supgrade4",													//Interceptor 4
	"wulf",																//Wulf Energy Drink
	"Bread",															//Cheeseburger
	"doshd",															//Wolf's Meaty Hot Dog
	"TreeFixer"														//Tree Fixer
];

//EMT Air Box
_td6 = [
	"UH60M_MEV_EP1",											//Black Hawk MEV
	"yup_HH60J",													//HH-60J Jayhawk
	"ibr_as350",													//AS350 Rescue
	"olrpg_EMS_bell206",									//Bell 206 (EMS)
	"NVGoggles",													//NVGoggles
	"wulf",																//Wulf Energy Drink
	"Bread",															//Cheeseburger
	"doshd",															//Wolf's Meaty Hot Dog
	"TreeFixer"														//Tree Fixer
];

//EMT Command Box
_td7 = [
	"olrpg_emschief_cv",									//Crown Victoria (Chief of EMS)
	"olrpg_emschief",											//Chevy Tahoe (Chief of EMS)
	"olrpg_emsdistrictchief",						  //Chevy Tahoe (District Chief)
	"olrpg_emsyoshi",											//Chevy Tahoe (Yoshi)
	"olrpg_emslt",											  //Chevy Tahoe (EMS Lt)
	"olrpg_fdlt",												  //Chevy Tahoe (Fire Deparment Lt)
	"olrpg_emssupervisor",								//Chevy Tahoe (Fire Deparment Supervisor)
	"olrpg_fdsupervisor",									//Chevy Tahoe (AMR Supervisor)
	"olrpg_ems_cvslk",										//Crown Victoria (American Medical Response)
	"il_silverado_pd",										//Fire Rescue Silverado
	"fire_atv",														//ESU - ATV
	"engine",															//Rescue Engine 12
	"a2l_kme_air",												//KME Engine 3
	"olrpg_gmc_breast_ambo",							//GMC Ambulance (Breast Cancer)
	"supgrade1",													//Shocks 1
	"supgrade2",													//Fuel Injection 2
	"supgrade3",													//Violator 3
	"supgrade4",													//Interceptor 4
	"supgrade5",													//Fast And Furious 5
	"wulf",																//Wulf Energy Drink
	"Bread",															//Cheeseburger
	"doshd",															//Wolf's Meaty Hot Dog
	"TreeFixer"														//Tree Fixer
];

//Car Items
_rm = [
	"supgrade1",													//Shocks 1
	"supgrade2",													//Fuel Injection 2
	"RepairKitsBreaksShops",							//Repair Kit
	"kanister"														//Gas Can
];

//Blackmarket
_bm = [
	"RepairKitsBreaksShops",							//Repair Kit
	"lockpick",														//Lockpick
	"ziptie",															//Zip Tie
	"codeb",															//Digital Code Breaker
	"Gag",																//Gag
	"lighter",														//Lighter
	"medikit",														//Med-kit
	"supgrade3",													//Violator 3
	"supgrade4",													//Interceptor 4
	"drill",															//StrongArm MiniRig Drill
	"safehack_bm",												//Vault Code Cracker
	"JailCracker",												//Jail Door Cracker
	"Sa58V_CCO_EP1_bm",										//Sa58V CCO
	"30Rnd_762x39_SA58",									//30Rnd Sa58
	"RH_mk18dc_bm",												//Mk18 Desert
	"RH_mk18dcaim_bm",										//Mk18 Desert Aimpoint
	"RH_mk18dceot_bm",										//Mk18 Desert EOTech
	"M4A1_Aim_camo_bm",										//M4A1 Aimpoint Camo
	"RH_M4a1eotech_bm",										//M4A1 EOTech
	"M4A3_CCO_EP1_bm",										//M4A3 CCO
	"RH_hk416aim_bm",											//HK416 Aimpoint
	"RH_hk416eotech_bm",									//HK416 EOTech
	"30Rnd_556x45_Stanag",								//30 Round Stanag
	"RH_deagle_bm",												//Desert Eagle
	"RH_Deagles_bm",											//Desert Eagle Silver
	"RH_7Rnd_50_AE",											//Desert Eagle Mag
	"RH_aks47s_bm",												//AK47 Silver
	"RH_rk95_bm",													//RK95
	"RH_Rk95aim_bm",											//RK95 Aimpoint
	"30Rnd_762x39_AK47",									//30rd AK/RK95/HK32 Mag
	"BAF_LRR_scoped_bm",									//L115A3
	"5Rnd_86x70_L115A1",									//5 Round Lapua Sniper Ammo
	"RH_SVD_bm",													//SVD
	"10Rnd_762x54_SVD",										//10Rnd 7.62mm SVD Mag
	"RH_PDR_bm",													//Magpul PDR
	"RH_pdraim_bm",												//Magpul PDR (Aimpoint)
	"RH_pdreot_bm",												//Magpul PDR (EOTech)
	"30Rnd_556x45_Stanag_bm",							//30 Round Stanag
	"MP5A5_bm",														//MP5A5
	"30Rnd_9x19_MP5_bm",									//30 Round MP5 Mag
	"RH_pp2000_bm",												//PP2000
	"RH_pp2000aim_bm",										//PP2000 (Aimpoint)
	"KPFS_PM3_bm",												//PM63RAK
	"KPFS_25Rnd_pm_bm"										//PM63RAK Magazine
];


/*
[OL_Shop_*, "* Shops", OL_Shop_*Shop, OL_Shop_*VehSpawn, [
	["Shop Display [NoWL]", _buyArray, _sellArray, "[getPlayerUID player]"]
	["Shop Display", _buyArray, _sellArray, "Whitelist_ID"]
	["Shop Display", _buyArray, _sellArray, "Whitelist_ID"]
	["Shop Display", _buyArray, _sellArray, "Whitelist_ID"]
	["Shop Display", _buyArray, _sellArray, "Whitelist_ID"]
	["Shop Display", _buyArray, _sellArray, "Whitelist_ID"]
], "Other Conditions"]
]
*/

OL_ShopsArray = [
	[OL_Shop_SWAT, "S.W.A.T. Shops", OL_Shop_SWAT, [
		["S.W.A.T. Probie", _copswat1, _copswat2, "SWAT_id", "OL_Shop_SWAT_VehSpawn"],
		["S.W.A.T. Operator", _copswat2, _copswat2, "SWAT_id", "OL_Shop_SWAT_VehSpawn"],
		["S.W.A.T. Specalist", _copswat3, _copswat3, "SWAT_id", "OL_Shop_SWAT_VehSpawn"],
		["S.W.A.T. Command", _copswat5, _copswat5, "SWAT_id", "OL_Shop_SWAT_VehSpawn"],
		["S.W.A.T. Marksman", _copswat4, _copswat4, "SWAT_id", "OL_Shop_SWAT_VehSpawn"],
		["S.W.A.T. Vehicles", _copswatvehicle, _copswatvehicle, "SWAT_id", "OL_Shop_SWAT_VehSpawn"]
	], "iscop"],
	[OL_Shop_EMT, "E.M.T. Shops", OL_Shop_EMT, [
		["E.M.T. Probie", _td, _td, "[getPlayerUID player]", "OL_Shop_EMTVehSpawn"],
		["E.M.T. 1", _td2, _td2, "EMT1_id", "OL_Shop_EMTVehSpawn"],
		["E.M.T. 2", _td3, _td3, "EMT2_id", "OL_Shop_EMTVehSpawn"],
		["FireFighter 1", _td4, _td4, "EMT3_id", "OL_Shop_EMTVehSpawn"],
		["FireFighter 2", _td5, _td5, "FD_id", "OL_Shop_EMTVehSpawn"],
		["E.M.T. Command", _td7, _td7, "EMTSupervisor_id", "OL_Shop_EMTVehSpawn"]
	], "ismedic"],
	[OL_Shop_EMTAir, "E.M.T. Air Shops", OL_Shop_EMTAir, [
		["C.F.R. Aviation", _td6, _td6, "AirESU_id", "OL_CFR_AIRSPAWN"]
	], "ismedic"],
	[OL_Shop_EMTSub, "E.M.T. Sub-Fire Shops", OL_Shop_EMTSub, [
		["E.M.T. Probie", _td, _td, "[getPlayerUID player]", "OL_Shop_EMTSubVehSpawn"],
		["E.M.T. 1", _td2, _td2, "EMT1_id", "OL_Shop_EMTSubVehSpawn"],
		["E.M.T. 2", _td3, _td3, "EMT2_id", "OL_Shop_EMTSubVehSpawn"],
		["FireFighter 1", _td4, _td4, "EMT3_id", "OL_Shop_EMTSubVehSpawn"],
		["FireFighter 2", _td5, _td5, "FD_id", "OL_Shop_EMTSubVehSpawn"],
		["E.M.T. Command", _td7, _td7, "EMTSupervisor_id", "OL_Shop_EMTSubVehSpawn"],
		["C.F.R. Aviation", _td6, _td6, "AirESU_id", "tdocspawnsubair"]
	], "ismedic"],
	[OL_Shop_Undercover, "Undercover Shop", OL_Shop_Undercover, [
		["Undercover Officer", _undercover, _undercover, "Undercover_id", "OL_Shop_UndercoverVehSpawn"]
	], "iscop"],
	[OL_Shop_ClothingStore, "Civilian Clothing Shop", dummyobj, [
		["Civilian Clothing", _civilian_Clothing, _civilian_Clothing, "[getPlayerUID player]", "dummyobj"],
		["Military Surplus Clothing", _tacticalMilitary_Clothing, _tacticalMilitary_Clothing, "[getPlayerUID player]", "dummyobj"],
		["Tactical Military Clothing", _militarySurplus_Clothing, _militarySurplus_Clothing, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_ClothingStoreMSSheriff, "Sheriff Clothing Shop", dummyobj, [
		["Civilian Clothing", _civilian_Clothing, _civilian_Clothing, "[getPlayerUID player]", "dummyobj"],
		["Military Surplus Clothing", _tacticalMilitary_Clothing, _tacticalMilitary_Clothing, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_LegalWeapon, "Licensed Weapon Shop", OL_Shop_LegalWeapon, [
		["Licensed Pistols", _pistol, _pistol, "[getPlayerUID player]", "dummyobj"],
		["Licensed Submachine Guns", _sub, _sub, "[getPlayerUID player]", "dummyobj"],
		["Licensed Rifle Guns", _rifle, _rifle, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_Guss, "Illegal Weapons Dealer", OL_Shop_Guss, [
		["Illegal Weapons", _guss, _guss, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_Fuel_1, "Gas Station Shop", dummyobj, [
		["Gas Station Shelf", _fs, _fs, "[getPlayerUID player]", "dummyobj"]
	], "true"],
	[OL_Shop_Fuel_2, "Gas Station Shop", dummyobj, [
		["Gas Station Shelf", _fs, _fs, "[getPlayerUID player]", "dummyobj"]
	], "true"],
	[OL_Shop_Fuel_3, "Gas Station Shop", dummyobj, [
		["Gas Station Shelf", _fs, _fs, "[getPlayerUID player]", "dummyobj"]
	], "true"],
	[OL_Shop_Fuel_4, "Gas Station Shop", dummyobj, [
		["Gas Station Shelf", _fs, _fs, "[getPlayerUID player]", "dummyobj"]
	], "true"],
	[OL_Shop_Fuel_5, "Gas Station Shop", dummyobj, [
		["Gas Station Shelf", _fs, _fs, "[getPlayerUID player]", "dummyobj"]
	], "true"],
	[OL_Shop_Food_1, "Food Shop", dummyobj, [
		["Food", _is, _is, "[getPlayerUID player]", "dummyobj"]
	], "true"],
	[OL_Shop_Food_2, "Food Shop", dummyobj, [
		["Food", _is, _is, "[getPlayerUID player]", "dummyobj"]
	], "true"],
	[OL_Shop_JailFood, "Jail Food Shop", dummyobj, [
		["Jail Canteen", _cf, _cf, "[getPlayerUID player]", "dummyobj"]
	], "true"],
	[OL_Shop_Pub1, "Alcohol Shop", dummyobj, [
		["Alcohol Shelf", _pub, _pub, "[getPlayerUID player]", "dummyobj"]
	], "true"],
	[OL_Shop_Pub2, "Alcohol Shop", dummyobj, [
		["Alcohol Shelf", _pub, _pub, "[getPlayerUID player]", "dummyobj"]
	], "true"],
	[OL_Shop_Pub3, "Alcohol Shop", dummyobj, [
		["Alcohol Shelf", _pub, _pub, "[getPlayerUID player]", "dummyobj"]
	], "true"],
	[OL_Shop_Pub4, "Alcohol Shop", dummyobj, [
		["Alcohol Shelf", _pub, _pub, "[getPlayerUID player]", "dummyobj"]
	], "true"],
	[OL_Shop_Pub5, "Binky's Saloon", dummyobj, [
		["Binky's Saloon Alcohol Shelf", _pub, _pub, "[getPlayerUID player]", "dummyobj"]
	], "true"],
	[OL_Shop_Pub6, "Alcohol Shop", dummyobj, [
		["Alcohol Shelf", _pub, _pub, "[getPlayerUID player]", "dummyobj"]
	], "true"],
	[OL_Shop_Assassin, "Illegal Assassins Shop", OL_Shop_Assassin, [
		["Illegal Weapons", _ass, _ass, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_MayorWeapons, "Government Security Shop", OL_Shop_MayorWeapons, [
		["Government Security", _mgs, _mgs, "[getPlayerUID player]", "OL_Shop_MayorVehSpawn"]
	], "ismayor"],
	[OL_Shop_Equipment, "Equipment Shop", OL_Shop_Equipment, [
		["Equipment", _es, _es, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_EquipmentSheriff, "Equipment Shop", OL_Shop_EquipmentSheriff, [
		["Equipment", _es, _es, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_EquipmentSpeed, "Tuning Shop", dummyobj, [
		["Vehicle Tuning", _cu, _cu, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_rMartEquipment, "Vehicle Items Shop", dummyobj, [
		["Vehicle Items", _rm, _rm, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_UsedCars, "Used Cars", dummyobj, [
		["Used Vehicle Dealership", _cs1, _cs1, "[getPlayerUID player]", "OL_CIV_LANDSPAWN1"]
	], "isciv"],
	[OL_Shop_UsedCarsSheriff, "Used Cars", dummyobj, [
		["Used Vehicle Dealership", _cs1, _cs1, "[getPlayerUID player]", "OL_CIV_LANDSPAWN2"]
	], "isciv"],
	[OL_Shop_FarmEquipment, "Farm Equipment", dummyobj, [
		["Farm Vehicles Dealership", _cs2, _cs2, "[getPlayerUID player]", "OL_Shop_FarmEquipmentVehSpawn"]
	], "isciv"],
	[OL_Shop_MuscleCars, "Muscle Cars", dummyobj, [
		["Muscle Cars Dealership", _sc1, _sc1, "[getPlayerUID player]", "OL_Shop_MuscleCarVehSpawn"]
	], "isciv"],
	[OL_Shop_ChargerMazda, "Charger & Mazda Dealer", dummyobj, [
		["Charger & Mazda Dealership", _sc2, _sc2, "[getPlayerUID player]", "OL_Shop_ChargerMazdaVehSpawn"]
	], "isciv"],
	[OL_Shop_LowEndSports, "Low-End Sports Vehicles", dummyobj, [
		["Low-End Sports Dealership", _sc3, _sc3, "[getPlayerUID player]", "OL_Shop_LowEndSportsVehSpawn"]
	], "isciv"],
	[OL_Shop_MidEndSports, "Mid-Level Sports Vehicles", dummyobj, [
		["Mid-Level Sports Dealership", _sc4, _sc4, "[getPlayerUID player]", "OL_Shop_MidLvlSportsVehSpawn"]
	], "isciv"],
	[OL_Shop_HighEndSports, "High-End Sports Vehicles", dummyobj, [
		["Mid-Level Sports Dealership", _sc5, _sc5, "[getPlayerUID player]", "OL_Shop_HighEndSportsVehSpawn"]
	], "isciv"],
	[OL_Shop_Nissan, "Nissan Vehicles", dummyobj, [
		["Nissan Dealership", _sc6, _sc6, "[getPlayerUID player]", "OL_Shop_NissanVehSpawn"],
		["Nissan350z Dealership", _sc7, _sc7, "[getPlayerUID player]", "OL_Shop_NissanVehSpawn"]
	], "isciv"],
	[OL_Shop_Ford, "Ford Vehicles", dummyobj, [
		["Ford Dealership", _sc8, _sc8, "[getPlayerUID player]", "OL_Shop_FordVehSpawn"]
	], "isciv"],
	[OL_Shop_BMW, "BMW Vehicles", dummyobj, [
		["BMW Dealership", _sc9, _sc9, "[getPlayerUID player]", "OL_Shop_BMWVehSpawn"]
	], "isciv"],
	[OL_Shop_Tahoe, "Tahoe Vehicles", dummyobj, [
		["Tahoe Dealership", _tahoe, _tahoe, "[getPlayerUID player]", "OL_Shop_TahoeVehSpawn"]
	], "isciv"],
	[OL_Shop_Pickup, "Pickup Vehicles", dummyobj, [
		["Pickup Dealership", _ps, _ps, "[getPlayerUID player]", "OL_Shop_PickupVehSpawn"]
	], "isciv"],
	[OL_Shop_Taxi, "Taxi Vehicles", dummyobj, [
		["Taxi Dealership", _tx, _tx, "[getPlayerUID player]", "OL_Shop_TaxiVehSpawn"]
	], "isciv"],
	[OL_Shop_Bicycle, "Bicycles", dummyobj, [
		["Bicycle Shop", _bsj, _bsj, "[getPlayerUID player]", "OL_Shop_BicycleVehSpawn"]
	], "isciv"],
	[OL_Shop_BikeShop, "Mike's Bike's", dummyobj, [
		["Motorcycle Dealership", _mbs, _mbs, "[getPlayerUID player]", "OL_Shop_BikeShopVehSpawn"],
		["Quadbike Dealership", _qbs, _qbs, "[getPlayerUID player]", "OL_Shop_BikeShopVehSpawn"],
		["Sports Motocycle Dealership", _qbss, _qbss, "[getPlayerUID player]", "OL_Shop_BikeShopVehSpawn"]
	], "isciv"],
	[OL_Shop_Truckshop, "Truck and Bus Shops", dummyobj, [
		["Truck & Bus Dealership", _ts, _ts, "[getPlayerUID player]", "OL_Shop_TruckShopVehSpawn"]
	], "isciv"],
	[OL_Shop_SportsTruck, "Sports Truck Shops", dummyobj, [
		["Sports Truck Dealership", _sts, _sts, "[getPlayerUID player]", "OL_Shop_SportsTruckShopVehSpawn"]
	], "isciv"],
	[OL_Shop_AirShop, "Aircraft Shops", dummyobj, [
		["Airplane Dealership", _as, _as, "[getPlayerUID player]", "OL_Shop_AirShopVehSpawn"],
		["Commercial Airplane Dealership", _asc, _asc, "[getPlayerUID player]", "OL_Shop_AirShopVehSpawn"],
		["Helicopters & Jets", _assa, _assa, "[getPlayerUID player]", "OL_Shop_AirShopVehSpawn"]
	], "isciv"],
	[OL_Shop_AirShopChalnik, "Chalnik Aircraft Shop", dummyobj, [
		["Helicopters & Jets", _assa, _assa, "[getPlayerUID player]", "OL_Shop_AirShopChalnikVehSpawn"],
		["Airplane Dealership", _as, _as, "[getPlayerUID player]", "OL_Shop_AirShopChalnikVehSpawn"]
	], "isciv"],
	[OL_Shop_Boat1, "Boat Shops", dummyobj, [
		["Boat Dealership", _bs, _bs, "[getPlayerUID player]", "OL_Shop_BoatVehSpawn"]
	], "isciv"],
	[OL_Shop_Boat2, "Boat Shops", dummyobj, [
		["Boat Dealership", _bs, _bs, "[getPlayerUID player]", "OL_Shop_BoatSVehSpawn"]
	], "isciv"],
	[OL_Shop_Bank_Insurance, "Bank Insurance", dummyobj, [
		["Bank Insurance", _ins, _emptyshop, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_SellResource, "Sell Resources", dummyobj, [
		["Sell Resourcese", _rs, _rs, "[getPlayerUID player]", "dummyobj"],
		["Oil Dealer", _emptyshop, _os, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_Wigsworths, "Wigworths Imporium", dummyobj, [
		["Wigworths Speed Upgrades", _wigs, _wigs, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_WhaleD, "Whale Dealer", dummyobj, [
		["Whale Dealer", _emptyshop, _ws, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_Terror, "Terror Equipment", OL_Shop_Terror, [
		["Terror Equipment", _terrorshop, _terrorshop, "[getPlayerUID player]", "OL_Shop_TerrorVehSpawn"],
		["Terror Air Vehicles", _terrorhelishop, _terrorhelishop, "[getPlayerUID player]", "OL_Shop_TerrorVehSpawn"],
		["Terror Boats", _terrorboatshop, _terrorboatshop, "[getPlayerUID player]", "OL_Shop_TerrorBoatSpawn"]
	], "isciv"],
	[OL_Shop_BarelyLegal, "Barely Legal", OL_Shop_BarelyLegal, [
		["Barely Legal", _shady, _shady, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_GangBox, "Gang Shop", OL_Shop_GangBox, [
		["Gang Shop", _gangshop_buy, _gangshop_buy, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_GangBox1, "Gang Shop", OL_Shop_GangBox1, [
		["Gang Shop", _gangshop_buy, _gangshop_buy, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_GangBox2, "Gang Shop", OL_Shop_GangBox2, [
		["Gang Shop", _gangshop_buy, _gangshop_buy, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_GangBox3, "Gang Shop", OL_Shop_GangBox3, [
		["Gang Shop", _gangshop_buy, _gangshop_buy, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_PawnShop, "Pawn Shop", dummyobj, [
		["Diamond Pawn Shop", _js, _js, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_Pharmacy, "Pharmacy", dummyobj, [
		["Pharmacy", _psc, _emptyshop, "[getPlayerUID player]", "pharmspawn"]
	], "isciv"],
	[OL_Shop_Cocaine, "Cocaine Dealer", dummyobj, [
		["Cocaine Dealer", _dsc, _dsc, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_Marijuana, "Marijuana Dealer", dummyobj, [
		["Marijuana Dealer", _dsm, _dsm, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_LSD, "LSD Dealer", dummyobj, [
		["LSD Dealer", _emptyshop, _dsl, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_Heroin, "Heroin Dealer", dummyobj, [
		["Heroin Dealer", _dsh, _dsh, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_Meth, "Meth Dealer", dummyobj, [
		["Meth Dealer", _msc, _msc, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_Organs, "Organ Dealer", dummyobj, [
		["Organ Dealer", _hsc, _hsc, "[getPlayerUID player]", "dummyobj"]
	], "isciv"],
	[OL_Shop_Cop_Untrained, "Untrained Patrol Officer Equipment", OL_Shop_Cop_Untrained, [
		["Basic Police Gear", _copbasic, _copbasic, "[getPlayerUID player]", "OL_Shop_Cop_POVehSpawn"],
		["Untrained Patrol Officer Equipment", _copuntrained, _copuntrained, "[getPlayerUID player]", "OL_Shop_Cop_POVehSpawn"]
	], "iscop"],
	[OL_Shop_Cop_PO, "Police Equipment", OL_Shop_Cop_PO, [
		["Basic Police Gear", _copbasic, _copbasic, "[getPlayerUID player]", "OL_Shop_Cop_POVehSpawn"],
		["Rookie Patrol Officer Equipment", _coppo1, _coppo1, "PO1_id", "OL_Shop_Cop_POVehSpawn"],
		["Patrol Officer Equipment", _coppo2, _coppo2, "PO2_id", "OL_Shop_Cop_POVehSpawn"],
		["Senior Patrol Officer Equipment", _coppo3, _coppo3, "PO3_id", "OL_Shop_Cop_POVehSpawn"]
	], "iscop"],
	[OL_Shop_Cop_SPV, "Police Supervisor Equipment", OL_Shop_Cop_SPV, [
		["Basic Police Gear", _copbasic, _copbasic, "[getPlayerUID player]", "OL_Shop_Cop_SPVVehSpawn"],
		["Corporal Equipment", _copcpl, _copcpl, "Cpl_id", "OL_Shop_Cop_SPVVehSpawn"],
		["Sergeant Equipment", _copsgt, _copsgt, "Sgt_id", "OL_Shop_Cop_SPVVehSpawn"]
	], "iscop"],
	[OL_Shop_Cop_CMD, "Police Command Equipment", OL_Shop_Cop_CMD, [
		["Basic Police Gear", _copbasic, _copbasic, "[getPlayerUID player]", "OL_Shop_Cop_CMDVehSpawn"],
		["Medal Equipment", _copmedal, _copmedal, "MedalRecipt_id", "OL_Shop_Cop_CMDVehSpawn"],
		["Lieutenant Equipment", _coplt, _coplt, "Lt_id", "OL_Shop_Cop_CMDVehSpawn"],
		["Captain Equipment", _copcpt, _copcpt, "Cpt_id", "OL_Shop_Cop_CMDVehSpawn"],
		["Chief Equipment", _copchief, _copchief, "Chief_id", "OL_Shop_Cop_CMDVehSpawn"]
	], "iscop"],
	[OL_Shop_Cop_FTO, "Police FTO Equipment", OL_Shop_Cop_FTO, [
		["Basic Police Gear", _copbasic, _copbasic, "[getPlayerUID player]", "OL_Shop_Cop_FTOVehSpawn"],
		["F.T.O. Equipment", _copfto, _copfto, "FTO_id", "OL_Shop_Cop_FTOVehSpawn"],
		["F.T.O. Supervisor", _copftos, _copftos, "FTO_id", "OL_Shop_Cop_FTOVehSpawn"],
		["F.T.O. Command", _copftoc, _copftoc, "FTO_id", "OL_Shop_Cop_FTOVehSpawn"]
	], "iscop"],
	[OL_Shop_Cop_K9, "Police K9 Equipment", OL_Shop_Cop_K9, [
		["Basic Police Gear", _copbasic, _copbasic, "[getPlayerUID player]", "OL_Shop_Cop_K9VehSpawn"],
		["K-9 Probation", _copk9p, _copk9p, "K9_id", "OL_Shop_Cop_K9VehSpawn"],
		["K-9 Officer", _copk9, _copk9, "K9_id", "OL_Shop_Cop_K9VehSpawn"],
		["K-9 Command", _copk9c, _copk9c, "K9_id", "OL_Shop_Cop_K9VehSpawn"]
	], "iscop"],
	[OL_Shop_Cop_SheriffEquipment, "Sheriff Equipment", OL_Shop_Cop_SheriffEquipment, [
		["Basic Police Gear", _copbasic, _copbasic, "[getPlayerUID player]", "OL_COP_LANDSPAWN2"],
		["Sheriff Deputy Equipment", _copdeputy, _copdeputy, "JrDeputy_id", "OL_COP_LANDSPAWN2"],
		["Sheriff Sergeant Deputy Equipment", _copsgtdeputy, _copsgtdeputy, "SgtDeputy_id", "OL_COP_LANDSPAWN2"],
		["Sheriff Command", _copsheriff, _copsheriff, "Sheriff_id", "OL_COP_LANDSPAWN2"]
	], "iscop"],
	[OL_Shop_Cop_SheriffDivision, "Sheriff Division Equipment", OL_Shop_Cop_SheriffDivision, [
		["Basic Police Gear", _copbasic, _copbasic, "[getPlayerUID player]", "OL_COP_LANDSPAWN2"],
		["Sheriff K-9", _copk9sheriff, _copk9sheriff, "K9_id", "OL_COP_LANDSPAWN2"],
		["Sheriff Marksman", _copsheriffmks, _copsheriffmks, "JrDeputy_id", "OL_COP_LANDSPAWN2"],
		["Sheriff D.N.R. Equipment", _copsheriffdnr, _copsheriffdnr, "JrDeputy_id", "OL_COP_LANDSPAWN2"]
	], "iscop"],
	[OL_Shop_Cop_SheriffDNR, "Sheriff D.N.R. Equipment", OL_Shop_Cop_SheriffDNR, [
		["Basic Police Gear", _copbasic, _copbasic, "[getPlayerUID player]", "OL_Shop_Cop_SheriffDNRVehSpawn"],
		["S.W.A.T. Watercraft", _copswat6, _copswat6, "SWAT_id", "OL_Shop_Cop_SheriffDNRVehSpawn"],
		["Sheriff D.N.R. Watercraft", _copcoastguard, _copcoastguard, "Coastguard_id", "OL_Shop_Cop_SheriffDNRVehSpawn"]
	], "iscop"],
	[OL_Shop_Cop_SheriffAvitaion, "Sheriff Aviation Equipment", OL_Shop_Cop_SheriffAvitaion, [
		["Basic Police Gear", _copbasic, _copbasic, "[getPlayerUID player]", "OL_Shop_Cop_SheriffAviationVehSpawn"],
		["Sheriff Aviation", _copavsh, _copavsh, "PDAviation_id", "OL_Shop_Cop_SheriffAviationVehSpawn"]
	], "iscop"],
	[OL_Shop_Cop_Avitaion, "Police Aviation Equipment", OL_Shop_Cop_Avitaion, [
		["Basic Police Gear", _copbasic, _copbasic, "[getPlayerUID player]", "OL_Shop_Cop_AviationVehSpawn"],
		["Police Aviation", _copav1, _copav1, "PDAviation_id", "OL_Shop_Cop_AviationVehSpawn"],
		["Police Operational Pilot", _copav2, _copav2, "PDAviation_id", "OL_Shop_Cop_AviationVehSpawn"]
	], "iscop"],
	[OL_Shop_Cop_CID, "Police CID Equipment", OL_Shop_Cop_CID, [
		["Basic Police Gear", _copbasic, _copbasic, "[getPlayerUID player]", "OL_Shop_Cop_CIDVehSpawn"],
		["Police CID", _cid, _cid, "Undercover_id", "OL_Shop_Cop_CIDVehSpawn"]
	], "iscop"],
	[OL_Shop_PMC, "PMC Equipment", OL_Shop_PMC, [
		["PMC Operator", _PMC, _PMC, "PMC_id", "OL_Shop_PMCVehSpawn"],
		["PMC Command", _CommandPMC, _CommandPMC, "PMCCommand_id", "OL_Shop_PMCVehSpawn"],
		["PMC Air", _PMCair, _PMCair, "PMC_id", "OL_Shop_PMCVehSpawn"]
	], "isciv"],
	[OL_Shop_BM, "Black Market", OL_Shop_BM, [
		["Black Market", _bm, _bm, "[getPlayerUID player]", "dummyobj"]
	], "isciv"]
];

{ missionNamespace setVariable [format ["%1_Array", _x select 0], _x] } forEach OL_ShopsArray;
