Radar_Holstered         = true;
UpgradingCar            = false;
loadNotFinsihed         = false;
saveAvailable           = true;
backupavailable         = true;
gettingcar				      = 0;
gettingairvehicle       = 0;
INV_smscost		          = 100;
add_workplace		        = 1000;
copchoprespawntime      = 120;
CopWaffenAvailable      = 0;
CopIsInPrison           = false;
CopInPrisonTime         = 300;
shooting_self           = 0;
srHinbewegen            = 0;
isstunned               = false;
Antwort                 = 0;
CivTimeInPrison         = 0;
CopLog                  = [];
murderer                = [];
actionsToRemove			    = [];
isCrackingSafe		      = 0;
safeCrackFailed			    = 0;
MayorTaxes              = 0;
MayorBekommtSteuern     = 75;
chiefSteuern            = 0;
chiefBekommtSteuern     = 75;
OL_MoneyLimit           = 10000000;
OL_BankLimit				    = 15000000;
INV_hunger              = 0;
INV_HungerSchaden       = 0.1;
INV_HungerStartVal      = 1;
INV_Weight      = 60;
hungernachricht         = 0;
OL_CarSaveLimit         = 10;
wantedbonus             = 500;
StunActiveTime          = 0;
StunTimePerHit		      = 15;
MaxStunTime		          = 30;
GeldStehlenMax          = 200000;
gtbonus 				        = 10;
gtactive				        = false;
ctactive				        = false;
keyblock		            = false;
OL_earPlugs             = false;
maxboars				        = 20;
maxrabbits			        = 20;
maxmanitime			        = 2400;
powerrestorecost        = 10000;
impoundpay			        = 3000;
noholster				        = false;
MGcost					        = 10000;
PKcost					        = 10000;
SQUADcost				        = 20000;
maxinfai				        = 16;
firestrikes				      = 3;
OL_BaitCars             = [];
FTOcars                 = [];
totalstrikes			      = 3;
facworkercost			      = 10000;
maxfacworkers			      = 20;
firingcaptive			      = false;
pickingup   			      = false;
lockpicking				      = false;
planting				        = false;
cmissionactive			    = false;
cmissionactive1			    = false;
cmissionactive2			    = false;
TimerActive 			      = false;
//========Yup======
chopavailable 			 = true;
FTOavailable         = true;
IsSpinningSlots			 = false;
slots1available 		 = true;
slots2available 		 = true;
slots3available 		 = true;
treeavailable 		   = true;
robcasinoavailable	 = true;
Brycesavailable 		 = true;
casinoavailable 		 = true;
pornavailable 			 = true;
houseavailable 			 = true;
gaspitavailable 		 = true;
mannyavailable 			 = true;
mikesavailable 			 = true;
hausavailable 			 = true;
haus1available 			 = true;
fionasavailable 		 = true;
macksavailable 			 = true;
southavailable 			 = true;
hermannsavailable 	 = true;
binkysavailable 		 = true;
chipsavailable 			 = true;
platesavailable 		 = true;
gunrunavailable 		 = true;
gunrun2available 		 = false;
gunrun3available 		 = true;
robdonutavailable    = true;
robdonut1available   = true;
//========robbing variables===========
stolenfromtime 		 = 900;
stolenfromtimeractive	 = false;  // dont change
SafecodesCracked = 0;
DreherState = 0;
Processing1 = false;
Processing2 = false;
Safecracked2 = False;
Processing3 = false;
Safecracked3 = False;
//===============MOTD==================
motdwaittime = 120;
//===============Cop Patrol==================
pmissionactive = false;
patrolwaittime = false;
patrolmoneyperkm = 4.0;  // 1 would be equal to $3,000 for 1KM
pmissionactive1 = false;
patrolwaittime1 = false;
patrolmoneyperkm1 = 5.0;  // 1 would be equal to $3,000 for 1KM
pitavailable = true;
//==============================PETROL/OIL=========================================
petroluse                = 3;
maxpetroluse             = 400;
oildemand                = 0.25;
oilsellpricedec          = 30;
oilbaseprice		         = 6000;
//==============================MINING=============================================
shoveldur=20;
shovelmax=2;
pickaxedur=50;
pickaxemax=3;
hammerdur=100;
hammermax=4;
working=false;
//=================================================================================
CityLocationArray        = [[CityLogic1, 500], [CityLogic2, 400], [CityLogic3, 300], [CityLogic4, 500]];

['schluesselbund', 1] call INV_SetItemAmount;

