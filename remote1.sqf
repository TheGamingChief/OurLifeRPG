////////////////////////////////////
////			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////


if(player distance countygate <= 30) then 
{
countygate animate ["innergate",1]; jailgate_in say "fanceopen";
countygate animate ["outergate",1]; jailgate_in say "fanceopen";
player groupchat "Closing Sallyport Gate in 10 seconds";
sleep 10;
player groupchat "Closing Sallyport Gates";
countygate animate ["innergate",0]; jailgate_in say "fanceopen";
countygate animate ["outergate",0]; jailgate_in say "fanceopen";
};
}else{
	player groupchat "Not close enough to a gate";
	};
