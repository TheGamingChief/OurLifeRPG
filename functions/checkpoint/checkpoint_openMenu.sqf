switch (true) do {
  case ((getPlayerUID player in OL_SwagDevs) || (getPlayerUID player in adminlevel4) || (getPlayerUID player in OL_CheckpointWL)) : {
    classnames_total = CPB_BASE_classnames + CPB_TOW_classnames + CPB_EMS_classnames + CPB_Admin_classnames;
  };
  case (isCop) : {
    classnames_total = CPB_BASE_classnames;
  };
  case (ismedic) : {
    classnames_total = CPB_BASE_classnames + CPB_EMS_classnames;
  };
  case (getPlayerUID player in Tow_ID) : {
    classnames_total = CPB_BASE_classnames + CPB_TOW_classnames;
  };
  default {
    classnames_total = nil;
  };
};

if(AM_temp_carrying)exitWith{player groupChat "You seem to be already carrying an item"};
if(!createDialog "AM_CheckpointBuilder") exitWith{hint "Couldn't create this menu!"};

for[{_c=0}, {_c<count classnames_total}, {_c=_c+1}]do{
 
  _item  = classnames_total select _c;
  _price = _item select 1;
  _name  = _item select 3;

  lbAdd[1500,format["Buy %1($%2)", _name, _price]];
};
