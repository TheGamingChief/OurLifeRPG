for "_c" from 0 to (count gangsarray - 1) do {
  _gangarray = gangsarray select _c;
  _gang	   = _gangarray select 0;
  _members   = _gangarray select 1;

  if (count _members > 0) then {
    _leader    = _members select 0;
    _lunit	   = [_leader, civarray] call INV_findunit;
    if(isnull _lunit and !(player in (units startgroup)))then{[player] joinsilent startgroup};
    if(isnull _lunit)exitwith{};
    _group	   = group _lunit;
    _name      = name player;

    if(leader _group != _lunit)then{_group selectleader _lunit};
    if(player == _lunit and !gangleader)then{gangleader = true; [player] joinsilent startgroup;};
    if(gangleader and player != _lunit and _name in _members)then{gangleader = false};
    if(_name in _members and !gangmember)then{gangmember = true};
    if(_name in _members and gangmember)then{_mygang = _gang; _mymembers = _members};
  };
};

for [{_k=0}, {_k < (count OL_Gangs - 1)}, {_k=_k+1}] do {
    _curGangArray = OL_Gangs select _k;
    _curGangMembers = _curGangArray select 1;

    {
      if (isNull _x) then {
        
      };
    } forEach _curGangMembers;
};

for "_c" from 0 to (count gangareas - 1) do {
  _gangarea = gangareas select _c;
	_control  = _gangarea getvariable "control";

	if (player distance _gangarea < 10 and (getpos _gangarea select 2) < 0 and _control == (call INV_mygang)) then {
		_gangarea setpos [getpos _gangarea select 0, getpos _gangarea select 1, (getpos _gangarea select 2) + 0.1];
	};
};
