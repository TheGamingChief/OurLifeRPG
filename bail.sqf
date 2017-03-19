_bail    = _this select 0;

if (!(_bail call OL_ISSE_str_isInteger)) exitWith {player groupChat localize "STRS_inv_no_valid_number"};

_bail    = _bail call OL_ISSE_StrToInt;

if (_bail <= 0) exitWith {};

_copplayernumber = playersNumber west;

_copbail = round(_bail/_copplayernumber);

_geld    = 'geld' call INV_GetItemAmount;

if (_geld > _bail) exitwith {
  ['geld', -(_bail)] call INV_AddInvItem;
  player groupChat format [localize "STRS_bail_self", (_bail call OL_ISSE_str_IntToStr)];
  format ["
    if (iscop) then {
      [""geld"", %2] call INV_AddInvItem;
      player groupChat format [localize ""STRS_bail_addbail"", %2, ""%3""];
    };

    titletext [format[localize ""STRS_bail_payed"",%3, %1], ""plain""];
  ", (_bail call OL_ISSE_str_IntToStr), (_copbail call OL_ISSE_str_IntToStr), rolenumber] call swag;

  jail_time = jail_time - round(_bail / jail_multiplier);
};


if (kontostand > _bail) exitWith {
  kontostand = kontostand - _bail;
  player groupChat format [localize "STRS_bail_self", (_bail call OL_ISSE_str_IntToStr)];
  format ["
    if (iscop) then {
      [""geld"", %2] call INV_AddInvItem;
      player groupChat format [localize ""STRS_bail_addbail"", %2, ""%3""];
    };

    titletext [format[localize ""STRS_bail_payed"",%3, %1], ""plain""];
  ", (_bail call OL_ISSE_str_IntToStr), (_copbail call OL_ISSE_str_IntToStr), rolenumber, player] call swag;

  jail_time = jail_time - round(_bail / jail_multiplier);
};

player groupChat localize "STRS_bail_cantpay";
