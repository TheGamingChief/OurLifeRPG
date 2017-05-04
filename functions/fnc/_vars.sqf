DD_HolsteredGun_Slot1 	= "";
DD_HolsteredGun_Slot2		= "";
DD_COLGROUP_GREEN       = "#58FA58";
DD_COLGROUP_RED         = "#FF0000";
DD_COLGROUP_WHITE       = "#FFFFFF";
DD_Messages					 		= [];
strn 						 				= objnull;
fn_SirenMode 				 		= 0;
strn_array 					 		= [];
shopactivescript        = 0;
platesavailable         = true;
gunrunavailable         = true;
gunrun2available        = true;
gunrun3available        = true;
OL_VarQueue             = []; //[<str>var, <anything>value, <array>[<int>timeStart, <int>timeEnd], <array>[<bool>isSetVar, <bool>isSetVarGlobal]]
Rifle_Holster           = nil;
Pistol_Holster          = nil;
Taser_Holster						= nil;
Radar_Holstered         = false;
OL_HasDisplayOpen				= false;

CP_RobScript_pub1 = [
	["SETTINGS",  "Fionas Pub", "barmoney", "fionasavailable", "Robbed Bar"],
	["GROUPCHAT", "You are now robbing the pub, Please stay near the Fiona for 30 seconds to receive the money", 	2],
	["TITLETEXT", "Put your hands up bitch, this is a robbery!", 																									5],
	["TITLETEXT", "Fiona: Like Oh My God! Really...", 																														5],
	["TITLETEXT", "Fiona: Just wait till my Sugah Daddy hears about this...", 																		5],
	["TITLETEXT", "Fiona: Ohhh Sugah Daddy gonna fuck you up...", 																								5],
	["TITLETEXT", "Fiona: Here just take it, you small dick jerk.", 																							2],
	["GROUPCHAT", "Fiona has handed you the money! Now get out of there before the cops show up!", 								0]
];

CP_RobScript_pub2 = [
	["SETTINGS",  "Southside Pub", "barmoney1", "southavailable", "Robbed Bar"],
	["GROUPCHAT", "You are now robbing the pub, Please stay near Nathan for 30 seconds to receive the money", 	  2],
	["TITLETEXT", "Put your hands up man, this is a robbery!", 																									  5],
	["TITLETEXT", "Nathan: Hey fam, im gonna to need you to settle the fuck down.", 															5],
	["TITLETEXT", "Nathan: Bruh, have you been smokin some weed or something...", 																5],
	["TITLETEXT", "Nathan: Whatever nigga, just let me open up this bitch.", 																			5],
	["TITLETEXT", "Nathan: Here take my damn money you fucking faggot.", 																					5],
	["GROUPCHAT", "Nathan has handed you the money! Now get out of there before the cops show up!", 							0]
];

CP_RobScript_pub3 = [
	["SETTINGS",  "Macks Bar", "barmoney2", "macksavailable", "Robbed Bar"],
	["GROUPCHAT", "You are now robbing the pub, Please stay near Mack for 30 seconds to receive the money", 	    2],
	["TITLETEXT", "Put your hands up old man, this is a robbery!", 																							  5],
	["TITLETEXT", "Mack: Get that gun outta my face boy!", 															                          5],
	["TITLETEXT", "Mack: Ok tough guy...", 																                                        5],
	["TITLETEXT", "Mack: God damn kids these days...", 																			                      5],
	["TITLETEXT", "Mack: Fine take it, but you better watch your back.", 																				  5],
	["GROUPCHAT", "Mack has handed you the money! Now get out of there before the cops show up!", 							  0]
];

CP_RobScript_pub4 = [
	["SETTINGS",  "Hermanns Haxe Cellar", "barmoney3", "hermannsavailable", "Robbed Bar"],
	["GROUPCHAT", "You are now robbing the bar, Please stay near Hermann for 30 seconds to receive the money", 	  2],
	["TITLETEXT", "Put your hands up old man, this is a robbery!", 																							  5],
	["TITLETEXT", "Hermann: Ok, ok I'm getting the money!", 															                        5],
	["TITLETEXT", "Hermann: This stupid shit won't open...", 																                      5],
	["TITLETEXT", "Hermann: Ok! I got it open.", 																			                            5],
	["TITLETEXT", "Hermann: Here take it.", 																				                              5],
	["GROUPCHAT", "Hermann has handed you the money! Now get out of there before the cops show up!", 							0]
];

