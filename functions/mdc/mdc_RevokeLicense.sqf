_index = _this select 0;
if(isNil "DD_LastCiv")exitWith{
	hint "Please select a civ";
};
_civWarrants = DD_LastCiv getVariable["Warrants", []];
_civNotes = DD_LastCiv getVariable["Notes", []];
_civLics  = DD_LastCiv getVariable["Licenses", []];


_license = _civLics select _index;
if(_license in ["OL_License_civ_cocaineGA1","OL_License_civ_lsdGA1","OL_License_civ_heroinGA2","OL_License_civ_lsdGA2","OL_License_civ_heroinGA3","OL_License_civ_marijuanaGA3","OL_License_civ_heroinGA4","OL_License_civ_marijuanaGA4","OL_License_civ_assassin","OL_License_civ_terror"])exitWith{hint "You cannot remove that license, sir. Please stop."};
if (!(getplayeruid player in Cpl_id)) exitWith{hint "You need to a Corporal or higher to do this!"};

format['
	if(player == %1)then{
		OL_Licenses set[%5, -1];
		OL_Licenses = OL_Licenses - [-1];

		systemChat "Officer %3 has revoked your %2 License.";
	};

	if(isCop)then{
		systemChat "POLICEDATABSE: Officer %3 has revoked %4s %2 License.";
	};
', DD_LastCiv, _license, PlayerName, DD_LastCiv getVariable ["RealName", "Error: No Unit"], _index] call OL_network_Swag;

closeDialog 0;

[((call DD_MDC_OnlineCivilians)) find DD_LastCiv] call DD_MDC_RunSearch;
