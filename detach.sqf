//////////////////////////////////////////////////////////////////
_newCiv = cursorTarget;

detach _newCiv;
(format ["%1 switchmove ""%2"";", _civ, "civillying01"]) call broadcast;
player forceWalk False;