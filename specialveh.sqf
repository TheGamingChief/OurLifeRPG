_this = _this select 3;
_artz = _this select 0;
if (_artz == "bt") exitwith {
_geld = 'geld' call INV_GetItemAmount;
if not (wreckcompany in INV_VehicleArray) exitwith {player groupChat "You do not have the key to this company."};
if (_geld < 20000) exitWith {player groupChat "You do not have enough money."};
if(count (nearestobjects [getpos wrecktspwn,["Ship","car","motorcycle","truck"], 3]) > 0)exitwith{player groupchat "Spawn Blocked!";};
['geld', -20000] call INV_AddInventoryItem;
["V3S_Open_TK_CIV_EP1", wrecktspwn, 1] spawn INV_CreateVehicle;};

if (_artz == "buy") exitwith {
_geld = 'geld' call INV_GetItemAmount;
if (_geld < 10000) exitWith {player groupChat "You do not have enough money."};
if (wreckcompany in INV_VehicleArray) exitwith {player groupChat "You already have salvage training."};
['geld', -10000] call INV_AddInventoryItem;
INV_VehicleArray = INV_VehicleArray + [wreckcompany]; 
//"INV_ServerVclArray = INV_ServerVclArray + [wreckcompany]" call broadcast;
//deleteVehicle wreckbuy1;
player groupChat "You have purchased Salvage Training. You are now authorized to buy a salvage truck."};

if (_artz == "ba") exitwith {
if not (aircompany in INV_VehicleArray) exitwith {player groupChat "You do not have the key to this company."};
['Cargo Crate', 1] call INV_AddInventoryItem;
if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};
player groupChat "Bring the cargo to the South-West airfield and sell it there.";
};

if (_artz == "buya") exitwith {
_geld = 'geld' call INV_GetItemAmount;
if (_geld < 40000) exitWith {player groupChat "You do not have enough money."};
if (aircompany in INV_VehicleArray) exitwith {player groupChat "You already have Air transport Training."};
['geld', -40000] call INV_AddInventoryItem;
INV_VehicleArray = INV_VehicleArray + [aircompany]; 
//"INV_ServerVclArray = INV_ServerVclArray + [wreckcompany]" call broadcast;
//deleteVehicle wreckbuy1;
player groupChat "You have purchased Air Transport Training. You are now authorized to transport cargo crates."};

if (_artz == "aan2") exitwith {
_geld = 'geld' call INV_GetItemAmount;
if (!("bomb" call INV_HasLicense)) exitwith {player groupchat "You need terror training to buy this."};
if (_geld < 4000000) exitWith {player groupChat "You do not have enough money."};
['geld', -4000000] call INV_AddInventoryItem;
player groupChat "Do not disassemble the DShKM's on the wings. You may not be able to reassemble them at all.";
["An2_TK_EP1", saspwm, 2] spawn INV_CreateVehicle;};

if (_artz == "aan22") exitwith {
_geld = 'geld' call INV_GetItemAmount;
if (!("bomb" call INV_HasLicense)) exitwith {player groupchat "You need terror training to buy this."};
if (_geld < 2000000) exitWith {player groupChat "You do not have enough money."};
['geld', -2000000] call INV_AddInventoryItem;
["An2_TK_EP1", saspwm, 4] spawn INV_CreateVehicle;};

if (_artz == "ska60") exitwith {
_geld = 'geld' call INV_GetItemAmount;
if (!("air_support_training" call INV_HasLicense)) exitwith {player groupchat "You need Air Support Training to buy this."};
if(count (nearestobjects [getpos cairspawn,["Ship","car","motorcycle","truck"], 3]) > 0)exitwith{player groupchat "Spawn Blocked!";};
if (_geld < 3500000) exitWith {player groupChat "You do not have enough money."};
['geld', -3500000] call INV_AddInventoryItem;
["Ka60_PMC", cairspawn, 3] spawn INV_CreateVehicle;};

if (_artz == "ambu") exitwith {
_geld = 'geld' call INV_GetItemAmount;
if (!("car" call INV_HasLicense)) exitwith {player groupchat "You need a drivers license to buy this."};
if (_geld < 10000) exitWith {player groupChat "You do not have enough money."};
['geld', -10000] call INV_AddInventoryItem;
["S1203_ambulance_EP1", pmcvspwn, 0] spawn INV_CreateVehicle;};

if (_artz == "Cicada Busline") exitwith {
if (!(call INV_isArmed)) exitwith
	{player groupchat "You need a gun dumbass!";}; 
	if (bus1money < 10000) exitwith {player groupchat "The bus driver has been recently robbed or has no money yet."};
(format['if(!("Robbed The Cicada Bus" in %1_reason))then{%1_reason = %1_reason + ["Robbed The Cicada Bus"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 20000;', player]) call broadcast;
['geld', station1money] call INV_AddInventoryItem;
(format ['server globalChat "Someone robbed the %1!";', _artz]) call broadcast;
player sidechat format ["You stole $%1 from the bus driver!", bus1money];
bus1money = 0;
publicvariable "bus1money";};

if (_artz == "busgetin") exitwith {
player moveincargo bus1;
player groupchat "Press E if you want to get out";};