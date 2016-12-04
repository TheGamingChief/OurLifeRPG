/*
Script made by : DaThrillerKiller for OurLifeRPG
Version 1.0 (Stable)
File: mapnav.sqf
Description: Made to help new player find them selfs around the map.
*/

player groupChat "To use the ""Advanced Navigator"" look in the left hand corner of your map";

_item   = _this select 1;
[_item, -1] call INV_AddInvItem;
player createDiarySubject ["Map Navigation","Map Navigation"];

player createDiaryRecord ["Map Navigation", 
[
"Locations", 
"
<execute expression='call funcshowmarkers'>Show All</execute><br />
<execute expression='call funchidemarkers'>Hide All</execute><br /><br />
<execute expression='call funcatms'>ATMs</execute><br />
<execute expression='call funccarshop'>Vechile Dealers</execute><br />
<execute expression='call funcfishing'>Fishing Areas</execute><br />
<execute expression='call funcgang'>Gang Areas</execute><br />
<execute expression='call funcshops'>Shops</execute><br />
<execute expression='call funcfields'>Fields and Resourse</execute><br />
<execute expression='call funcgas'>Gas Stations and Pubs</execute><br />
<execute expression='call funcgreenzone'>Green and Blue zones</execute><br />
<execute expression='call funccoparea'>Cop Areas</execute><br />
<execute expression='call funcspdcams'>Speed Cams</execute><br />
<execute expression='call funcothers'>Others</execute><br />
"
]
];

//-----------------------------------------------------------------------------Config Section---------------------------------------------------------------------------------------

//All marker on the map
allmarkers = [
"Delivery1","resourcesellmarker","shoprob_1_2_1","sky_1","terror area","impoundlot","vicesq","4wyr6buey76ycf4tc34tscfwr43r3634","storagemarker","savepointMarker","savepointMarker3","savepointMarker3_1","CICADA PRISON","prisonspawn","swagspawn_1","savepointMarker_1_1","savepointMarker_1_1_1","savepointMarker_1_1_1_1","swafafas","civ spawn1_3_1","factorymarker1","gangarea1","factorymarker2","factorymarker3","gangarea3","gangarea1_2","factorymarker3_1","gangarea1_2_1","percharea","perchareacircle","walleyearea","walleyeareacircle","troutarea","troutareacircle","fisharea_1","fishingblowfish","fisharea4_1","fishingbass","fisharea5","fishingwhale","fisharea5_1","fishingwhale1","fisharea_2","fishingmackerel_1","fisharea_3","fishingmackerel_2","fisharea_1_2","fishingblowfish_1","fisharea_1_1_1","fishingHerring_1","fisharea_1_1_2","fishingHerring_2","fisharea4_1_1","fishingbass_1","fisharea4_1_2","fishingbass_2","fisharea5_2","fishingwhale2","r","2boatshop_2","p_1","marketmarker","oilFactory_1","oiltrader","sellwhalemarker","dmv","carshop_2","tuning","p","scars","taxishop1","struckshop","scars_1","scars_3","scars_3_2_1","scars_1_2","scars_3_1","scars_3_3_1_1","scars_3_2","carshop_2_1","Bicycle Shop","Bikeshop1_1_1","Tahoe_shop","airshop_3","vehfactory_1_1_1","carshop_1","Repod","carshop_1_1","Farmer's Market","diamondshop","cheesbrugershop1_1","cheesbrugershop1_1_1","cheesbrugershop1_1_2","HOE","shoprob_1_1","Equipshop_1_1_1","Sell Weed","Sell Organs","station1_1_1_2_1","swag","station1_1_1_2_2_2_1","shoprob_1_2_2","mall-sign1","aMart-Icon1","Alcohol","MartCarPart","Bicycle Sho","emsspawn","f","lsdfield","lsd_field","lsdfield_1","lsd_field_1","Herion Farm","herionfield_2","potfield_3","potfield_2_2","cocainefield_4_1","potfield_2_3_1","IronArea","ironareamarker","DiamondArea","Diamondareamarker","apfelfeld1","GoldArea","Goldareamarker","Sandarea","sandareamarker","CopperArea1","copperareamarker1","Sandarea1","sandareamarker_1","GoldArea1","Goldareamarker_1","farmarea2","farmmarker_1","farmarea3","farmmarker_1_1","farmmarker_1_1_2","drugmarker1","scm2","scm5","scm4","scm3","scm1","scm1_1","pub","pub_1","pub_1_1","pub_2","OilArea2","oilareamaker3_1","OilArea1","oilareamaker3_2","station1_1_1_2_2_1","banks","rot_punkt","rot_flagge","andere_marker","435","4325345","apfelfeldmarker1","apfelfeldmarker1_1","workplace1_1","workplace1_1_2","Cmd","swagagfaed","undercover","f_1","CID","rot_punkt_1","policebase_1","swat_2_1","swat_2_2","swat_1","srg_1","militarybase","cgbase","savepointMarker2","militarybase_1","militarybase_2","policebase_1_1_1","swat_1_1","Shooting Range","station1_1","station3_3","station3_4","station3_2_1","station1_2","civ spawn1","civ spawn11","civ spawn_1","civ spawn 1","PDZONE1","VIP Area_1","PDZONE1_1","civ spawn1_1","civ spawn11_1","civ spawn1_2","swagspawn","civ spawn1_3","amall","aMall-Parking","govequip","rathausmarker_1_1","rathausmarker","hunt","hunting1","cow","Hunting","airport1","OLRPG AirPort","atmmarker_2_2","atmmarker_2_2_1_1","MAINBAINK","atmmarke_1","atmmarke_1_1","atmmarke_1_2","atmmarke_1_3","Atm1_1_1","Atm1_1_2","Atm1_1_2_1","atmmarker_2_1_2","atmmarke_1_3_1","atmmarke_1_3_1_1","atmmarke_2","atmmarke","Atm1_1_1_1","PMCBANK","hostagearea_1","Hostageinfo","hostagezone","carpark1_3","carparkl_3","aMart-Parking1","Airport Parking","Delivery5_1_1_1","brothel_1","Delivery5_1_2_1","brothel_2","Delivery5_1_3","brothel_3","VIP Area","Donate Tiers 1-6","Tier X","PMCC","pmc"
];

