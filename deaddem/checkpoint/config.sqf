Admin_classnames_total = [
	["roadblock",1000,0.4],
	["il_barrier",2000,0.4],
	["glt_roadsign_octagon",1000,1],
	["bargate",1000,3.8],
	["SearchLight_UN_EP1",1000,0],
	["roadcone",1000,0.4],
	["roadbarrierlong",1000,0.5],
	["roadbarriersmall",1000,0.7],
	["bigbagfence",5000,0.5],
	["bunkersmall",10000,1],
	["2mTape",5000,0.5],
	["10mTape",10000,0.5],
	["land_ladder_half",1000,1],
	["Land_ladder",2000,3.9],
	["armat_tarmac", 10000,1],
	["MBG_Cinderwall_5_InEditor",50000,1],
	["MBG_Cinderwall_5_Corner_InEditor",5000,1],
	["mbg_cinderwall_5_low_InEditor",5000,.5],
	["MBG_Cinderwall_5_Gate_InEditor",5000,1],
	["Barrack2",50000,0.7],
	["Fence_Ind_long",1000,1],
	["HeliHCivil",1000,1],
	["jerseybarrierc",1000,0.5],
	["TargetEpopup",1000,0.65],
	["tcg_sign60",1000,1],
	["tcg_sign90",1000,1],
	["tcg_speedbump",5000,0.015],
	["Land_BagFenceLong",5000,0.5],
	["Land_BagFenceCorner",5000,0.5],
	["Land_fortified_nest_big",25000,0.72],
	["Land_HBarrier5",10000,1],
	["Land_HBarrier_large",15000,1],
	["Land_HBarrier1",10000,1],
	["Concrete_Wall_EP1",10000,1.7],
	["FlagCarrierUSA_EP1",1,4],
	["Danger",1000,0.5],
	["Land_A_FuelStation_Shed",25000,2.845],
	["Land_A_CraneCon",150000,17],
	["Arrow_Sign_Both",1000,1.9],
	["Arrow_Sign_Left",1000,1.9],
	["Arrow_Sign_Right",1000,1.9],
	["Traffic_Drum",1000,0.71],
	["Tent_Event",1000,2.3]

];

ESU_classnames_total = [
	["roadblock",1000,0.4],
	["glt_roadsign_octagon",1000,1],
	["bargate",1000,3.8],
	["SearchLight_UN_EP1",1000,0],
	["roadcone",1000,0.4],
	["roadbarrierlong",1000,0.5],
	["roadbarriersmall",1000,0.7],
	["bigbagfence",5000,0.5],
	["bunkersmall",10000,1],
	["10mTape",10000,0.5],
	["land_ladder_half",1000,1],
	["land_ladder",2000,3.9]
];

PD_classnames_total = [
	["roadblock",1000,0.4],
	["glt_roadsign_octagon",1000,1],
	["bargate",1000,3.8],
	["SearchLight_UN_EP1",1000,0],
	["roadcone",1000,0.4],
	["roadbarrierlong",1000,0.5],
	["roadbarriersmall",1000,0.7],
	["bigbagfence",5000,0.5],
	["bunkersmall",10000,1],
	["10mTape",10000,0.5],
	["land_ladder_half",1000,1]
];

Tow_classnames_total = [
	["roadblock",1000,0.4],
	["glt_roadsign_octagon",1000,1],
	["bargate",1000,3.8],
	["SearchLight_UN_EP1",1000,0],
	["roadcone",1000,0.4],
	["roadbarrierlong",1000,0.5],
	["roadbarriersmall",1000,0.7],
	["land_ladder_half",1000,1],
	["Arrow_Sign_Both",1000,1.9],
	["Arrow_Sign_Left",1000,1.9],
	["Arrow_Sign_Right",1000,1.9],
	["Traffic_Drum",1000,0.71],
	["Tent_Event",1000,2.3]
];

AM_classnames_priceincrease = 1;

AM_CheckpointBuilder = {

	switch (true) do { 
		case ((getPlayerUID player in SwagDevs) || (getPlayerUID player in adminlevel4)) : {  
			classnames_total = Admin_classnames_total; 
		}; 
		case (isCop) : { 
			classnames_total = PD_classnames_total; 
		}; 
		case (isaMedic) : { 
			classnames_total = ESU_classnames_total; 
		}; 
		case (getPlayerUID player in Tow_ID) : { 
			classnames_total = Tow_classnames_total; 
		}; 
		default {
			classnames_total = nil;
		}; 
	};
	if(AM_temp_carrying)exitWith{player groupChat "You seem to be already carrying an item"};
	if(!createDialog "AM_CheckpointBuilder") exitWith{hint "Couldn't create this menu!"};
	
	for[{_c=0},{_c<count classnames_total},{_c=_c+1}]do{
		_item = classnames_total select _c;
		
		_sexy = _item select 0;
		_me   = _item select 1;
		_name = _sexy call INV_GetItemName;

		if(isNil "_sexy")exitWith {hint "Invalid selection given"};
		lbAdd[1500,format["Buy %1($%2)",_name,_me]];
	};
	player groupChat format["Checkpoint builder complete with %1 entries",count(classnames_total)];
};

AM_CheckpointBuilder_Purchase = {
	_selection = _this select 0;
	if(isNil "_selection")exitWith{hint "You need to select an item first"};
	AM_temp_carrying = true;
	_item = classnames_total select _selection;
	_price = _item select 1;
	_class = _item select 0;
	temp_altitude = _item select 2;

	_price = _price * AM_classnames_priceincrease;
	_model = _class call INV_GetItemClassname;
	
	temp_item = _model createVehicle position player;
	temp_item setVariable ["AM_CP",1,true];
	temp_item attachto[player,[0,2,temp_altitude]];
	
	kontostand = kontostand - _price;
	player groupChat "You have been charged for buying this. Press 9 to drop it on the ground.";
	
	closeDialog 0;
};

AM_CheckpointBuilder_Drop = {
 	detach temp_item;
 	AM_temp_carrying = false;
 	temp_item setVariable ["AM_CP",1,true];
};

AM_CheckpointBuilder_Clear = 
{
	_uid = getplayeruid player;
	
	if (isamedic) then 
	{
		if (_uid in EMT1_ID) then
		{
			format['if(isamedic) then{player sideChat "%1 has cleared a checkpoint (200m)."}', name player] call swag;
			{
				if((_x getVariable "AM_CP") == 1) then 
				{
					deleteVehicle _x;
				};
			}foreach nearestObjects[player,["All"],200];
		};
	};

	if (iscop) then
	{
		if ((_uid in Cpl_id) or (_uid in Sgt_id) or (_uid in Lt_id) or (_uid in Cpt_id) or (_uid in Chief_id) or (_uid in Deputy_id) or (_uid in Sheriff_id)) then
		{
			format['if(isCop) then{player sideChat "%1 has cleared a checkpoint (200m)."}', name player] call swag;
			{
				if((_x getVariable "AM_CP") == 1) then 
				{
					deleteVehicle _x;
				};
			}foreach nearestObjects[player,["All"],200];
		}
		else
		{
			format['if(isCop) then{player sideChat "%1 has attempted to clear a checkpoint (200m). This can only be done by a Corporal or higher."}', name player] call swag;
		};
	};
};