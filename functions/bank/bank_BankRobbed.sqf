_robpool = _this select 0;
_verlust = round(_robpool/(count playableUnits));

["Bank", "civilian", _robpool] spawn Isse_AddCrimeLogEntry;
server globalchat format["The thief stole $%1!", _robpool];

_bankInsurance = false;
if ('bankversicherung' call INV_GetItemAmount > 0) then { _bankInsurance = true };

switch (_bankInsurance) do {
    case (true): {
      player groupChat localize "STRS_bank_rob_lostnomoney";
      ['bankversicherung', -1] call INV_AddInvItem;
    };
    case (false): {
      if (Kontostand <= _verlust) then	{
        Kontostand = 0;
        player groupChat localize "STRS_bank_rob_allmoneylost";
      } else {
        Kontostand = Kontostand - _verlust;
        player groupChat format[localize "STRS_bank_rob_somemoneylost", (_verlust call OL_ISSE_str_IntToStr), (Kontostand call OL_ISSE_str_IntToStr)];
      };
    };
};
