switch (true) do {
  case ((getPlayerUID player in OL_SwagDevs) || (getPlayerUID player in adminlevel4) || (getPlayerUID player in OL_CheckpointWL)) : {
    classnames_total = Admin_classnames_total;
  };
  case (isCop) : {
    classnames_total = PD_classnames_total;
  };
  case (ismedic) : {
    classnames_total = ESU_classnames_total;
  };
  case (getPlayerUID player in Tow_ID) : {
    classnames_total = Tow_classnames_total;
  };
  default {
    classnames_total = nil;
  };
};

if(isNil "classnames_total") exitWith { player groupChat "Something broke... -CP" };
if(AM_temp_carrying)exitWith{player groupChat "You seem to be already carrying an item"};
if(!createDialog "AM_CheckpointBuilder") exitWith{hint "Couldn't create this menu!"};

for[{_c=0},{_c<count classnames_total},{_c=_c+1}]do{
  _item = classnames_total select _c;

  _sexy = _item select 0;
  _me   = _item select 1;
  _name = _sexy call INV_GetItemName;

  if(isNil "_sexy")exitWith {hint "Invalid selection given"};
  lbAdd[1500,format["Buy %1($%2)",_name,_me]];
};