if (iscop) then {
  RadioTextMsg_1 = "Put your fucking hands up!";
  RadioTextMsg_2 = "Pull over and stay in your vehicle!";
  RadioTextMsg_3 = "Drop your weapon and put your hands on your head!";
  RadioTextMsg_4 = "Your free to go, have a nice day";
} else {
  RadioTextMsg_1 = "Put your fucking hands up now!";
  RadioTextMsg_2 = "Step away from the vehicle!";
  RadioTextMsg_3 = "Do it now or your dead!";
  RadioTextMsg_4 = "Dont shoot i give up!";
};

RadioTextArt_1 = "direct";
RadioTextArt_2 = "direct";
RadioTextArt_3 = "direct";
RadioTextArt_4 = "direct";

if (isciv && !isServer) then {
	call compile format['
		%1_mayor = 0;
		%1_reason = [];
		publicVariable "%1_mayor";
		publicVariable "%1_reason";
	', player];
};

local_arrest             = 0;
jail_time                = 0;
jail_bounty              = 0;
jail_multiplier          = 167;
extradeadtime		         = 10;  //respawnzeit + extradeadtime = total base respawn for civs
respawntimeinc		       = 10;  //respawn time added every time a civ dies
killedplayerinc          = 20; //Amount of time added per cop kill for civs
respawnzeit              = 10;  //respawnzeit + extradeadtime = total base respawn also respawn time after a cop dies atleast once
DeadWaitSec              = respawnzeit;
DeadTimeMax              = 50; //Max time you can get for respawn
deadtimebonus            = 0.001;
deadtimes                = 0;
OL_isDead                = false;
OL_OldClothes            = typeOf player;
suicidepenalty		       = 50; //Suicide penalty does not apply to cops
CopsKilled               = 0;
CivsKilled               = 0;
SelfKilled               = 0;
killstrafe               = 20000;
GesetzArray              = ["Always Drive on the RIGHT side of the road","Always Holster weapons in Towns.","Speed limits 60 in town 90 out", "Governor and Gaurds May have any weapon unlicensed","Governor is immune to traffic laws if his life is in danger","","","","","","","","","",""];
OL_SignUp	   = false;

if(debug)then{suicidepenalty = 0;respawntimeinc = 0;killedplayerinc = 0};

isMayor                  = false;
WahlArray                = [];
MayorNumber              = -1;

for [{_i=0}, {_i < playercount}, {_i=_i+1}] do {WahlArray = WahlArray + [ [] ];};

atmscriptrunning         = 0;
slavescriptrunning       = 0;
shopactivescript         = 0;
slavemoneyprosekunde	   = 5000;
maxslave                 = 2;
localslave               = 0;
localslavecounter        = 0;
hoemoneyprosekunde       = 13000;
maxhuren                 = 3;
localhuren               = 0;
localhurencounter        = 0;
HideoutLocationArray     = CityLocationArray;
publichideoutarray       = [];
copmarker_on             = 1;
huntingarray             = [["hunting1", 450]];
doingSomething           = false;
nonlethalweapons	       = ["Binocular", "NVGoggles", "ItemMap", "ItemCompass", "ItemRadio", "ItemWatch", "ItemGPS","OL_Radargun"];
OL_DefaultItems          = ["ItemMap","ItemCompass","ItemWatch","ItemGPS"];
slavearray               = [];
hurenarray               = [[brothel1, 15], [brothel2, 15], [brothel3, 15]];
timeinworkplace          = 0;
INV_UsingCarshop		     = 0;

// array used in taxi missions
civclassarray =
[
"TK_CIV_Takistani01_EP1",
"TK_CIV_Takistani02_EP1",
"TK_CIV_Takistani03_EP1",
"TK_CIV_Takistani04_EP1",
"TK_CIV_Takistani05_EP1",
"TK_CIV_Takistani06_EP1",
"TK_CIV_Woman01_EP1",
"TK_CIV_Woman02_EP1",
"TK_CIV_Woman03_EP1",
"TK_CIV_Worker01_EP1",
"TK_CIV_Worker02_EP1",
"Citizen2_EP1",
"Citizen3_EP1",
"CIV_EuroMan01_EP1",
"CIV_EuroMan02_EP1",
"Dr_Hladik_EP1",
"Functionary1_EP1",
"Functionary2_EP1",
"Haris_Press_EP1",
"Profiteer2_EP1",
"TK_Soldier_Sniper_EP1",
"US_Soldier_Pilot_EP1",
"Doctor",
"Rocker2",
"Soldier_TL_PMC",
"Reynolds_PMC",
"Soldier_Pilot_PMC",
"Soldier_M4A3_PMC",
"Ry_PMC",
"Dixon_PMC"
];
civslavearray = ["Worker1","Worker2","Worker3","Worker4"];
civworkerarray = ["Hooker1","Hooker2","Hooker3","RU_Hooker1","RU_Hooker2","RU_Hooker3","RU_Hooker4"];