//atm markers
atmmarkers = [
"atmmarker_2_2","atmmarker_2_2_1_1","MAINBAINK","atmmarke_1","atmmarke_1_1","atmmarke_1_2","atmmarke_1_3","Atm1_1_1","Atm1_1_2","Atm1_1_2_1","atmmarker_2_1_2","atmmarke_1_3_1","atmmarke_1_3_1_1","atmmarke_2","atmmarke","Atm1_1_1_1","PMCBANK"
];

//vehcile Dealers
carshopmarkers = [
"dmv","carshop_2","tuning","p","scars","taxishop1","struckshop","scars_1","scars_3","scars_3_2_1","scars_1_2","scars_3_1","scars_3_3_1_1","scars_3_2","carshop_2_1","Bicycle Shop","Bikeshop1_1_1","Tahoe_shop","airshop_3","vehfactory_1_1_1","carshop_1","Repod","carshop_1_1"
];

//fishing Markers
fishingmarkers = [
"percharea","perchareacircle","walleyearea","walleyeareacircle","troutarea","troutareacircle","fisharea_1","fishingblowfish","fisharea4_1","fishingbass","fisharea5","fishingwhale","fisharea5_1","fishingwhale1","fisharea_2","fishingmackerel_1","fisharea_3","fishingmackerel_2","fisharea_1_2","fishingblowfish_1","fisharea_1_1_1","fishingHerring_1","fisharea_1_1_2","fishingHerring_2","fisharea4_1_1","fishingbass_1","fisharea4_1_2","fishingbass_2","fisharea5_2","fishingwhale2","r","2boatshop_2","p_1"
];

//Gang Markers
gangmarkers = [
"factorymarker1","gangarea1","factorymarker2","factorymarker3","gangarea3","gangarea1_2","factorymarker3_1","gangarea1_2_1"
];

