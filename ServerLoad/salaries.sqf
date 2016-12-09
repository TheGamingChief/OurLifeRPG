while {iscop} do 

{

sleep 60;
player groupChat format[localize "STRS_geld_countdown", "2"];
sleep 60;
player groupChat format[localize "STRS_geld_countdown", "1"];
sleep 60;

_income = add_copmoney;

if ((typeOf player == "olrpg_ftouni" || typeOf player == "olrpg_snrftouni")) then {systemChat "test"};

if ((typeOf player == "olrpg_ftouni" || typeOf player == "olrpg_snrftouni")) then {_income = _income + 6000};

if ((typeOf player == "olrpg_k9nor" || typeOf player == "olrpg_depk9uni" || typeOf player == "olrpg_k9marksman" || typeOf player == "olrpg_k9com")) then {_income = _income + 5000};	

if ((typeOf player == "olrpg_corcuni" || typeOf player == "olrpg_corsupuni" || typeOf player == "olrpg_corcmduni")) then {_income = _income + 5000};

if ((typeOf player == "olrpg_sdpilot" || typeOf player == "olrpg_pdpilot" || typeOf player == "olrpg_oppilot" || typeOf player == "olrpg_pdpilotcom")) then {_income = _income + 7500};

if ((typeOf player == "olrpg_swatprob" || typeOf player == "olrpg_swatnor" || typeOf player == "olrpg_swatmark" || typeOf player == "olrpg_swatspec" || typeOf player == "olrpg_swatcom")) then {_income = _income + 7500};
	
if ((typeOf player == "olrpg_pdcid" || typeOf player == "olrpg_iauni")) then {_income = _income + 5000};

if (typeOf player == "olrpg_patuni") then {_income = _income + 1500};

if (typeOf player == "olrpg_snruni") then {_income = _income + 3500};
	
if (typeOf player == "olrpg_cpluni") then {_income = _income + 5500};

if (typeOf player == "olrpg_sgtuni") then {_income = _income + 7500};
	
if ((typeOf player == "olrpg_depuni" || typeOf player == "olrpg_dnrdepuni")) then {_income = _income + 1500};

if (typeOf player == "olrpg_snrpdepuni") then {_income = _income + 3500};

if (typeOf player == "olrpg_corpdepuni") then {_income = _income + 5500};

if (typeOf player == "olrpg_sgtdepuni2") then {_income = _income + 7500};

if (typeOf player == "olrpg_ltdepuni") then {_income = _income + 9500};

if (typeOf player == "olrpg_cptdepuni") then {_income = _income + 11000};

if (typeOf player == "olrpg_pdltvest") then {_income = _income + 9500};

if (typeOf player == "olrpg_pdcptvest") then {_income = _income + 11000};

if (typeOf player == "olrpg_astchiefsuni") then {_income = _income + 12000};

if (typeOf player == "olrpg_chiefsuni") then {_income = _income + 13000};

if ("Medal_Winner" call INV_HasLicense) then 

	{

	_income = _income + 5000;

	}; 
	
if ((getPlayerUID player) in Donate_id) then
{
			_income = _income + 1500;
};
	
if ((getPlayerUID player) in TierX_id) then

{
	
	_income = _income + 3000;

};

if ((getPlayerUID player) in TopDonator_id) then

{
	
	_income = _income + 5000;

};

kontostand = kontostand + (round _income);
player groupChat format[localize "STRS_geld_copmoneyadd", rolestring, ((round _income) call ISSE_str_IntToStr)];
sleep 1;					
if(ischief)then{player groupchat format["As a Police Chief you get an extra paycheck of $%1.", (chiefExtraPay call ISSE_str_IntToStr)]};   

};

