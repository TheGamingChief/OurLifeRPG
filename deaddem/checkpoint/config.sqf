AM_classnames_total = [
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

AM_classnames_priceincrease = 1; // price * priceincrease

AM_CheckpointBuilder = {
	if(AM_temp_carrying)exitWith{player groupChat "You seem to be already carrying an item"};
	if(!createDialog "AM_CheckpointBuilder") exitWith{hint "Couldn't create this menu!"};
	
	for[{_c=0},{_c<count AM_classnames_total},{_c=_c+1}]do{
		_item = AM_classnames_total select _c;
		
		_sexy = _item select 0;
		_me   = _item select 1;
		_name = _sexy call INV_GetItemName;

		if(isNil "_sexy")exitWith {hint "Invalid selection given"};
		lbAdd[1500,format["Buy %1($%2)",_name,_me]];
	};
	player groupChat format["Checkpoint builder complete with %1 entries",count(AM_classnames_total)];
};

AM_CheckpointBuilder_Purchase = {
	_selection = _this select 0;
	if(isNil "_selection")exitWith{hint "You need to select an item first"};
	AM_temp_carrying = true;
	_item = AM_classnames_total select _selection;
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