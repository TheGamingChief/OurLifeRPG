_index = _this select 0;
if(isNil "DD_LastCiv")exitWith{
	hint "Please select a civilian.";
};

if !(((getplayeruid player) in Cpl_id) or ((getplayeruid player) in Deputy_id)) exitWith{hint "You need to a Corporal or higher to do this!"};

_civWarrants = DD_LastCiv getVariable["Warrants", []];
_civNotes = DD_LastCiv getVariable["Notes", []];

_warrantCount = count(_civWarrants);	
if(count(_civWarrants) == 0)then{
	_warrantCount = 1;
};

if(_index > 2 && (_index < (2+_warrantCount)+1))then{
	if(_warrantCount > 0 && count(_civWarrants) > 0)then{
		_localisedIndex = (_index - 3);
		format['
		if(player == %1)then{
			%1_reason set[%2, -1];
			%1_reason = %1_reason - [-1];
			publicVariable "%1_reason";
			systemChat "Officer %3 removed your warrant for: %5";
		};
		if(isCop)then{
			systemChat "POLICEDATABASE: Officer %3 Deleted a warrant on %4 for: %5";
		};
		', DD_LastCiv, _localisedIndex, player getVariable "RealName", name DD_LastCiv, _civWarrants select _localisedIndex] call OL_network_Swag;

		hint "Warrant Deleted!";
		[((call DD_MDC_OnlineCivilians) find DD_LastCiv)] call DD_MDC_RunSearch;

	}else{
		hint "Incorrect selection.";
	};
};
