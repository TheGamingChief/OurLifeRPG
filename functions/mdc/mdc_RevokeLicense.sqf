_index = _this select 0;
if(isNil "DD_LastCiv")exitWith{
	hint "Please select a civ";
};
_civWarrants = DD_LastCiv getVariable["Warrants", []];
_civNotes = DD_LastCiv getVariable["Notes", []];
_civLics  = DD_LastCiv getVariable["Licenses", []];


_license = _civLics select _index;
if(_license in ["cocaine ga1","lsd ga1","heroin ga2", "lsd ga2", "heroin ga3", "marijuana ga3","heroin ga4","marijuana ga4", "assassinlic","terror"])exitWith{hint "You cannot remove that license, sir. Please stop."};
if !(((getplayeruid player) in Cpl_id) or ((getplayeruid player) in Deputy_id)) exitWith{hint "You need to a Corporal or higher to do this!"};

format['
	if(player == %1)then{
		INV_LizenzOwner set[%5, -1];
		INV_LizenzOwner = INV_LizenzOwner - [-1];

		systemChat "Officer %3 has revoked your %2 License.";
	};

	if(isCop)then{
		systemChat "POLICEDATABSE: Officer %3 has revoked %4s %2 License.";
	};
', DD_LastCiv, _license, name player, name DD_LastCiv, _index] call swag;

closeDialog 0;

[((call DD_MDC_OnlineCivilians)) find DD_LastCiv] call DD_MDC_RunSearch;