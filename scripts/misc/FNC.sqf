/*///////////////////////
Functions For Anything
Made For RL/OL By: Speedy
*////////////////////////
DDOPP_taser_handleHit = {
	private ["_shooter","_selection","_damage","_shooter","_bullet","_ammoArr"];
	_victim    = _this select 0;
	_selection = _this select 1;
	_damage    = _this select 2;
	_shooter   = _this select 3;
	_bullet    = _this select 4;
	_ammoArr = ["B_12Gauge_74Slug","B_9x18_SD"];
	if (_bullet in _ammoArr) then {
		["hit", _shooter, _selection, _damage] execVM "stun.sqf";
	};

	_damage
};
open_safeCodeEnter = 
{
	if (dialog) exitWith { closeDialog 0; };
	_ok = createDialog "BankCodeEnterDLG";
	if ( !_ok ) then { player groupChat "Unable to open the safe code dialog!";};
};
gamerz_hint = 
{
_text = _this select 0;
_colour = _this select 1;
_Stxt = parseText format
["
<t color='%2'>%1</t><br/>
", _text, _colour];
hintSilent _Stxt;
};
Speedy_Police_RestrainUnit = {
	private["_cuff","_man","_name"];

	_cuff = _this select 0;
	_man = cursorTarget;
	if (player distance _man > 3) exitWith {};
	_name = name _man;

	if (_cuff) then
	{
		if (!(_man isKindOf "Man")) exitWith {hintSilent parseText format ["<t size='1.25' font='Zeppelin33' color='#D80C0C'>Nobody To Handcuff!</t>"];};
		if (_man getVariable "Cuffed") exitWith {hintSilent parseText format ["<t size='1.25' font='Zeppelin33' color='#D80C0C'>Nobody To Handcuff!</t>"];};
		[_man,"restrain"] call fn_netSay3D;
		hintSilent parseText format ["<t size='1.25' font='Zeppelin33' color='#D80C0C'>%1 Cuffed</t>", _man];
		[nil,_man,rSwitchMove,"actspercmstpsnonwrfldnon_interrogate02_forgoten"] call RE;
		_man setVariable ["Cuffed",true,true] call broadcast;
		format['%1 setVariable ["tf_unable_to_use_radio", true]', _man] call broadcast;
		format['server globalChat "%2 was handcuffed by %1";',name player, name _man] call broadcast;
       	} else {
		if (!(_man isKindOf "Man")) exitWith {hintSilent parseText format ["<t size='1.25' font='Zeppelin33' color='#D80C0C'>Nobody To Unhandcuff!</t>"];};
		if (!(_man getVariable "Cuffed")) exitWith {hintSilent parseText format ["<t size='1.25' font='Zeppelin33' color='#D80C0C'>Nobody To Unhandcuff!</t>"];};
		[_man,"restrain"] call fn_netSay3D;
		hintSilent parseText format ["<t size='1.25' font='Zeppelin33' color='#D80C0C'>%1 Released</t>", _man];
		[nil,_man,rSwitchMove,"Normal"] call RE;
		_man setVariable ["Cuffed",false,true] call broadcast;
		format['%1 setVariable ["tf_unable_to_use_radio", false]', _man] call broadcast;
		format['if(player == %1) then {isstunned = false}', _man] call broadcast;
		format['server globalChat "%2 was released by %1";',name player, name _man] call broadcast;
	};
};

RL_LoadingSetText = 
{
	private ["_idc","_str","_percent"];
	_idc = _this select 0;
	_str = _this select 1;
	_percent = _this select 2;
	((uiNamespace getVariable "RL_Dialog_loading") displayCtrl _idc) ctrlSetText _str;
	((uiNamespace getVariable "RL_Dialog_loading") displayCtrl 1111) ctrlSetText format["ol_textures\misc\progressbar\progressbar%1.paa",_percent];
	((uiNamespace getVariable "RL_Dialog_loading") displayCtrl 1113) ctrlSetText format["%1%2",_percent,"%"];
};

OL_CallEMS =
{
	private ["_unit","_location","_timeout","_ReSpawnTime","_OL_TrackMarker"];
	_unit = _this select 0;
	_gridPos = mapGridPosition getpos _unit;

	format['if(isamedic) then {
			player sideChat format["(911)EMT call for %2 he was just killed at: %3"];
			hint "Someone Has Died";
			_OL_TrackMarker = createMarkerLocal [("OL_DeadTracker_" + name %1), getPos %1];
			_OL_TrackMarker setMarkerShapeLocal "ICON";
			_OL_TrackMarker setMarkerColorLocal "ColorRed";
			_OL_TrackMarker setMarkerTypeLocal "Warning";
			_OL_TrackMarker setMarkerSizeLocal [0.6,0.6];
			_OL_TrackMarker setMarkerTextLocal format [STR_DEADGUY, name %1];
	}',_unit, name _unit,_gridPos]call broadcast;
};

OL_CallPolice =
{
	private ["_unit","_location","_timeout","_ReSpawnTime","_OL_TrackMarker"];
	_unit = _this select 0;
	_gridPos = mapGridPosition getpos _unit;

	format['if(iscop) then {
			player sideChat format["(911)Police call for %2 he was just killed at: %3"];
			hint "Someone Has Died";
			_OL_TrackMarker = createMarkerLocal [("OL_DeadTracker_" + name %1), getPos %1];
			_OL_TrackMarker setMarkerShapeLocal "ICON";
			_OL_TrackMarker setMarkerColorLocal "ColorRed";
			_OL_TrackMarker setMarkerTypeLocal "Warning";
			_OL_TrackMarker setMarkerSizeLocal [0.6,0.6];
			_OL_TrackMarker setMarkerTextLocal format [STR_DEADGUY, name %1];
	}',_unit, name _unit,_gridPos]call broadcast;
};

OL_CheckWater =
{
	_isWater = surfaceIsWater position player;
	_ret = [];
	_cycle = 0;
	_foundLand = false;

	if(_isWater)then
	{
		// Distance Loop
		for "_i" from 10 to 4500 step 10 do
		{
			// Direction Loop
			for "_y" from 0 to 360 do
			{
				_cycle = _cycle + 1;
				_pos = [(getPos player select 0) + (sin _y) * _i,(getPos player select 1) + (cos _y) * _i, 0];
				if(!(surfaceIsWater _pos))exitWith
				{
					_ret set[count(_ret),_pos];
					_foundLand = true;
				};
			};
			if(_foundLand)exitWith{};
		};

		_landPos = _ret select 0;
		_safePos = _landPos findEmptyPosition[0,75];
		(vehicle player)setVelocity[0,0,0];

		if(count _safePos > 0)then
		{
			player setPos _safePos;
		}
		else
		{
			player setPosATL _landPos;
		};

		if (getPlayerUID player == "76561198073512197") then
		{
			diag_log format["Found Land In (%1) Cycles!",_cycle];
		};
		systemChat "Your body has washed up on shore!";
	};
};

RL_Msg_fnc_SrvMsg =
{
	private["_msg"];
	_msg = _this select 0;
	RL_PV_SrvMsg = _msg;
	publicVariable "RL_PV_SrvMsg";
	if (!isNil "_msg") then
	{
		//UltRP_ServerMsg_Logic globalChat _msg;
		for "_i" from 0 to (count playableUnits) do
		{
			_iUnit = playableUnits select _i;
			if (side _iUnit == WEST || side _iUnit == EAST || side _iUnit == CIVILIAN) then
			{
				format ['server globalchat "%1";',_msg] call broadcast;
				//call compile format ['[%2,%2,"loc",rGlobalChat,"%1"] call RE;', _msg, _iUnit];
			};
		};
	};
};
RL_Admin_fnc_GblMsg =
{
	private["_msg","_str"];
	_msg = ctrlText 5090;
	_str = format["(ADMIN) %1", _msg];
	format ['server globalchat "%1";',_str] call broadcast;
	//[_str] call RL_Msg_fnc_SrvMsg;
};
RL_Dev_fnc_GblMsg =
{
	private["_msg","_str"];
	_msg = ctrlText 5090;
	_str = format["(DEV) %1", _msg];
	format ['server globalchat "%1";',_str] call broadcast;
	//[_str] call RL_Msg_fnc_SrvMsg;
};
RL_Msg_fnc_911 =
{
	private["_msg","_sender","_iUnit"];
	_msg = ctrlText 1028;
	if (_msg == "Message") exitWith {};
	_sender = name player;
	_unit = _this select 0;
	_gridPos = mapGridPosition getpos _unit;
	closeDialog 0;
	hintSilent parseText format["<t font='Zeppelin33' color='#00FF44'>911 Message Sent</t>"];
	for "_i" from 0 to (count playableUnits) do
	{
		_iUnit = playableUnits select _i;
		if (side _iUnit == WEST || side _iUnit == EAST) then
		{
			call compile format ['[%3,%3,"loc",rGlobalChat,"%1(911) %2: Traced To: %4"] call RE;', _sender, _msg, _iUnit, _gridPos];
		};
	};
};

RL_Msg_fnc_311 =
{
	private["_msg","_sender","_iUnit"];
	_msg = ctrlText 1028;
	if (_msg == "Message") exitWith {};
	_sender = name player;
	closeDialog 0;
	hintSilent parseText format["<t font='Zeppelin33' color='#00FF44'>311 Message Sent</t>"];
	for "_i" from 0 to (count playableUnits) do
	{
		_iUnit = playableUnits select _i;
		if (side _iUnit == WEST || side _iUnit == EAST || side _iUnit == CIVILIAN) then
		{
			call compile format ['[%3,%3,"loc",rGlobalChat,"%1(311) %2"] call RE;', _sender, _msg, _iUnit];
		};
	};
};
RL_Msg_fnc_141 =
{
	private["_msg","_sender","_iUnit"];
	_msg = ctrlText 1028;
	if (_msg == "Message") exitWith {};
	_sender = name player;
	closeDialog 0;
	hintSilent parseText format["<t font='Zeppelin33' color='#00FF44'>141 Message Sent</t>"];
	for "_i" from 0 to (count playableUnits) do
	{
		_iUnit = playableUnits select _i;
		if (side _iUnit == WEST || side _iUnit == EAST) then
		{
			call compile format ['[%2,%2,"loc",rGlobalChat,"(141) %1"] call RE;', _msg, _iUnit];
		};
	};
};

format_integer = {
	private["_value", "_nan", "_separator"];
	_nan = "NotANumber"; 
	_value = _this select 0;
	_separator = _this select 1;
	
	if (isNil "_value") exitWith {_nan};
	if (typeName _value != "SCALAR") exitWith {_nan};
	
	if (_value == 0) exitWith {"0"};
	
	private["_string_value", "_digits", "_remainder", "_sign"];
	_string_value = "";
	_digits = 0;
	_sign = if (_value < 0) then {"-"} else {""};
	_value = abs(round(_value));
	while { _value >= 1 } do {
		_digits = _digits + 1;
		if ( _digits > 1 && ((_digits - 1) % 3) == 0) then {
			_string_value = _separator + _string_value;
		};
		_remainder = _value % 10;
		_string_value = str(_remainder) + _string_value;
		_value = floor(_value / 10);
	};
	
	_sign+_string_value
};
RLRPG_FormatMoney = {
	private["_amount", "_result"];
	_amount = _this select 0;
	
	_result = format['$%1', ([_amount, ","] call format_integer)];
	
	_result
};
RLRPG_FormatAmount = {
	private["_amount", "_result"];
	_amount = _this select 0;
	
	_result = format['%1', ([_amount, ","] call format_integer)];
	
	_result
};
player_get_inventory_money = {
	private["_invmoney"];
	_invmoney = 'geld' call INV_GetItemAmount;
	_invmoney
};
RLRPG_fnc_StringUCase = {
	private["_text", "_chararr", "_i", "_curchar", "_result"];
	_text = _this select 0;
	_result = "";
	
	if (_text == "") exitWith {_result};
	
	_chararr = toArray _text;
	
	for [{_i=0}, {_i < (count _chararr)}, {_i=_i+1}] do {
		_curchar = _chararr select _i;
		
		// 97 = a, 122 = z
		if (_curchar >= 97 && _curchar <= 122) then {
			_chararr set [_i, (_curchar + 65 - 97)];
		};
	};
	
	_result = toString _chararr;
	
	_result
};
RLRPG_Cfg_Inv_InDMZ = {
    private ["_size","_ret","_player"];
    _ret = [];
	_DMZ = ["test"];
    _player = _this;
    {
        _size = getMarkerSize _x;
        if (_player distance (getMarkerPos _x) <= (round((_size select 0) + (_size select 1)) / 2)) then {
            _ret set[count(_ret), _x];
        };
    } forEach _DMZ;
    _ret;
};
RLRPG_Cfg_Inv_HandleDamage = {
    private ["_ret","_in"];
    _ret = _this select 2;
	_shooter = _this select 3;
	_ammo = _this select 4;
	_stun = ["B_12Gauge_74Slug","B_9x18_SD"];
	if (_ammo in _stun) exitWith
	{
		(_this select 0) setDamage 0;
		["hit", _shooter] execVM "stun.sqf";
	};
    _in = player call RLRPG_Cfg_Inv_InDMZ;
    if (count(_in) >= 1) then {
        _ret = false;
    };
    _ret;
};
CP_fncSearchImpoundArr = {
	_outArray = [];

	{
		if ((_x select 0) == (_this select 0)) then {
			_outArray = _outArray + [_x select 1];
		};
	} foreach (_this select 1);
	
	_outArray;
};
CP_fncRemoveImpoundArr = {
	_outArray = [];
	_found = false;
	
	{
		if (not(_found)) then {
			if (((_x select 0) == (_this select 0)) and ((_x select 1) == (_this select 1))) then {
				_found = true; //Should trigger once (skip item)
			} else {
				_outArray = _outArray + [_x];
			};		
		} else {		
			_outArray = _outArray + [_x];
		};
	} foreach (_this select 2);
	
	_outArray;
};

fn_RMLogToServer = compile '
    _name = _this select 0;
    _message = _this select 1;
    pv_RMLog = [_name, _message];
    publicVariableServer "pv_RMLog";
';