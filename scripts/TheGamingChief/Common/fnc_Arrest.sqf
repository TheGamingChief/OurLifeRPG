createdialog "TGC_ArrestMenu";
sliderSetRange [1900, 1, 60];
sliderSetSpeed [1900, 1, 5];

while {ctrlVisible 6585} do 
{
ctrlSetText [65478,  format[localize "STRS_dialogcivmenu_arrest", ((round(sliderPosition 1900)) call ISSE_str_IntToStr) ]];
sleep 0.3;
};