while {((isciv) || (isamedic))} do 
{

sleep 60;
player groupChat format[localize "STRS_geld_countdown", "5"];
sleep 180;
player groupChat format[localize "STRS_geld_countdown", "1"];
sleep 60;

   
if ((alive player) and (deadcam == 0)) then 

	{

	_workplacepaycheck = 0;
	_uniPaycheck       = 0;	
	_unimsg            = ""; 	
	_atworkplacemsg    = localize "STRS_geld_nowere";									
	_hashideoutmsg     = "";
	_income            = add_civmoney;
	_mygang		   = "None";
	_activecount	   = 0;	
	
	for [{_i=0}, {_i < (count BuildingsOwnerArray)}, {_i=_i+1}] do 

		{

		_check = ( round( (random 2)*((BuyAbleBuildingsArray select _i) select 4) ) );
		_income = _income + _check;
		
		};
		 
if ((getPlayerUID player) in Donate_id) then
{
			_income = _income + 500;
};
if ((getPlayerUID player) in Donate_id2) then
{
			_income = _income + 1000;
};
if ((getPlayerUID player) in Donate_id3) then
{
			_income = _income + 1500;
};
if ((getPlayerUID player) in Donate_id4) then
{
			_income = _income + 2000;
};
if ((getPlayerUID player) in Donate_id5) then
{
			_income = _income + 2500;
};
if ((getPlayerUID player) in Donate_id6) then
{
			_income = _income + 3000;
};
if ((getPlayerUID player) in TopDonator_id) then
{
			_income = _income + 5000;
};
if ((getPlayerUID player) in TierX_id) then
{
			_income = _income + 3000;
};
	
		if (isamedic) then 
		{

			_income = _income + (5000 + random 2000 - random 2000);

		};


		if (timeinworkplace > 0) then 

		{

		_workplacepaycheck = (round(add_workplace/180*timeinworkplace));
		_income = _income + _workplacepaycheck;
		_atworkplacemsg     = localize "STRS_geld_were";	

		};

		for "_c" from 0 to (count gangsarray - 1) do 

		{

		_gangarray = gangsarray select _c;
		_gangname  = _gangarray select 0;
		_members   = _gangarray select 1;
		
		if((name player) in _members)then

			{

			_mygang = _gangname;

			for "_i" from 0 to (count _members - 1) do 

				{

				_civ = [(_members select _i), civarray] call INV_findunit;

				if(!isnull _civ)then{_activecount = _activecount + 1};

				};

			};
		
		};

	if(_mygang != "None") then

		{

		if(gangarea1 getvariable "control" == _mygang)then{_income = _income + (gangincome/_activecount)};
		if(gangarea2 getvariable "control" == _mygang)then{_income = _income + (gangincome/_activecount)};
		if(gangarea3 getvariable "control" == _mygang)then{_income = _income + (gangincome/_activecount)};
		if(gangarea4 getvariable "control" == _mygang)then{_income = _income + (gangincome/_activecount)};
		};			

	if ("mafial" call INV_HasLicense) then 

	{

	_income = _income + (mafiabank / 250);

	};
	timeinworkplace = 0;
	_income = round _income;		
	kontostand = kontostand + _income;	
	player groupChat format[localize "STRS_geld_civmoneyadd", rolestring, (_income call ISSE_str_IntToStr)];		

	
	if (isMayor) then 

		{
																					
		MayorSteuern = MayorSteuern + INV_SteuernGezahlt;                     																																							
		MayorSteuern = round((MayorSteuern / 100) * MayorBekommtSteuern); 									
		kontostand = kontostand + MayorSteuern;                           																					
		kontostand = kontostand + MayorExtraPay;                          																											
		player groupchat format["As a Mayor you get an extra paycheck of $%1. You also got $%2 taxes.", (MayorExtraPay call ISSE_str_IntToStr), (MayorSteuern call ISSE_str_IntToStr)];		

		} 
		else 
		{
																																			
		if (INV_SteuernGezahlt > 0) then 

			{	

			(format["if (isMayor) then {MayorSteuern = MayorSteuern + %1;};", INV_SteuernGezahlt]) call broadcast;	

			};	

		};
				
	MayorSteuern   = 0;																		
	INV_SteuernGezahlt = 0;		

	} 
	else 
	{

	player groupChat format[localize "STRS_geld_paycheckdead"];

	};

}; 
