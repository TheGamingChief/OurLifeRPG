OL_LicenseArray = [
  /*[displayName<string>, license name<string>, cost<int>, place to add<array>, whitelist<string>]*/
  //Civ
  ["Clothing License",                                 "OL_License_civ_clothing",         150000,   ["OL_ATM_Mall", "OL_Shop_ClothingStore", "OL_Shop_ClothingStore_1", "OL_Shop_ClothingStore_2"],         "[getPlayerUID player]"],
  ["Mayor License",                                    "OL_License_civ_mayor",            1000,     ["OL_Shop_DMV", "OL_Shop_DMV2"],                                                                        "[getPlayerUID player]"],
  ["Hunting License",                                  "OL_License_civ_hunting",          20000,    ["OL_ATM_Swag"],                                                                                        "[getPlayerUID player]"],
  ["Fishing License",                                  "OL_License_civ_fishing",          20000,    ["OL_Shop_Scuba", "OL_Shop_Boat"],                                                                      "[getPlayerUID player]"],
  ["Pistol License",                                   "OL_License_civ_pistol",           50000,    ["OL_ATM_Swag", "OL_ATM_UC"],                                                                           "[getPlayerUID player]"],
  ["SMG License",                                      "OL_License_civ_submachinegun",    100000,   ["OL_ATM_Swag"],                                                                                        "[getPlayerUID player]"],
  ["Rifle License",                                    "OL_License_civ_rifle",            150000,   ["OL_ATM_Swag", "OL_ATM_UC"],                                                                           "[getPlayerUID player]"],
  ["Boat License",                                     "OL_License_civ_boat",             1500,     ["OL_Shop_DMV", "OL_Shop_DMV2"],                                                                        "[getPlayerUID player]"],
  ["Ferry Captain License",                            "OL_License_civ_ferryCaptain",     2000,     ["OL_Shop_DMV", "OL_Shop_DMV2"],                                                                        "[getPlayerUID player]"],
  ["Comm. Air License",                                "OL_License_civ_commercialAir",    100000,   ["OL_Shop_AirShop"],                                                                                    "[getPlayerUID player]"],
  ["Air License",                                      "OL_License_civ_air",              20000,    ["OL_Shop_AirShop"],                                                                      "[getPlayerUID player]"],
  ["Bus License",                                      "OL_License_civ_bus",              1000,     ["OL_Shop_Truckshop"],                                                                                  "[getPlayerUID player]"],
  ["Truck License",                                    "OL_License_civ_truck",            5000,     ["OL_Shop_Truckshop"],                                                                                  "[getPlayerUID player]"],
  ["Taxi License",                                     "OL_License_civ_taxi",             5000,     ["OL_Shop_Taxi"],                                                                                       "[getPlayerUID player]"],
  ["Driver's License",                                 "OL_License_civ_drivers",          2500,     ["OL_Shop_DMV", "OL_Shop_DMV2", "OL_ATM_UC"],                                                           "[getPlayerUID player]"],
  ["Oil Processing",                                   "OL_License_civ_oil",              10000,    ["OL_Shop_Oil", "OL_Shop_Oil_1", "OL_Shop_Oil_2", "OL_Shop_Oil_3", "OL_Shop_Oil_4"],                    "[getPlayerUID player]"],
  ["Baker's License",                                  "OL_License_civ_bakers",           10000,    ["OL_Shop_Bakery"],                                                                                     "[getPlayerUID player]"],
  ["Towing License",                                   "OL_License_civ_Towing",           30000,    ["OL_Shop_Truckshop"],                                                                                  "[getPlayerUID player]"],
  ["Field Medic Training",                             "OL_License_civ_FieldMedic",       75000,    ["OL_Shop_Pharmacy"],                                                                                   "[getPlayerUID player]"],

  //Terror
  ["Assassin Weapons Fee",                             "OL_License_civ_assassin",         500000,   ["OL_Shop_Assassin"],                                                                                   "[getPlayerUID player]"],
  ["Terror License",                                   "OL_License_civ_terror",           999999,   ["OL_Shop_Terror"],                                                                                     "[getPlayerUID player]"],

  //Gangs
  ["Cocaine Processing",                               "OL_License_civ_cocaineGA1",       50000,    ["OL_Shop_Gangarea1", "OL_Shop_GangBox2"],                                                              "[getPlayerUID player]"],
  ["LSD Processing",                                   "OL_License_civ_lsdGA1",           50000,    ["OL_Shop_Gangarea1", "OL_Shop_GangBox2"],                                                              "[getPlayerUID player]"],
  ["Heroin Processing",                                "OL_License_civ_heroinGA2",        50000,    ["OL_Shop_Gangarea2", "OL_Shop_GangBox1"],                                                              "[getPlayerUID player]"],
  ["LSD Processing",                                   "OL_License_civ_lsdGA2",           50000,    ["OL_Shop_Gangarea2", "OL_Shop_GangBox1"],                                                              "[getPlayerUID player]"],
  ["Heroin Processing",                                "OL_License_civ_heroinGA3",        50000,    ["OL_Shop_Gangarea3", "OL_Shop_GangBox"],                                                               "[getPlayerUID player]"],
  ["Marijuana Processing",                             "OL_License_civ_marijuanaGA3",     50000,    ["OL_Shop_Gangarea3", "OL_Shop_GangBox"],                                                               "[getPlayerUID player]"],
  ["Heroin Processing",                                "OL_License_civ_heroinGA4",        50000,    ["OL_Shop_Gangarea4", "OL_Shop_GangBox3"],                                                              "[getPlayerUID player]"],
  ["Marijuana Processing",                             "OL_License_civ_marijuanaGA4",     50000,    ["OL_Shop_Gangarea4", "OL_Shop_GangBox3"],                                                              "[getPlayerUID player]"],

  //EMS
  ["Untrained EMT License",                            "OL_License_emt_emtUntrained",     100,      ["OL_ATM_MainFire", "OL_ATM_SubFire"],                                                                  "[getPlayerUID player]"],
  ["EMT 1 License",                                    "OL_License_emt_emt1",             100,      ["OL_ATM_MainFire", "OL_ATM_SubFire"],                                                                  "EMT1_id"],
  ["EMT 2 License",                                    "OL_License_emt_emt2",             100,      ["OL_ATM_MainFire", "OL_ATM_SubFire"],                                                                  "EMT2_id"],
  ["FireFighter 1 License",                            "OL_License_emt_fd1",              100,      ["OL_ATM_MainFire", "OL_ATM_SubFire"],                                                                  "FD_id"],
  ["FireFighter 2 License",                            "OL_License_emt_fd2",              100,      ["OL_ATM_MainFire", "OL_ATM_SubFire"],                                                                  "FD_id"],
  ["EMT Air License",                                  "OL_License_emt_emtAir",           100,      ["OL_ATM_MainFire", "OL_ATM_SubFire"],                                                                  "AirESU_id"],
  ["EMT Command License",                              "OL_License_emt_emtCommand",       100,      ["OL_ATM_MainFire", "OL_ATM_SubFire"],                                                                  "EMTSupervisor_ID"],

  //PD
  ["Basic Patrol License",                             "OL_License_cop_basicPatrol",      1000,     ["OL_ATM_PD", "OL_ATM_PDCommand", "OL_ATM_UC", "OL_ATM_Sheriff"],                                       "[getPlayerUID player]"],
  ["Chief License",                                    "OL_License_cop_Chief",            10000,    ["OL_ATM_PDCommand"],                                                                                   "Chief_id"],
  ["Captain License",                                  "OL_License_cop_Captain",          10000,    ["OL_ATM_PDCommand"],                                                                                   "Cpt_id"],
  ["Lieutenant License",                               "OL_License_cop_Lieutenant",       10000,    ["OL_ATM_PDCommand"],                                                                                   "Lt_id"],
  ["Sergeant License",                                 "OL_License_cop_Sergeant",         10000,    ["OL_ATM_PDSgt"],                                                                                       "Sgt_id"],
  ["Corporal License",                                 "OL_License_cop_Corporal",         10000,    ["OL_ATM_PDSgt"],                                                                                       "Cpl_id"],

  //Divisions
  ["FTO License",                                      "OL_License_cop_FTO",              10000,    ["OL_ATM_FTO"],                                                                                         "FTO_id"],
  ["Internal Affairs License",                         "OL_License_cop_IA",               1,        ["OL_ATM_CID"],                                                                                         "IA_id"],
  ["K-9 Officer License",                              "OL_License_cop_k9",               10000,    ["OL_ATM_PD", "OL_ATM_Sheriff"],                                                                        "K9_id"],
  ["PD Aviation License",                              "OL_License_cop_pdAviation",       10000,    ["OL_ATM_PDAviation"],                                                                                  "PDAviation_id"],
  ["S.W.A.T. License",                                 "OL_License_cop_swat",             10000,    ["OL_ATM_SWAT"],                                                                                        "SWAT_id"],
  ["Maritime License",                                 "OL_License_cop_maritime",         10000,    ["OL_ATM_CoastGuard"],                                                                                  "CoastGuard_id"],
  ["CID License",                                      "OL_License_cop_CID",              10000,    ["OL_ATM_K9"],                                                                                         "Undercover_id"],
  ["Undercover License",                               "OL_License_cop_Undercover",       10000,    ["OL_ATM_UC"],                                                                                          "Undercover_id"]
];
