stolencash = 0;
_copplayernumber = playersNumber west;
_copbonus = round(stolencash/_copplayernumber);
if (_copbonus > maxcopbonus) then {_copbonus = maxcopbonus};
"if (iscop) then {Kontostand = (Kontostand + _copbonus); player sidechat format[""You got your share of $%1 for a job well done!"", _copbonus];};" call broadcast;