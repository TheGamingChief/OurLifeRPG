_this = _this select 3;
_art  = _this select 0;
_safe = _this select 1;
_safedoor = _this select 2;
_west = playersNumber west;

if (_west < 4) exitwith {player groupchat "You need 4 Police Officers online to rob the Bank!";};

if (_art == "robDialog") then
{
	call open_safeCodeEnter;
};

if (_art == "ausrauben") then 

{	

call compile format["local_cash = robpool%1", _safe];

if(local_cash < 60000)exitwith{player sideChat "Make sure there is at least 60K in the safe!"};

if(!robenable)exitwith{player groupchat "you are already robbing the bank"};
if(!(call INV_isArmed) and !debug)exitWith{player groupChat localize "STRS_bank_rob_noweapon";format ['server globalchat "Someone Has Just Tryed To Rob The Bank Without A Weapon!";'] call broadcast;
};
robenable = false;
call compile format["robpool%1 = 0;publicvariable ""robpool%1"";", _safe];											
player groupChat format[localize "STRS_bank_rob_info", (robb_money call ISSE_str_IntToStr)];
[] call resetSafeCode;

format['[0,1,2,["opfer", %1, %2]] execVM "bankrob.sqf";', _safe, local_cash] call broadcast;

if (_safedoor == "Safe1") then 
{
	Safe1 animate ["Safe_Door",1];
	sleep 65;
	Safe1 animate ["Safe_Door",0];
	Safecracked1 = FALSE;
};

if (alive player) then 

	{
	['geld', local_cash] call INV_AddInvItem;
	player groupChat format[localize "STRS_bank_rob_success"];
	[local_cash] spawn Bank_Rob_End_Script;
		
	};

stolencash = stolencash + local_cash;
('if((isciv) and (player distance mainbank < 50)) then {local_useBankPossible = false;};') call broadcast;
robenable = true;
rblock = rblock + ((local_cash/50000)*60);
_rblock = rblock;

sleep 300;

if(_rblock != rblock)exitwith{};

for [{rblock}, {rblock > -1}, {rblock=rblock-1}] do {sleep 1;};												

('local_useBankPossible = true') call broadcast;
stolencash = 0;
rblock	   = 0;


};

if (_art == "robstart") then 
{ 
titleText [localize "STRS_bank_rob_titlemsg", "plain"];
mainbank say3D "Bank_alarm";
copbase1 say3D "Bank_alarm";
copsheriffbank say3D "Bank_alarm";
};

if (_art == "robwrongcode") then 
{ 
mainbank say3D "Bank_alarm";
copbase1 say3D "Bank_alarm";
copsheriffbank say3D "Bank_alarm";
};

if (_art == "roberror") then 
{ 
mainbank say3D "Bank_alarm";
copbase1 say3D "Bank_alarm";
copsheriffbank say3D "Bank_alarm";
};


if (_art == "opfer") then 

{

_robpool = _this select 2;
															
sleep 8;

["Bank", "civilian", _robpool] spawn Isse_AddCrimeLogEntry;
server globalchat format["The thief stole $%1!", _robpool];

sleep 4;

_verlust = round(_robpool/(count playableUnits)); 
			
if ((Kontostand <= _verlust) and (Kontostand >= 1) and (('bankversicherung' call INV_GetItemAmount) == 0)) then 

	{
																				
	Kontostand = 0;
	player groupChat localize "STRS_bank_rob_allmoneylost";

	};
					
if ((Kontostand >  _verlust) and (('bankversicherung' call INV_GetItemAmount) == 0)) then 

	{ 
													
	Kontostand = Kontostand - _verlust;
	player groupChat format[localize "STRS_bank_rob_somemoneylost", (_verlust call ISSE_str_IntToStr), (Kontostand call ISSE_str_IntToStr)];

	};
															
if (('bankversicherung' call INV_GetItemAmount) > 0) then 

	{		

	player groupChat localize "STRS_bank_rob_lostnomoney";
	['bankversicherung', -(1)] call INV_AddInvItem;				

	};

};

