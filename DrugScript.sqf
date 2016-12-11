_array = _this select 3;
_art = _array select 0;
_type = _array select 1;

if (_art == "Burn") then
{
		
	if (_type == "Marijuana") then
	{
	
	_plant = nearestObject [player, "as_p_fiberPlant_EP1"];
	
	deleteVehicle _plant;
	player groupChat "You burned the Marijuana Plant";
	};

	if (_type == "Heroin") then
	{
	
	_plant = nearestObject [player, "as_b_PinusM1s_EP1"];
	
	deleteVehicle _plant;
	player groupChat "You Burned the Poppy Plant";
	};
	
	
	
	if (_type == "Cocaine") then
	{
	
	_plant = nearestObject [player, "as_b_PistaciaL1s_EP1"];
	
	deleteVehicle _plant;
	player groupChat "You Burned the Coca Plant";
	};

	if (iscop) then {['geld', 3000] call INV_AddInvItem;};
		
};

if (_art == "Harvest") then
{

	if (_type == "Marijuana") then
	{
		_Weight = call INV_GetOwnWeight;
		_Plant = nearestobject [player, "as_p_fiberPlant_EP1"];
		deletevehicle _Plant;
		
		if (_Weight > 59) exitwith { player groupchat localize "STRS_inv_buyitems_get_zuschwer"; };
		if (IsCop) exitwith { player groupchat "Cops cannot do this"; };
		
		['Unprocessed_Marijuana', +(5)] call INV_AddInvItem;
		['MarijuanaSeed', +(2)] call INV_AddInvItem;
		
		player groupchat "You Harvested Marijuana Plants";
	};
	
	if (_type == "Heroin") then
	{
		_Weight = call INV_GetOwnWeight;
		_Plant = nearestobject [player, "as_b_PinusM1s_EP1"];
		deletevehicle _Plant;
		
		if (_Weight > 59) exitwith { player groupchat localize "STRS_inv_buyitems_get_zuschwer"; };
		if (IsCop) exitwith { player groupchat "Cops cannot do this"; };
		
		['Unprocessed_Heroin', +(5)] call INV_AddInvItem;
		['HeroinSeed', +(2)] call INV_AddInvItem;
		
		player groupchat "You harvested Poppy Plants";
	};

	if (_type == "Cocaine") then
	{
		_Weight = call INV_GetOwnWeight;
		_Plant = nearestobject [player, "as_b_PistaciaL1s_EP1"];
		deletevehicle _Plant;
		
		if (_Weight > 59) exitwith { player groupchat localize "STRS_inv_buyitems_get_zuschwer"; };
		if (IsCop) exitwith { player groupchat "Cops cannot do this"; };
		
		['Unprocessed_Cocaine', +(5)] call INV_AddInvItem;
		['CocaineSeed', +(2)] call INV_AddInvItem;
		
		player groupchat "You harvested Coca Plants";
	};
	
};



