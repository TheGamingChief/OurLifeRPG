_warrant = _this select 0;
closeDialog 0;
if(isNil "DD_LastCiv")exitWith{
	hint "Please select a civilian.";
};	


call compile format['
%1_reason = %1_reason + ["%2"];
publicVariable "%1_reason";
', DD_LastCiv, _warrant];

[(civarray find DD_LastCiv)] call DD_MDC_RunSearch;
hint "Warrant added successfully.";