//Shops
shopmarkers = [
"Farmer's Market","diamondshop","cheesbrugershop1_1","cheesbrugershop1_1_1","cheesbrugershop1_1_2","HOE","shoprob_1_1","Equipshop_1_1_1","Sell Weed","Sell Organs","station1_1_1_2_1","swag","station1_1_1_2_2_2_1","shoprob_1_2_2","mall-sign1","aMart-Icon1","Alcohol","MartCarPart","Bicycle Sho","drugmarker1"
];

//fields and resources
fieldmarkers = [
"lsdfield","lsd_field","lsdfield_1","lsd_field_1","Herion Farm","herionfield_2","potfield_3","potfield_2_2","cocainefield_4_1","potfield_2_3_1","IronArea","ironareamarker","DiamondArea","Diamondareamarker","apfelfeld1","GoldArea","Goldareamarker","Sandarea","sandareamarker","CopperArea1","copperareamarker1","Sandarea1","sandareamarker_1","GoldArea1","Goldareamarker_1","farmarea2","farmmarker_1","farmarea3","farmmarker_1_1","farmmarker_1_1_2","OilArea2","oilareamaker3_1","OilArea1","oilareamaker3_2"
];

//gas Stations and pubs
gasmarkers = [
"swag","pub","pub_1","pub_1_1","pub_2"
];

//Green & Blue zones
greenzonesmarkers = [
"civ spawn1","civ spawn11","civ spawn_1","civ spawn 1","PDZONE1","VIP Area_1","PDZONE1_1","civ spawn1_1","civ spawn11_1","civ spawn1_2","swagspawn","civ spawn1_3","amall","aMall-Parking"
];

//Cop Areas
copareasmarkers = [
"vicesq","rot_punkt_1","policebase_1","swat_2_1","swat_2_2","swat_1","srg_1","militarybase","cgbase","savepointMarker2","militarybase_1","militarybase_2","policebase_1_1_1","swat_1_1","Shooting Range"
];

//Speed Cams
spdcammarkers = [
"scm2","scm5","scm4","scm3","scm1","scm1_1"
];

//Others
othermarkers = [
"Delivery1","resourcesellmarker","shoprob_1_2_1","sky_1","terror area","impoundlot","4wyr6buey76ycf4tc34tscfwr43r3634","storagemarker","savepointMarker","savepointMarker3","savepointMarker3_1","CICADA PRISON","prisonspawn","swagspawn_1","savepointMarker_1_1","savepointMarker_1_1_1","savepointMarker_1_1_1_1","swafafas","civ spawn1_3_1"
];

//-----------------------------------------------------------------------------Ends Config--------------------------------------------------------------------------------------------

funcshowmarkers = { 
{_x setMarkerAlphaLocal 1} foreach allmarkers;
};

funchidemarkers = { 
{_x setMarkerAlphaLocal 0} foreach allmarkers;

};

funcshowmarkers = { 
{_x setMarkerAlphaLocal 1} foreach allmarkers;
};

funcatms = { 
[] call funchidemarkers;
{_x setMarkerAlphaLocal 1} foreach atmmarkers;
};

funccarshop = {
[] call funchidemarkers;
{_x setMarkerAlphaLocal 1} foreach carshopmarkers;
};

funcfishing = {
[] call funchidemarkers;
{_x setMarkerAlphaLocal 1} foreach fishingmarkers;
};

funcgang = {
[] call funchidemarkers;
{_x setMarkerAlphaLocal 1} foreach gangmarkers;
};

funcshops = {
[] call funchidemarkers;
{_x setMarkerAlphaLocal 1} foreach shopmarkers;
};

funcfields = {
[] call funchidemarkers;
{_x setMarkerAlphaLocal 1} foreach fieldmarkers;
};

funcgas = {
[] call funchidemarkers;
{_x setMarkerAlphaLocal 1} foreach gasmarkers;
};

funcgreenzone = {
[] call funchidemarkers;
{_x setMarkerAlphaLocal 1} foreach greenzonesmarkers;
};

funccoparea = {
[] call funchidemarkers;
{_x setMarkerAlphaLocal 1} foreach copareasmarkers;
};

funcspdcams = {
[] call funchidemarkers;
{_x setMarkerAlphaLocal 1} foreach spdcammarkers;
};

funcothers = {
[] call funchidemarkers;
{_x setMarkerAlphaLocal 1} foreach othermarkers;
};





