if (!alive player)exitwith{}; 

isstunned=true;

player groupchat "You have been restrained!"; 

waituntil {count (nearestobjects[getpos player,["olrpg_patuni","olrpg_snruni","olrpg_cpluni","olrpg_sgtuni","olrpg_pdltvest","olrpg_pdcptvest","olrpg_astchiefsuni","olrpg_chiefsuni","olrpg_depk9uni","olrpg_depuni","olrpg_sgtdepuni2","olrpg_sheriffuni","olrpg_ltdepuni","olrpg_dnrdepuni","olrpg_swatmark","olrpg_swatspec","olrpg_swatnor","olrpg_swatprob","olrpg_swatcom","olrpg_iauni","olrpg_pdcid","olrpg_k9nor","olrpg_k9com","olrpg_ftouni","olrpg_cguni","olrpg_corcmduni","olrpg_corcuni"],100]) == 0 or (animationstate player != "civillying01")};
	
if(animationstate player == "actspercmstpsnonwrfldnon_interrogate02_forgoten")then

	{

	player groupchat "You managed to free yourself!"; 
	(format ["%1 switchmove ""%2"";", player, "amovppnemstpsnonwnondnon"]) call OL_network_Swag;

	}else{player groupchat "ROLEPLAY the situation!"};

isstunned=false;
StunActiveTime=0;