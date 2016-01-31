
//////////////////////////////////////////////////////////////////

_newCiv = cursorTarget;
	if (_newCiv in civarray and player distance _newCiv <= 4 and _newciv isstunned) then
{_newCiv switchMove "UnaErcPoslechVelitele1..4";
player forceWalk True;
_newCiv attachTo [player,[0.5,1,0]];};