CP_RobScript_pub5 = [
	["SETTINGS",  "Binkys Casket Saloon", "barmoney5", "binkysavailable", "Robbed Bar"],
	["GROUPCHAT", "You are now robbing the bar, Please stay near Binky for 30 seconds to receive the money", 	    2],
	["TITLETEXT", "Put your hands up bro, this is a robbery!", 																							      5],
	["TITLETEXT", "Binky: What The Hell Are You Doing Over There, Get Your Hands Off My Caskets!", 					      5],
	["TITLETEXT", "Binky: Theres No Need For A Gun Put That Away.", 																              5],
	["TITLETEXT", "Binky: Ok, Ok Let Me Get You The Money.", 																			                5],
	["TITLETEXT", "Binky: Here Take The Money, Just Remember I Will Be Your Final Designated Driver.", 		        5],
	["GROUPCHAT", "Binky has handed you the money! Now get out of there before the cops show up!", 							  0]
];

CP_RobScript_donutguy = [
	["SETTINGS",  "East Dunkin Bronuts", "donutmoney1", "robdonutavailable", "Robbed Dunkin Bronuts"],
	["GROUPCHAT", "You are robbing the store, stay near the front counter for 30 seconds to receive the money", 	2],
	["TITLETEXT", "Put your hands up lady this is a robbery!", 																							      5],
	["TITLETEXT", "Employee: We just opened sir, we dont have very much money!", 					                        5],
	["TITLETEXT", "Employee: Oh god, which key opens this register again...", 																    5],
	["TITLETEXT", "Employee: Ok... Take it, just please dont kill me.", 																			    5],
	["TITLETEXT", "Employee: Here take some donuts too jesus...", 		                                            5],
	["GROUPCHAT", "Employee has handed you the money and donuts! Now get out of there before the cops show up!", 	0]
];

CP_RobScript_donutguy2 = [
	["SETTINGS",  "West Dunkin Bronuts", "donutmoney2", "robdonut1available", "Robbed Dunkin Bronuts"],
	["GROUPCHAT", "You are robbing the store, stay near the front counter for 30 seconds to receive the money", 	2],
	["TITLETEXT", "Put your hands up lady this is a robbery!", 																							      5],
	["TITLETEXT", "Employee: We just opened sir, we dont have very much money!", 					                        5],
	["TITLETEXT", "Employee: Oh god, which key opens this register again...", 																    5],
	["TITLETEXT", "Employee: Ok... Take it, just please dont kill me.", 																			    5],
	["TITLETEXT", "Employee: Here take some donuts too jesus...", 		                                            5],
	["GROUPCHAT", "Employee has handed you the money and donuts! Now get out of there before the cops show up!", 	0]
];

CP_RobScript_cvault = [
	["SETTINGS",  "Casino", "casinomoney", "robcasinoavailable", "Robbed Casino"],
	["GROUPCHAT", "**You are now cracking the safe, Please stay near the safe till you finish opening it**", 	    1],
	["TITLETEXT", "God damn this drill is really light!", 																							          2],
  ["PLAYMOVE",  "amovpercmstpsraswrfldnon_gear",                                                                2],
  ["PLAYSOUND", "Drill",                                                                                        0],
  ["GROUPCHAT", "Lays Drill on floor...",                                                                       5],
  ["PLAYMOVE",  "ainvpknlmstpslaywrfldnon_medic",                                                               2],
  ["PLAYSOUND", "Drill",                                                                                        0],
  ["GROUPCHAT", "Begins Drilling in the spindle hole...",                                                       5],
  ["TITLETEXT", "Damn interal relocking system!", 																							                2],
  ["PLAYMOVE",  "ainvpknlmstpslaywrfldnon_medic",                                                               2],
  ["PLAYSOUND", "Drill",                                                                                        0],
  ["GROUPCHAT", "Begins Drilling into first bolt...",                                                           5],
  ["TITLETEXT", "There better be alot of money in this vault!", 																							  2],
  ["PLAYMOVE",  "ainvpknlmstpslaywrfldnon_medic",                                                               2],
  ["PLAYSOUND", "Drill",                                                                                        0],
  ["GROUPCHAT", "Begins Drilling into second bolt...",                                                          5],
  ["TITLETEXT", "Come on... Come on... Come on...", 																							              2],
  ["PLAYMOVE",  "ainvpknlmstpslaywrfldnon_medic",                                                               2],
  ["PLAYSOUND", "Drill",                                                                                        0],
  ["GROUPCHAT", "Begins Drilling into third bolt...",                                                           5],
  ["TITLETEXT", "Shit... Is that the cops...", 																							                    2],
  ["PLAYMOVE",  "ainvpknlmstpslaywrfldnon_medic",                                                               2],
  ["PLAYSOUND", "Drill",                                                                                        0],
  ["GROUPCHAT", "Begins Drilling into last bolt...",                                                            5],
  ["PLAYMOVE",  "amovpercmstpsraswrfldnon_gear",                                                                0],
  ["GROUPCHAT", "Opening Safe...",                                                                              0],
  ["PLAYSOUND", "Unlock",                                                                                       5],
  ["GROUPCHAT", "Your Drill tip broke as you pull it out of the door...",                                       0],
  ["PLAYSOUND", "Splat",                                                                                        0]
];

