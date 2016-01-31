
_coparrest = (nearestobjects [getpos player, ["tcg_police_officerk9","tcg_police_officer","FOX_US_SFMRW_OFFD","policeman","vilas_sira_sheriffoff","vilas_sira_policeman","VIL_ctl_policeman_rd","vilas_sira_swat_m416","VIL_ctl_policeman","KPFS_Policeman_vest_des","KPFS_Policeman_vest_des_cap","CZ_Special_Forces_GL_DES_EP1"], 3] select 1);

if (isnil "_coparrest")exitwith {player groupchat "There are no cops near you to arrest"};
if (player != cop1) then 
{ 
	if (player distance getmarkerpos "city1" < 500 or player distance getmarkerpos "city2" < 500 or player distance getmarkerpos "city3" < 500 or player distance getmarkerpos "city4" < 500 or player distance getmarkerpos "city5" < 500) then
	{
	player groupchat "You have no jursidiction to arrest cops here";
	}
	else
	{
	player groupchat format["Restraining %1!", _coparrest];
	//=====================================UNRESTRAIN=========================================
		if(animationstate _coparrest == "civillying01") exitwith
		{
		(format ["%1 switchmove ""%2"";", _coparrest, "amovppnemstpsnonwnondnon"]) call broadcast;
		player groupchat "You uncuffed the cop!";
		};
	//==================================RESTRAIN=========================================
		if(vehicle _coparrest != _coparrest) exitwith {player groupchat "the cop is in a vehicle!"};
		if (player distance _coparrest <=5) then
		{ 
		(format ["%1 switchmove ""%2"";", _coparrest, "civillying01"]) call broadcast;
		(format['server globalchat "%3 was handcuffed by %2";if (rolestring == "%1") then {execVM "Unrestrain.sqf";}', _coparrest, name player, name _coparrest]) call broadcast;
		};
	};
	
}
else
{
player groupchat format["Restraining %1!", _coparrest];
//=====================================UNRESTRAIN=========================================
if(animationstate _coparrest == "civillying01") exitwith
{
(format ["%1 switchmove ""%2"";", _coparrest, "amovppnemstpsnonwnondnon"]) call broadcast;
player groupchat "You uncuffed the cop!";
};
//==================================RESTRAIN=========================================
if(vehicle _coparrest != _coparrest) exitwith {player groupchat "the cop is in a vehicle!"};
if (player distance _coparrest <=5) then
{ 
(format ["%1 switchmove ""%2"";", _coparrest, "civillying01"]) call broadcast;
(format['server globalchat "%3 was handcuffed by %2";if (rolestring == "%1") then {execVM "Unrestrain.sqf";}', _coparrest, name player, name _coparrest]) call broadcast;
};

};


