_return = [];
if(!isMultiplayer)exitWith{civarray};

{
    if(!(isNull _x))then{
      if (!(_x in coparray)) then {
          //Double if to prevent an error
          _return set[count(_return), _x];
      };        
    };
}forEach playerarray;
_return;
