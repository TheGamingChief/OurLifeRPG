_ret = nil;
_RED_Count = 0;
_BLUE_Count = 0;

{
  _User = call compile (_x select 3);
  switch (true) do {
    case (((_x select 2) == "RED_TEAM") && (_User getVariable ["PB_Alive", false])): {
      _RED_Count = _RED_Count + 1
    };
    case (((_x select 2) == "BLUE_TEAM") && (_User getVariable ["PB_Alive", false])): {
      _BLUE_Count = _BLUE_Count + 1
    };
  };
} forEach (PB_MAN getVariable ["PB_Information", []]);

str ([_RED_Count, _BLUE_Count]);
