disableSerialization;

if(isNil "DD_LastCiv")exitWith{};

_civWarrants = DD_LastCiv getVariable["PlayerWarrants", []];

_l = createDialog "DD_ListPC";
{
  for "_i" from 1 to (_x select 1) do {
      lbAdd[1500, _x select 0];
  };
}foReach _civWarrants;

buttonSetAction[1600, "[lbText [1500, lbCurSel 1500]] call DD_MDC_RevokeWarrant;"];
ctrlSetText[1600, "Remove Warrant"];
