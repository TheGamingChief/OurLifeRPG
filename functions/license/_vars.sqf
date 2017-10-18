// Edited by Kyle W. :)

OL_LicenseArray = [
  /*[displayName<string>, license name<string>, cost<int>, place to add<array>, whitelist<string>]*/
  //Civ
  ["Clothing License",                                 "OL_License_civ_clothing",         150000,   ["OL_ATM_Mall", "OL_Shop_ClothingStore_1, OL_Shop_ClothingStore_2"],        "[getPlayerUID player]"],
  ["Hunting License",                                  "OL_License_civ_hunting",          20000,    ["OL_ATM_Swag"],                                                            "[getPlayerUID player]"],
  ["Fishing License",                                  "OL_License_civ_fishing",          20000,    ["OL_Shop_Scuba", "OL_Shop_Boat"],                                          "[getPlayerUID player]"],
  ["Pistol License",                                   "OL_License_civ_pistol",           50000,    ["OL_ATM_Swag", "OL_Shop_Undercover"],                                      "[getPlayerUID player]"],
  ["Submachine Gun License",                           "OL_License_civ_submachinegun",    100000,   ["OL_ATM_Swag"],                                                            "[getPlayerUID player]"],
  ["Rifle License",                                    "OL_License_civ_rifle",            150000,   ["OL_ATM_Swag", "OL_Shop_Undercover"],                                      "[getPlayerUID player]"],
  ["Mayor License",                                    "OL_License_civ_mayor",            1000,     ["OL_Shop_DMV", "OL_Shop_DMV2"],                                            "[getPlayerUID player]"],
  ["Boat License",                                     "OL_License_civ_boat",             1500,     ["OL_Shop_DMV", "OL_Shop_DMV2"],                                            "[getPlayerUID player]"],
  ["Ferry Captain License",                            "OL_License_civ_ferryCaptain",     2000,     ["OL_Shop_DMV", "OL_Shop_DMV2"],                                            "[getPlayerUID player]"],
  ["Commercial Air License",                           "OL_License_civ_commercialAir",    100000,   ["OL_Shop_Air"],                                                            "[getPlayerUID player]"],
  ["Air License",                                      "OL_License_civ_air",              20000,    ["OL_Shop_Air"],                                                            "[getPlayerUID player]"],
  ["Bus License",                                      "OL_License_civ_bus",              1000,     ["OL_Shop_Truckshop"],                                                      "[getPlayerUID player]"],
  ["Truck License",                                    "OL_License_civ_truck",            5000,     ["OL_Shop_Truckshop"],                                                      "[getPlayerUID player]"],
  ["Taxi License",                                     "OL_License_civ_taxi",             5000,     ["OL_Shop_Taxi"],                                                           "[getPlayerUID player]"],
  ["Driver's License",                                 "OL_License_civ_drivers",          2500,     ["OL_Shop_DMV", "OL_Shop_DMV2", "OL_Shop_Undercover"],                      "[getPlayerUID player]"],
  ["Oil Processing License",                           "OL_License_civ_oil",              10000,    ["OL_Shop_Oil"],                                                            "[getPlayerUID player]"],
  ["Baker's License",                                  "OL_License_civ_bakers",           10000,    ["OL_Shop_Bakery"],                                                         "[getPlayerUID player]"],
  ["Towing License",                                   "OL_License_civ_Towing",           30000,    ["OL_Shop_Truckshop", "OL_ATM_Tow"],                                        "[getPlayerUID player]"],
  ["Field Medic Training",                             "OL_License_civ_FieldMedic",       75000,    ["OL_Shop_Pharmacy"],                                                       "[getPlayerUID player]"],

  //PMC
  ["PMC License",                                      "OL_License_civ_PMC",              50000,    ["OL_ATM_PMC"],                                                             "PMC_id"], //Only change as license is expensive af
  ["PMC Command License",                              "OL_License_civ_PMCCommand",       50000,    ["OL_ATM_PMC"],                                                             "CommandPMC_id"],

  //Terror
  ["Illegal Assassin Weapons Fee",                     "OL_License_civ_assassin",         500000,   ["OL_Shop_Assassin"],                                                       "[getPlayerUID player]"],
  ["Illegal Terrorist License",                        "OL_License_civ_terror",           999999,   ["OL_Shop_Terror"],                                                         "[getPlayerUID player]"],

  //Gangs
  ["West Cocaine Drug Processor's License",            "OL_License_civ_cocaineGA1",       50000,    ["OL_Shop_Gangarea1"],                                                      "[getPlayerUID player]"],
  ["West LSD Drug Processor's License",                "OL_License_civ_lsdGA1",           50000,    ["OL_Shop_Gangarea1"],                                                      "[getPlayerUID player]"],
  ["Havana Heroin Drug Processor's License",           "OL_License_civ_heroinGA2",        50000,    ["OL_Shop_Gangarea2"],                                                      "[getPlayerUID player]"],
  ["Havana LSD Drug Processor's License",              "OL_License_civ_lsdGA2",           50000,    ["OL_Shop_Gangarea2"],                                                      "[getPlayerUID player]"],
  ["East Heroin Drug Processor's License",             "OL_License_civ_heroinGA3",        50000,    ["OL_Shop_Gangarea3"],                                                      "[getPlayerUID player]"],
  ["East Marijuana Drug Processor's License",          "OL_License_civ_marijuanaGA3",     50000,    ["OL_Shop_Gangarea3"],                                                      "[getPlayerUID player]"],
  ["Safe House Heroin Drug Processor's License",       "OL_License_civ_heroinGA4",        50000,    ["OL_Shop_Gangarea4"],                                                      "[getPlayerUID player]"],
  ["Safe House Marijuana Drug Processor's License",    "OL_License_civ_marijuanaGA4",     50000,    ["OL_Shop_Gangarea4"],                                                      "[getPlayerUID player]"],

  //EMS
  ["Untrained EMT License",                            "OL_License_emt_emtUntrained",     100,      ["OL_ATM_MainFire", "OL_ATM_SubFire"],                                      "[getPlayerUID player]"],
  ["EMT 1 License",                                    "OL_License_emt_emt1",             100,      ["OL_ATM_MainFire", "OL_ATM_SubFire"],                                      "EMT1_id"],
  ["EMT 2 License",                                    "OL_License_emt_emt2",             100,      ["OL_ATM_MainFire", "OL_ATM_SubFire"],                                      "EMT2_id"],
  ["FireFighter 1 License",                            "OL_License_emt_fd1",              100,      ["OL_ATM_MainFire", "OL_ATM_SubFire"],                                      "FD_id"],
  ["FireFighter 2 License",                            "OL_License_emt_fd2",              100,      ["OL_ATM_MainFire", "OL_ATM_SubFire"],                                      "FD_id"],
  ["EMT Air License",                                  "OL_License_emt_emtAir",           100,      ["OL_ATM_MainFire", "OL_ATM_SubFire"],                                      "AirESU_id"],
  ["EMT Command License",                              "OL_License_emt_emtCommand",       100,      ["OL_ATM_MainFire", "OL_ATM_SubFire"],                                      "EMTSupervisor_ID"],

  //PD
  ["Basic Patrol License",                             "OL_License_cop_basicPatrol",      1000,     ["OL_ATM_PD", "OL_ATM_PDCommand", "OL_Shop_Undercover", "OL_ATM_Sheriff"],  "[getPlayerUID player]"],
  ["Chief License",                                    "OL_License_cop_Chief",            10000,    ["OL_ATM_PDCommand"],                                                       "Chief_id"],
  ["Captain License",                                  "OL_License_cop_Captain",          10000,    ["OL_ATM_PDCommand"],                                                       "Cpt_id"],
  ["Lieutenant License",                               "OL_License_cop_Lieutenant",       10000,    ["OL_ATM_PDCommand"],                                                       "Lt_id"],
  ["Sergeant License",                                 "OL_License_cop_Sergeant",         10000,    ["OL_ATM_PDSgt"],                                                           "Sgt_id"],
  ["Corporal License",                                 "OL_License_cop_Corporal",         10000,    ["OL_ATM_PDSgt"],                                                           "Cpl_id"],

  //Sheriff
  ["Sheriff License",                                  "OL_License_cop_Sheriff",          10000,    ["OL_ATM_Sheriff"],                                                         "Sheriff_id"],
  ["Sergeant Deputy License",                          "OL_License_cop_SgtDeputy",        10000,    ["OL_ATM_Sheriff"],                                                         "SgtDeputy_id"],
  ["Deputy License",                                   "OL_License_cop_Deputy",           10000,    ["OL_ATM_Sheriff"],                                                         "JrDeputy_id"],

  //Divisions
  ["FTO License",                                      "OL_License_cop_FTO",              10000,    ["OL_ATM_FTO"],                                                             "FTO_id"],
  ["K-9 Officer License",                              "OL_License_cop_k9",               10000,    ["OL_ATM_K9", "OL_ATM_Sheriff"],                                            "K9_id"],
  ["PD Aviation License",                              "OL_License_cop_pdAviation",       10000,    ["OL_ATM_PDAviation"],                                                      "PDAviation_id"],
  ["S.W.A.T. License",                                 "OL_License_cop_swat",             10000,    ["OL_ATM_SWAT"],                                                            "SWAT_id"], // :)
  ["Sheriff Marine License",                           "OL_License_cop_maritime",         10000,    ["OL_ATM_CoastGuard"],                                                      "CoastGuard_id"],
  ["CID License",                                      "OL_License_cop_CID",              10000,    ["OL_ATM_CID"],                                                             "Undercover_id"],
  ["Undercover License",                               "OL_License_cop_Undercover",       10000,    ["OL_Shop_Undercover"],                                                     "Undercover_id"]
];
