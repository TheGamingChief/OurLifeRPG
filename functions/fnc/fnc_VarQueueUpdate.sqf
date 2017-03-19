_tmpArray = [];
{
  if (time >= (_x select 2) select 1) then {
    _x call CP_fnc_VarQueueSet;
  } else {
    _tmpArray = _tmpArray + [_x];
  };
} forEach OL_VarQueue;
OL_VarQueue = _tmpArray;
