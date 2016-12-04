_coparrest = (nearestobjects [getpos cop1, ["olrpg_patunik9","olrpg_patuni","FOX_US_SFMRW_OFFD","policeman","olrpg_sheriffuni","VIL_ctl_policeman_rd","vilas_sira_swat_m416","VIL_ctl_policeman","olrpg_chiefuni","olrpg_chiefuni_cap","CZ_Special_Forces_GL_DES_EP1"], 3] select 1);

if((animationstate _coparrest == ("civillying01")) and (player distance prisonflag <= 100)) then

{

player groupchat format["Arresting %1!", _coparrest];
(format ["%1 switchmove ""%2"";", _coparrest, "amovppnemstpsnonwnondnon"]) call broadcast;
_coparrest setPos getPos CopPrison;

}

else

{
player groupchat "You are not close enough to the jail or they are not restrained";
};

