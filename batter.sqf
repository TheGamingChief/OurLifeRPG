////////////////////////////////////
////			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////

_art = _this select 0;
_pos = getposASL player;
_class = "explosive";

if (_art == "use") then 
{
_item   = _this select 1;
_door = (nearestobjects [getpos player, ["Land_MBG_GER_HUS_1","Land_MBG_GER_HUS_2","Land_MBG_GER_HUS_3","Land_MBG_GER_HUS_4","Land_MBG_GER_RHUS_1","Land_MBG_GER_RHUS_2","Land_MBG_GER_RHUS_3","Land_MBG_GER_RHUS_4","Land_MBG_GER_RHUS_5","Land_MBG_GER_ESTATE_1","Land_MBG_GER_ESTATE_2","Land_vila","Land_build2","Land_build3","Land_build4","Land_build5"], 12] select 0);

switch true do
{
case (_door iskindof "Land_MBG_GER_HUS_1"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["FrontDoor",1];
	[_door, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
	[_item, -1] call INV_AddInvItem;
	};
case (_door iskindof "Land_MBG_GER_HUS_2"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["FrontDoor",1];
	[_door, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
	[_item, -1] call INV_AddInvItem;
	};
case (_door iskindof "Land_MBG_GER_HUS_3"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["FrontDoor",1];
	[_door, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
	[_item, -1] call INV_AddInvItem;
	};
case (_door iskindof "Land_MBG_GER_HUS_4"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["FrontDoor",1];
	[_door, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
	[_item, -1] call INV_AddInvItem;
	};
case (_door iskindof "Land_MBG_GER_ESTATE_1"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["FrontDoor",1];
	[_door, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
	[_item, -1] call INV_AddInvItem;
	};
case (_door iskindof "Land_MBG_GER_ESTATE_2"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["FrontDoor",1];
	[_door, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
	[_item, -1] call INV_AddInvItem;
	};
case (_door iskindof "Land_MBG_GER_RHUS_1"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["FrontDoor",1];
	[_door, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
	[_item, -1] call INV_AddInvItem;
	};
case (_door iskindof "Land_MBG_GER_RHUS_2"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["FrontDoor",1];
	[_door, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
	[_item, -1] call INV_AddInvItem;
	};
case (_door iskindof "Land_MBG_GER_RHUS_3"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["FrontDoor",1];
	[_door, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
	[_item, -1] call INV_AddInvItem;
	};
case (_door iskindof "Land_MBG_GER_RHUS_4"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["FrontDoor",1];
	[_door, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
	[_item, -1] call INV_AddInvItem;
	};
case (_door iskindof "Land_MBG_GER_RHUS_5"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["FrontDoor",1];
	[_door, 'FrontDoor_AP', 'MBG_B3_OpenDoor',4,(_this)] execvm 'MBG_Buildings_3\MPSound.sqf';
	[_item, -1] call INV_AddInvItem;
	};
case (_door iskindof "Land_build2"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["door_button1",1];	
	[_item, -1] call INV_AddInvItem;
	};
case (_door iskindof "Land_build3"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["door_button1",1];	
	[_item, -1] call INV_AddInvItem;
	};
case (_door iskindof "Land_build4"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["door_button1",1];	
	[_item, -1] call INV_AddInvItem;
	};
case (_door iskindof "Land_build5"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["door_button1",1];	
	[_item, -1] call INV_AddInvItem;
	};
case (_door iskindof "vila"):{
	(format ['server globalChat " %1 is breaking down the door on someones house!";', name player]) call broadcast;
	player playmove "AinvPknlMstpSlayWrflDnon";
	_object = _class createvehicle _pos;
	_object setpos [(getPos player select 0),(getPos player select 1),.5];
	player groupchat "Detonation in 9 seconds";
	sleep 5;
	player groupchat "Detonation in 4 seconds";
	sleep 4;
	"R_57mm_HE" createVehicle [(getPos _object select 0),(getPos _object select 1),-40];
	"SmokeShell" createVehicle [(getPos _object select 0),(getPos _object select 1),0];
	deletevehicle _object;
	_door animate ["door_button1",1];	
	[_item, -1] call INV_AddInvItem;
	};
default {player groupchat "You are not close enough to the front door";};
};
	
};