CP_RobScript_pharmacy = [
	["SETTINGS",  "Pharmacy", "pharmmoney", "pharmacyavailable", "Robbed Pharmacy"],
	["GROUPCHAT", "You are robbing the pharmacy, stay near Dr. Pacard for 30 seconds to receive the money", 	    2],
	["TITLETEXT", "Put your hands up Doc this is a robbery!", 																							      3],
	["TITLETEXT", "Dr. Pacard: No need for the gun mister, what do you want?", 					                          5],
	["TITLETEXT", "Well give me all the medical supplies NOW!", 																                  5],
	["TITLETEXT", "Dr. Pacard: Mister, I only have a few supplies but you can have the money...", 								5],
  ["TITLETEXT", "Fine, give me whats left and all the damn money!", 		                                        5],
  ["TITLETEXT", "Dr. Pacard: Im trying Mister...", 		                                                          5],
  ["TITLETEXT", "Hurry up Doc, I hear the cops coming...", 		                                                  5],
	["TITLETEXT", "Dr. Pacard: Here take it all, and leave...", 		                                              3],
  ["GROUPCHAT", "Dr. Pacard hands you the money! Now get out of there before the cops show up!", 							  0]
];

CP_RobScript_fuel2 = [
	["SETTINGS",  "Gas n Porn", "station2money", "pornavailable", "Robbed Station"],
	["GROUPCHAT", "You are now robbing Gas n Porn, Please stay near the Clerk for 20 seconds to receive the money", 		2],
	["TITLETEXT", "Put your hands up this is a robbery!", 																							      					5],
	["TITLETEXT", "Clerk: Yes sir, let me open the register...", 																							      		5],
	["TITLETEXT", "Clerk: Damn registers stuck!", 																							     							 		  5],
	["TITLETEXT", "Clerk: Here, take the money!", 																							      									5],
	["GROUPCHAT", "The employee has handed you the money! Now get out of there before the cops show up!", 							0]
];

CP_RobScript_fuel4 = [
	["SETTINGS",  "Gas n Pit", "station4money", "gaspitavailable", "Robbed Station"],
	["GROUPCHAT", "You are now robbing Gas n Pit, Please stay near the Clerk for 20 seconds to receive the money",		  2],
	["TITLETEXT", "Put your hands up this is a robbery!", 																							      					5],
	["TITLETEXT", "Clerk: Yes sir, let me open the register...", 																							     		 	5],
	["TITLETEXT", "Clerk: Damn registers stuck!", 																							     									  5],
	["TITLETEXT", "Clerk: Here, take the money!", 																							      									5],
	["GROUPCHAT", "The employee has handed you the money! Now get out of there before the cops show up!", 							0]
];

CP_RobScript_fuel5 = [
	["SETTINGS",  "Gas n Chips", "station5money", "gaschipsavailable", "Robbed Station"],
	["GROUPCHAT", "You are now robbing Gas n Chips, Please stay near the Clerk for 20 seconds to receive the money",		2],
	["TITLETEXT", "Put your hands up this is a robbery!", 																							      					5],
	["TITLETEXT", "Clerk: Yes sir, let me open the register...", 																							     		 	5],
	["TITLETEXT", "Clerk: Damn registers stuck!", 																							     									  5],
	["TITLETEXT", "Clerk: Here, take the money!", 																							      									5],
	["GROUPCHAT", "The employee has handed you the money! Now get out of there before the cops show up!", 							0]
];

CP_RobScript_fuel7 = [
	["SETTINGS",  "Mikes Hard Gas", "station7money", "mikesavailable", "Robbed Station"],
	["GROUPCHAT", "You are now robbing Mikes Hard Gas, Please stay near the Clerk for 20 seconds to receive the money",	2],
	["TITLETEXT", "Put your hands up this is a robbery!", 																							      					5],
	["TITLETEXT", "Clerk: Yes sir, let me open the register...", 																							     		 	5],
	["TITLETEXT", "Clerk: Damn registers stuck!", 																							     									  5],
	["TITLETEXT", "Clerk: Here, take the money!", 																							      									5],
	["GROUPCHAT", "The clerk has handed you the money! Now get out of there before the cops show up!", 									0]
];

CP_RobScript_fuel8 = [
	["SETTINGS",  "Gas Hause", "station8money", "hausavailable", "Robbed Station"],
	["GROUPCHAT", "You are now robbing Gas Hause, Please stay near the Clerk for 20 seconds to receive the money",			2],
	["TITLETEXT", "Put your hands up this is a robbery!", 																							      					5],
	["TITLETEXT", "Clerk: Yes sir, let me open the register...", 																							     		 	5],
	["TITLETEXT", "Clerk: Damn registers stuck!", 																							     									  5],
	["TITLETEXT", "Clerk: Here, take the money!", 																							      									5],
	["GROUPCHAT", "The clerk has handed you the money! Now get out of there before the cops show up!", 									0]
];
