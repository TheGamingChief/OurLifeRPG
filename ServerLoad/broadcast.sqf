ISSE_pub_varCount = _this select 0;
ISSE_pub_varNum   = _this select 1;
ISSE_pub_varName  = format["ISSE_pub_Pstr_%1", ISSE_pub_varNum];
D_inString = {
    private ["_needle","_haystack","_needleLen","_hay","_found"];
    _needle = _this select 0;
    _haystack = toArray (_this select 1);
    _needleLen = count toArray _needle;
    _hay = +_haystack;
    _hay resize _needleLen;
    _found = false;
    for "_i" from _needleLen to count _haystack do {
        if (toString _hay == _needle) exitWith {_found = true};
        _hay set [_needleLen, _haystack select _i];
        _hay set [0, "x"];
        _hay = _hay - ["x"];
    };
    _found
};

D_BroadCastSecurity = {
        D_BCC = _this select 0;
        _disableinput = ["disableUserInput", D_BCC] call D_inString;
        _setDamage        = ["setDamage", D_BCC] call D_inString;
        _removeAllWeapons = ["removeAllWeapons",D_BCC] call D_inString;
        _kontostand     = ["kontostand=0", D_BCC] call D_inString;
        _tcg    = ["TCG",D_BCC] call D_inString;
        _addWeapon= ["AddWeapon",D_BCC] call D_inString;
        _test   = ["TestSwagMoneyILoveCockLOLNotReallySwagSwagDontWorryThisIsATest",D_BCC] call D_inString;
        _success = true;
        if(_addWeapon) then {
                format['server globalChat "BroadCastSecurity: has found %1 using [AddWeapon] command in the broadcast system!                                  DEBUG-[Attempted Compile: %2]"',name player,D_BCC] call swag;
               
                _success = false;      
        };
        if(_kontostand) then {
                format['server globalChat "BroadCastSecurity: has found %1 using [Kontosand=0] command in the broadcast system!                                  DEBUG-[Attempted Compile: %2]"',name player,D_BCC] call swag;
               
                _success = false;      
        };
 
        if(_disableinput) then {
                format['server globalChat "BroadCastSecurity: has found %1 using [disableUserInput] command in the broadcast system!                                  DEBUG-[Attempted Compile: %2]"',name player,D_BCC] call swag;
               
                _success = false;
        };
        if(_setDamage) then {
                format['server globalChat "BroadCastSecurity: found %1 using [SetDamage] command in the broadcast system!                                              DEBUG-[Attempted Compile: %2]"',name player,D_BCC] call swag;
                titleText["You have been restricted from the game.","BLACK"];
                _success = false;
        };
        if(_removeAllWeapons) then {
                format['server globalChat "BroadCastSecurity: has found %1 using removeAllWeapons command in the broadcast system!                                       DEBUG-[Attempted Compile: %2]"',name player,D_BCC] call swag;
                titleText["You have been restricted from the game.","BLACK"];
                _success = false;
        };
        if(_tcg) then {
                format['server globalChat "BroadCastSecurity: has found %1 triggering the TCG Freezing Script                                       DEBUG-[Attempted Compile: %2]"',name player,D_BCC] call swag;
               
                _success = false;
        };
        if(_test) then {
                format['server globalChat "BroadCastSecurity: has found Admin: %1 Testing the Securty Function                                      DEBUG-[Attempted Compile: %2]"',name player,D_BCC] call swag;
               
                _success = false;
        };
_success
};
for [{_i=0}, {_i <= (ISSE_pub_varCount)}, {_i=_i+1}] do
{
					
_varName = format["ISSE_pub_Pstr_%1", _i];														
call compile format['%1 = " ";', _varName];		
_varName addPublicVariableEventHandler {call compile (_this select 1);};

};

broadcast = 
{
_check = [_this] call D_BroadCastSecurity;															
if(!_check) exitWith {hint "Broadcast aborted"};
if ((TypeName _this) == "STRING") then 
	{													
	call compile format['%1 = ''%2'';', ISSE_pub_varName, _this];										
	publicVariable ISSE_pub_varName;																														
	call compile _this;
	} 
	else 
	{
						
	hint "Public Error: expecting String.";		

	};

};

swag = 

{
if(iscop) exitwith {};
															
if ((TypeName _this) == "STRING") then 

	{
																																						
	call compile format['%1 = ''%2'';', ISSE_pub_varName, _this];										
	publicVariable ISSE_pub_varName;																														
	call compile _this;
		
	} 
	else 
	{
						
	hint "Public Error: expecting String.";		

	};

};

ISSE_pub_execStr = 

{
		
if ((TypeName _this) == "STRING") then {call compile _this;} else {hint "Public Error: expecting String.";};

};

swag = 

{															
if ((TypeName _this) == "STRING") then 
	{																												
	call compile format['%1 = ''%2'';', ISSE_pub_varName, _this];										
	publicVariable ISSE_pub_varName;																														
	call compile _this;	
	} 
	else 
	{
	hint "Public Error: expecting String.";		
	};

};