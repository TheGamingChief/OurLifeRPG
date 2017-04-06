private["_value"];
_value = _this select 0;

if (_value) then {
  OL_Hud_Shown = true;
}
else {
  OL_Hud_Shown = false;

  disableSerialization;
  private["_display"];
  _display = uiNamespace getVariable ['RLRPGMainPlayerHUD', displayNull];

  if (!isNull _display) then {
    _display closeDisplay 0;
  };
};
